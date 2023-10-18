# Creating an automated meeting minutes generator with Whisper and GPT-4

## Getting started

```
python -m venv env

source env/bin/activate

pip install openai
pip install python-docx
```

## Transcribing audio with Whisper

```
import openai
from docx import Document

def transcribe_audio(audio_file_path):
    with open(audio_file_path, 'rb') as audio_file:
        transcription = openai.Audio.transcribe("whisper-1", audio_file)
    return transcription['text']
```

In this function, `audio_file_path` is the path to the audio file you want to transcribe. 


The function opens this file and passes it to the Whisper ASR model (whisper-1) for transcription. 

The result is returned as raw text. 

It’s important to note that the `openai.Audio.transcribe` function requires the actual audio file to be passed in, not just the path to the file locally or on a remote server. This means that if you are running this code on a server where you might not also be storing your audio files, you will need to have a preprocess step that first downloads the audio files onto that device.


## Summarizing and analyzing the transcript with GPT-4

```
def meeting_minutes(transcription):
    abstract_summary = abstract_summary_extraction(transcription)
    key_points = key_points_extraction(transcription)
    action_items = action_item_extraction(transcription)
    sentiment = sentiment_analysis(transcription)
    return {
        'abstract_summary': abstract_summary,
        'key_points': key_points,
        'action_items': action_items,
        'sentiment': sentiment
    }
```




In this function, `transcription` is the text we obtained from Whisper. The transcription can be passed to the four other functions, each designed to perform a specific task: 

* `abstract_summary_extraction` generates a summary of the meeting, 
* `key_points_extraction` extracts the main points,
* `action_item_extraction` identifies the action items,
* `sentiment_analysis` performs a sentiment analysis. 


If there are other capabilities you want, you can add those in as well using the same framework shown above.

###  Summary extraction


The `abstract_summary_extraction` function takes the transcription and summarizes it into a concise abstract paragraph with the aim to retain the most important points while avoiding unnecessary details or tangential points. 


```
def abstract_summary_extraction(transcription):
    response = openai.ChatCompletion.create(
        model="gpt-4",
        temperature=0,
        messages=[
            {
                "role": "system",
                "content": "You are a highly skilled AI trained in language comprehension and summarization. I would like you to read the following text and summarize it into a concise abstract paragraph. Aim to retain the most important points, providing a coherent and readable summary that could help a person understand the main points of the discussion without needing to read the entire text. Please avoid unnecessary details or tangential points."
            },
            {
                "role": "user",
                "content": transcription
            }
        ]
    )
    return response['choices'][0]['message']['content']
```


### Key points extraction


The `key_points_extraction` function identifies and lists the main points discussed in the meeting. These points should represent the most important ideas, findings, or topics crucial to the essence of the discussion.


```
def key_points_extraction(transcription):
    response = openai.ChatCompletion.create(
        model="gpt-4",
        temperature=0,
        messages=[
            {
                "role": "system",
                "content": "You are a proficient AI with a specialty in distilling information into key points. Based on the following text, identify and list the main points that were discussed or brought up. These should be the most important ideas, findings, or topics that are crucial to the essence of the discussion. Your goal is to provide a list that someone could read to quickly understand what was talked about."
            },
            {
                "role": "user",
                "content": transcription
            }
        ]
    )
    return response['choices'][0]['message']['content']
```

### Action item extraction


The `action_item_extraction` function identifies tasks, assignments, or actions agreed upon or mentioned during the meeting.
 
```

def action_item_extraction(transcription):
    response = openai.ChatCompletion.create(
        model="gpt-4",
        temperature=0,
        messages=[
            {
                "role": "system",
                "content": "You are an AI expert in analyzing conversations and extracting action items. Please review the text and identify any tasks, assignments, or actions that were agreed upon or mentioned as needing to be done. These could be tasks assigned to specific individuals, or general actions that the group has decided to take. Please list these action items clearly and concisely."
            },
            {
                "role": "user",
                "content": transcription
            }
        ]
    )
    return response['choices'][0]['message']['content']
```

### Sentiment analysis

The `sentiment_analysis` function analyzes the overall sentiment of the discussion. It considers the tone, the emotions conveyed by the language used, and the context in which words and phrases are used. 

For tasks which are less complicated, it may also be worthwhile to try out gpt-3.5-turbo in addition to gpt-4 to see if you can get a similar level of performance


```
def sentiment_analysis(transcription):
    response = openai.ChatCompletion.create(
        model="gpt-4",
        temperature=0,
        messages=[
            {
                "role": "system",
                "content": "As an AI with expertise in language and emotion analysis, your task is to analyze the sentiment of the following text. Please consider the overall tone of the discussion, the emotion conveyed by the language used, and the context in which words and phrases are used. Indicate whether the sentiment is generally positive, negative, or neutral, and provide brief explanations for your analysis where possible."
            },
            {
                "role": "user",
                "content": transcription
            }
        ]
    )
    return response['choices'][0]['message']['content']
```

### Exporting meeting minutes

To handle the exporting process, define a function save_as_docx that converts the raw text to a Word document:

```
def save_as_docx(minutes, filename):
    doc = Document()
    for key, value in minutes.items():
        # Replace underscores with spaces and capitalize each word for the heading
        heading = ' '.join(word.capitalize() for word in key.split('_'))
        doc.add_heading(heading, level=1)
        doc.add_paragraph(value)
        # Add a line break between sections
        doc.add_paragraph()
    doc.save(filename)
```
 
 In this function, minutes is a dictionary containing the abstract summary, key points, action items, and sentiment analysis from the meeting. 
 
Filename is the name of the Word document file to be created. The function creates a new Word document, adds headings and content for each part of the minutes, and then saves the document to the current working directory.

```
audio_file_path = "Earningscall.wav"
transcription = transcribe_audio(audio_file_path)
minutes = meeting_minutes(transcription)
print(minutes)

save_as_docx(minutes, 'meeting_minutes.docx')
```

This code will transcribe the audio file `Earningscall.wav`, generates the meeting minutes, prints them, and then saves them into a Word document called `meeting_minutes.docx`.

