# chatGPT API basics.

You will also need the `openai` Python package. You can install it with `pip install --upgrade openai`. The upgrade is there to ensure that you have the latest version, since the ChatGPT API is a new feature.


```
import openai
import os

openai.api_key = open("key.txt","r").read().strip('\n')
openai.api_base = "https://api.chatanywhere.com.cn/v1"

completetion=openai.ChatCompletion.create(
    model = "gpt-3.5-turbo",
    messages=[{"role": "user", "content": "What is the circumference in km of the planet Earth?"}])

print(completetion)
```

The way the ChatGPT API works is you need to query the model. Since these models often make use of chat history/context, every query needs to, or can, include a full message history context. 

Keep in mind, however that the maximum context length is 4096 tokens, so you need to stay under that. There are lots of options to work around this, the simplest being truncating earlier messages, but you can actually even use ChatGPT to help you to summarize and condense the previous message history. Maybe more on this later though. 4096 tokens is something like 20,000 characters, but it this can vary. Tokens are just words, bits of words, or combinations of words or cominations of bits of words. Every response from ChatGPT will inform you how many tokens you're using, so you can keep track.



Notice the "role" is "user." There are 3 roles:

* User - This is meant to mimic the end-user that is interacting with the assistant. This is the role that you will be using most of the time.
* System - This role can mimic sort of background nudges and prompts that you might want to inject into the conversation, but that dont need a response. At the moment, system is weighted less than "user," so it still seems more useful to use the user for encouraging specific behaviors in my opinion.
* Assistant - This is the agent's response. Often this will be actual responses, but keep in mind... you will be able to inject your own responses here, so you can actually have the agent say whatever you want. This is a bit of a hack, but it's a fun one and can be useful in certain situations.

The full completion has a lot of information besides just the text response:

```
{
  "choices": [
    {
      "finish_reason": "stop",
      "index": 0,
      "message": {
        "content": "\n\nThe circumference of the planet Earth in km is approximately 40,075 km.",
        "role": "assistant"
      }
    }
  ],
  "created": 1678044086,
  "id": "chatcmpl-6qoD8O1qGxluR2fct8hM9aSYDnqzU",
  "model": "gpt-3.5-turbo-0301",
  "object": "chat.completion",
  "usage": {
    "completion_tokens": 18,
    "prompt_tokens": 18,
    "total_tokens": 36
  }
}
```

User's input was:  which moon is that in reference to?

I'm sorry for the confusion. That circumference is for Earth's moon, also known as Luna.

### Combining everything:

```
message_history = []

def chat(inp, role="user"):
    message_history.append({"role": role, "content": f"{inp}"})
    completion = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=message_history
    )
    reply_content = completion.choices[0].message.content
    message_history.append({"role": "assistant", "content": f"{reply_content}"})
    return reply_content

for i in range(2):
    user_input = input("> ")
    print("User's input was: ", user_input)
    print(chat(user_input))
    print()
```


## Chat with UI

Great, looks like everything is working, now, let's see how we might combine this into our own application. We can start off with the most obvious example: A chatbot, and we can make use of `gradio` for the front-end UI.

To use gradio, we'll need to install it with `pip install gradio`.  Then, we'll make our initial imports:

```
import gradio as gr
import openai

openai.api_key = open("key.txt", "r").read().strip("\n")
```

Then, we can start by defining our message history. In this case, let's make our chatbot a joke bot, where we supply the subject(s) and the bot will make a joke from there.

I'll start by having the user submit the following:

"You are a joke bot. I will specify the subject matter in my messages, and you will reply with a joke that includes the subjects I mention in my messages. Reply only with jokes to further input. If you understand, say OK."

```
message_history = [{"role": "user", "content": f"You are a joke bot. I will specify the subject matter in my messages, and you will reply with a joke that includes the subjects I mention in my messages. Reply only with jokes to further input. If you understand, say OK."},
                   {"role": "assistant", "content": f"OK"}]
```

```
def predict(input):
    # tokenize the new input sentence
    message_history.append({"role": "user", "content": f"{input}"})

    completion = openai.ChatCompletion.create(
      model="gpt-3.5-turbo",
      messages=message_history
    )
    #Just the reply text
    reply_content = completion.choices[0].message.content#.replace('```python', '<pre>').replace('```', '</pre>')
    
    message_history.append({"role": "assistant", "content": f"{reply_content}"}) 
    
    # get pairs of msg["content"] from message history, skipping the pre-prompt:              here.
    response = [(message_history[i]["content"], message_history[i+1]["content"]) for i in range(2, len(message_history)-1, 2)]  # convert to tuples of list
    return response
```

Then we can build the gradio app. To make things easier, I'll comment what each line does here:

```
# creates a new Blocks app and assigns it to the variable demo.
with gr.Blocks() as demo: 

    # creates a new Chatbot instance and assigns it to the variable chatbot.
    chatbot = gr.Chatbot() 

    # creates a new Row component, which is a container for other components.
    with gr.Row(): 
        '''creates a new Textbox component, which is used to collect user input. 
        The show_label parameter is set to False to hide the label, 
        and the placeholder parameter is set'''
        txt = gr.Textbox(show_label=False, placeholder="Enter text and press enter").style(container=False)
    '''
    sets the submit action of the Textbox to the predict function, 
    which takes the input from the Textbox, the chatbot instance, 
    and the state instance as arguments. 
    This function processes the input and generates a response from the chatbot, 
    which is displayed in the output area.'''
    txt.submit(predict, txt, chatbot) # submit(function, input, output)
    #txt.submit(lambda :"", None, txt)  #Sets submit action to lambda function that returns empty string 

    '''
    sets the submit action of the Textbox to a JavaScript function that returns an empty string. 
    This line is equivalent to the commented out line above, but uses a different implementation. 
    The _js parameter is used to pass a JavaScript function to the submit method.'''
    txt.submit(None, None, txt, _js="() => {''}") # No function, no input to that function, submit action to textbox is a js function that returns empty string, so it clears immediately.
         
demo.launch()
```

The full app now is:

```
import gradio as gr
import openai

openai.api_key = open("key.txt", "r").read().strip("\n")

message_history = [{"role": "user", "content": f"You are a joke bot. I will specify the subject matter in my messages, and you will reply with a joke that includes the subjects I mention in my messages. Reply only with jokes to further input. If you understand, say OK."},
                   {"role": "assistant", "content": f"OK"}]

def predict(input):
    # tokenize the new input sentence
    message_history.append({"role": "user", "content": f"{input}"})

    completion = openai.ChatCompletion.create(
      model="gpt-3.5-turbo", #10x cheaper than davinci, and better. $0.002 per 1k tokens
      messages=message_history
    )
    #Just the reply:
    reply_content = completion.choices[0].message.content#.replace('```python', '<pre>').replace('```', '</pre>')

    print(reply_content)
    message_history.append({"role": "assistant", "content": f"{reply_content}"}) 
    
    # get pairs of msg["content"] from message history, skipping the pre-prompt:              here.
    response = [(message_history[i]["content"], message_history[i+1]["content"]) for i in range(2, len(message_history)-1, 2)]  # convert to tuples of list
    return response

# creates a new Blocks app and assigns it to the variable demo.
with gr.Blocks() as demo: 

    # creates a new Chatbot instance and assigns it to the variable chatbot.
    chatbot = gr.Chatbot() 

    # creates a new Row component, which is a container for other components.
    with gr.Row(): 
        '''creates a new Textbox component, which is used to collect user input. 
        The show_label parameter is set to False to hide the label, 
        and the placeholder parameter is set'''
        txt = gr.Textbox(show_label=False, placeholder="Enter text and press enter").style(container=False)
    '''
    sets the submit action of the Textbox to the predict function, 
    which takes the input from the Textbox, the chatbot instance, 
    and the state instance as arguments. 
    This function processes the input and generates a response from the chatbot, 
    which is displayed in the output area.'''
    txt.submit(predict, txt, chatbot) # submit(function, input, output)
    #txt.submit(lambda :"", None, txt)  #Sets submit action to lambda function that returns empty string 

    '''
    sets the submit action of the Textbox to a JavaScript function that returns an empty string. 
    This line is equivalent to the commented out line above, but uses a different implementation. 
    The _js parameter is used to pass a JavaScript function to the submit method.'''
    txt.submit(None, None, txt, _js="() => {''}") # No function, no input to that function, submit action to textbox is a js function that returns empty string, so it clears immediately.
         
demo.launch()
```

From here, we can open the app:

```
$ python3 gradio-joke.py 
Running on local URL:  http://127.0.0.1:7860

To create a public link, set `share=True` in `launch()`.
```

