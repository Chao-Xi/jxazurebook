

# ✅ **AI-102 Complete SDK Summary**

### **(Computer Vision, Speech, Language, Conversational AI, Form Recognizer, Cognitive Search, Bot Framework SDK)**

---

## 🚀 **1. Computer Vision SDK (Azure.AI.Vision / Azure.CognitiveServices.Vision)**

### **Core client**

```csharp
var client = new ComputerVisionClient(
    new ApiKeyServiceClientCredentials(key))
{
    Endpoint = endpoint
};
```

---

## **1.1 Image Tagging**

Exam pattern: *TagImageAsync / TagImageInStreamAsync*

```csharp
using (var stream = File.OpenRead(path))
{
    var result = await client.TagImageInStreamAsync(stream);
    foreach (var tag in result.Tags)
        Console.WriteLine($"{tag.Name} {tag.Confidence}");
}
```

✔ Frequently asked:

* Tags = simple labels
* **Not** for face recognition
* Works with file streams

---

### **1.2 Smart Cropping / Thumbnail**

API call:

```
POST https://{resource}.cognitiveservices.azure.com/vision/v3.1/generateThumbnail
```

---

### **1.3 OCR & Read API (ASYNC LOOP PATTERN)**

This appears *many times* on exam questions.

```csharp
var headers = await client.ReadAsync(stream);
string id = headers.OperationLocation.Split('/').Last();

ReadOperationResult result;
do
{
    result = await client.GetReadResultAsync(Guid.Parse(id));
    await Task.Delay(1000);
}
while (result.Status == OperationStatusCodes.Running
    || result.Status == OperationStatusCodes.NotStarted);
```

✔ Must: loop + delay
✔ Must: check `result.Status`

---

## 🚀 **2. Speech SDK**

### **Core setup**

```csharp
var speechConfig = SpeechConfig.FromSubscription(key, region);
```

---

### **2.1 Speech-to-Text**

```csharp
var recognizer = new SpeechRecognizer(speechConfig);
var result = await recognizer.RecognizeOnceAsync();
Console.WriteLine(result.Text);
```

Exam patterns:

* Use `SpeechRecognizer` for STT
* Not `KeywordRecognizer`, `SpeakerRecognizer`, or `SpeechSynthesizer`

---

### **2.2 Text-to-Speech**

```csharp
var synthesizer = new SpeechSynthesizer(speechConfig);
await synthesizer.SpeakTextAsync("Hello world");
```

---

### **2.3 Speech Translation**

```csharp
speechConfig.SpeechRecognitionLanguage = "fr";

var translator = new TranslationRecognizer(speechConfig);
translator.AddTargetLanguage("de");
```

---

### **2.4 Streaming MP3 Speech Input**

```csharp
var audioFormat = AudioStreamFormat.GetCompressedFormat(AudioStreamContainerFormat.MP3);
var audioConfig = AudioConfig.FromStreamInput(pushStream, audioFormat);

var recognizer = new SpeechRecognizer(speechConfig, audioConfig);
```

✔ MP3 requires **GetCompressedFormat**
✔ Streaming uses **push stream**

---

### **2.5 Custom Neural Voice**

Exam pattern:

* Create voice in **Speech Studio portal**
* Generate narration with **Text-to-Speech service**

---

## 🚀 **3. Form Recognizer / Document Intelligence SDK**

### **Analyze PDFs, images**

You use **DocumentAnalysisClient**

```csharp
var client = new DocumentAnalysisClient(new Uri(endpoint), new AzureKeyCredential(key));
var result = await client.AnalyzeDocumentAsync("prebuilt-invoice", stream);
```

Exam facts:

* Use **Custom Neural model** for handwritten/custom forms
* Use **prebuilt models** (invoice, receipt, ID) for minimal development
* Labeling tool:

  1. create project
  2. upload samples
  3. label documents
  4. train model

---

## 🚀 **4. Azure AI Language Service SDKs**

### **4.1 Text Analytics (Sentiment, NER, PII)**

Package:

* Python → `azure-ai-textanalytics`
* C# → `Azure.AI.TextAnalytics`

Disable logging (VERY common exam question):

```
?loggingOptOut=true
```

---

### **4.2 Conversational Language Understanding (CLU)**

For intent recognition:

### SDK packages:

* C#: `Azure.AI.Language.Conversations`
* Python: `azure-ai-language-conversations`

---

### **4.3 Language Detection**

Endpoint:

```
https://<region>.api.cognitive.microsoft.com/text/analytics/v3.1/languages
```

---

### **4.4 Active Learning (LUIS Legacy)**

Enable logging:

```
log=true
```

✔ Required for review endpoint utterances
✔ Not related to show-all-intents or sentiment

---

### **4.5 Phrase Lists**

```csharp
await client.Features.AddPhraseListAsync(appId, versionId,
    new PhraselistCreateObject {
        Name="PL1", Phrases="item1,item2"
    });
```

---

### **4.6 Handle "None" Intent**

To reduce misclassification:

* Add examples to **None** intent

---

## 🚀 **5. Azure Cognitive Search SDK**

### **5.1 Field attributes**

Common exam case:

| Requirement       | Attribute     |
| ----------------- | ------------- |
| Search text       | `searchable`  |
| Return field      | `retrievable` |
| Filter/drill-down | `facetable`   |
| Filter-only       | `filterable`  |
| Sort              | `sortable`    |

---

### **5.2 Use in indexers with Form Recognizer**

To export to Power BI:
✔ Use **table projection**

---

### **5.3 Throttling**

✔ Add **replicas** to handle queries
✔ Add **partitions** to handle ingestion

---

## 🚀 **6. Bot Framework SDK (C# or Python)**

#### **State Access**

```csharp
_userState.CreateProperty<UserProfile>("UserProfile");
_conversationState.CreateProperty<ConversationData>("ConversationData");
```

Memory storage:

* Yes stores state
* No persistence after restart

---

### **6.1 QnA Maker / Question Answering**

To query a KB:
✔ Use **QnAMakerDialog**

---

### **6.2 Reset conversation after inactivity**

Python exam snippet:

```python
await turn_context.send_activity("Welcome back! Let's start over...")
await self.conversation_state.clear_state(turn_context)
```

---

### **6.3 Bot with Speech**

To enable voice in Composer:

✔ Configure Speech language/voice
✔ Add Speech resource key/endpoint
✔ Add Speech to responses

Correct answers: **A, B, E**

---

## 🚀 **7. Containers (LUIS / Cognitive Services)**

### Steps to run a LUIS container:

1. Select latest deployable version
2. Export for container (GZIP)
3. Run Docker container and mount model folder

Container basics:

* `/status` → API key validity
* `/swagger` → API docs

---

### 🎯 **Final: What to Memorize for the Exam**

* Read API requires **polling loop**
* Speech translation: `SpeechRecognitionLanguage` + `AddTargetLanguage()`
* Logging for active learning: `log=true`
* Disable storage: `loggingOptOut=true`
* Cognitive Search field mapping
* CLU models → Conversations SDK package
* Form Recognizer → Custom Neural for handwriting
* QnA Maker queries use **QnAMakerDialog**


Here are your **AI-102 SDK Flashcards** — short, exam-focused, and perfect for fast memorization.
If you want, I can turn these into **Anki deck**, **PDF**, or **printable cards**.

---

## 🎴 **AI-102 SDK Flashcards**

(Organized by service; each section ~10–15 cards)

---

### 🟥 **Computer Vision SDK**

### **CV-1 — Create Vision Client**

**Q:** How do you create a ComputerVisionClient in C#?
**A:**

```csharp
var client = new ComputerVisionClient(
    new ApiKeyServiceClientCredentials(key))
{
    Endpoint = endpoint
};
```

---

### **CV-2 — Generate Image Description**

**Q:** Which method returns full-sentence descriptions?
**A:** `DescribeImageInStreamAsync()`

---

### **CV-3 — Tag Image**

**Q:** Which method returns only tags?
**A:** `TagImageInStreamAsync()`

---

### **CV-4 — Read OCR Pattern**

**Q:** What pattern is required to use Read API?
**A:**

1. Call `ReadAsync()`
2. Extract Operation ID
3. Poll with `GetReadResultAsync()` until `Succeeded`

---

### **CV-5 — Read Operation IDs**

**Q:** Where is the Read API operation ID found?
**A:** In the `OperationLocation` response header.

---

### **CV-6 — OCR Result Status Values**

**Q:** Which statuses require polling?
**A:** `Running` and `NotStarted`

---

### **CV-7 — Smart Thumbnail**

**Q:** Which API generates smart crops?
**A:** `/generateThumbnail`

---

### **CV-8 — Model Domain Analysis**

**Q:** Which method uses domain-specific models (e.g., celebrities)?
**A:** `AnalyzeImageByDomainInStreamAsync()`

---

---

## 🟦 **Speech SDK**

### **SP-1 — Initialize Speech Config**

**Q:** How to initialize SpeechConfig?
**A:**

```csharp
var config = SpeechConfig.FromSubscription(key, region);
```

---

### **SP-2 — STT (Speech-to-Text) Basic**

**Q:** Which class is used for speech recognition?
**A:** `SpeechRecognizer`

---

### **SP-3 — Recognize Once**

**Q:** Which method returns a single utterance?
**A:** `RecognizeOnceAsync()`

---

### **SP-4 — TTS (Text-to-speech)**

**Q:** Which class performs TTS?
**A:** `SpeechSynthesizer`

---

### **SP-5 — Streaming Audio (MP3)**

**Q:** How to stream MP3 audio into Speech SDK?
**A:** Use `AudioConfig.FromStreamInput()` with
`AudioStreamFormat.GetCompressedFormat(AudioStreamContainerFormat.MP3)`

---

### **SP-6 — Speech Translation**

**Q:** How to add target translation languages?
**A:** `translator.AddTargetLanguage("de")`

---

### **SP-7 — Custom Neural Voice**

**Q:** Where is custom voice model created?
**A:** Speech Studio → Custom Neural Voice

---

---

# 🟩 **Form Recognizer (Document Intelligence)**

### **FR-1 — Create Client**

**Q:** What is the main client class?
**A:** `DocumentAnalysisClient`

---

### **FR-2 — Prebuilt Model Example**

**Q:** How to analyze an invoice?
**A:**

```csharp
client.AnalyzeDocumentAsync("prebuilt-invoice", stream)
```

---

### **FR-3 — Custom Model Training Steps**

**Q:** Steps to create custom model?
**A:**

1. Upload documents
2. Label fields
3. Train model
4. Analyze documents

---

### **FR-4 — Handwriting / Complex Layout**

**Q:** Which model type handles noisy layouts or handwriting?
**A:** **Custom Neural model**

---

### **FR-5 — Azure Storage Requirement**

**Q:** Does training require storage account?
**A:** Yes — sample docs stored in a container.

---

---

## 🟨 **Language (Text Analytics + CLU + PII)**

### **TA-1 — Client Initialization**

**Q:** Which client is used for Text Analytics?
**A:** `TextAnalyticsClient`

---

### **TA-2 — Disable Logging**

**Q:** How to disable logging for privacy?
**A:** Add `?loggingOptOut=true` to your endpoint.

---

### **TA-3 — Sentiment Analysis**

**Q:** Which method performs sentiment analysis?
**A:** `AnalyzeSentimentAsync()`

---

### **TA-4 — Language Detection endpoint**

**Q:** What is the language detection endpoint path?
**A:** `/text/analytics/v3.1/languages`

---

### **TA-5 — PII Recognition**

**Q:** Which method detects PII entities?
**A:** `RecognizePiiEntitiesAsync()`

---

### **CLU-1 — CLU Client**

**Q:** What is the CLU SDK package?
**A:** `Azure.AI.Language.Conversations`

---

### **CLU-2 — Misclassified "None" Intent**

**Q:** How to reduce misclassification into "None"?
**A:** Add more examples to the None intent.

---

### **LUIS-1 — Enable Active Learning**

**Q:** How to collect utterances for review?
**A:** Use query parameter `log=true`.



## 🟫 **Cognitive Search SDK**

### **CS-1 — Search Index Client**

**Q:** Which client uploads documents?
**A:** `SearchClient` (or `SearchIndexClient` for schema)

---

### **CS-2 — Field Attributes**

**Q:** What does *searchable* mean?
**A:** Full-text search enabled.

---

### **CS-3 — Facetable**

**Q:** What is the field attribute used for aggregations / drill-down?
**A:** `facetable`

---

### **CS-4 — Filterable**

**Q:** What is filterable used for?
**A:** OData filters (no text analysis)

---

### **CS-5 — Sorting**

**Q:** Which attribute must be enabled to sort on a field?
**A:** `sortable`

---

### **CS-6 — High throughput ingestion**

**Q:** For heavy indexing, what should be increased?
**A:** **Partitions**

---

### **CS-7 — High query load**

**Q:** For many queries, what should be increased?
**A:** **Replicas**

---

### **CS-8 — Indexer + Form Recognizer**

**Q:** What projection is required for Power BI export?
**A:** **Table projection**

---

---

## 🟧 **Bot Framework SDK**

### **BOT-1 — State Storage**

**Q:** Which classes manage user and conversation state?
**A:**

* `UserState`
* `ConversationState`

---

### **BOT-2 — Clear Conversation**

**Q:** How to reset bot conversation?
**A:** `conversationState.clear_state(turn_context)`

---

### **BOT-3 — QnA Maker / Language Question Answering**

**Q:** Which dialog queries the KB?
**A:** `QnAMakerDialog`

---

### **BOT-4 — Memory Storage Behavior**

**Q:** Does MemoryStorage persist between restarts?
**A:** No — volatile only.

---

### **BOT-5 — Add speech to bot**

**Q:** What must be configured for voice bots?
**A:**

* Speech key
* Speech region
* Output voice
* Set response as speech-enabled

---

---

## 🟪 **Containers (Vision, Language, LUIS, etc.)**

### **CT-1 — Deployable LUIS version**

**Q:** Which LUIS versions can run in a container?
**A:** Only **deployable** versions.

---

### **CT-2 — LUIS container deployment steps**

**Q:** Steps?
**A:**

1. Export container package (GZIP)
2. Run Docker container
3. Mount model folder
4. Call container endpoint

---

### **CT-3 — Container Test URLs**

**Q:** What does `/status` return?
**A:** API key validation.

---

### **CT-4 — Swagger**

**Q:** Which endpoint exposes API documentation?
**A:** `/swagger`

---

### ❗ **Trap 1 — Wrong Computer Vision method**

If question says *“full sentence for visually impaired”*
→ `DescribeImageInStreamAsync()`

### ❗ **Trap 2 — Read API requires polling**

Never pick "immediate result" methods.

### ❗ **Trap 3 — Cognitive Search load**

* Ingestion → partitions
* Queries → replicas

### ❗ **Trap 4 — CLU vs. Text Analytics**

* Intent classification → CLU
* Entity extraction → Text Analytics

### ❗ **Trap 5 — Logging for Active Learning**

* Enable: `log=true`
* Disable: `loggingOptOut=true`

---

Great — below is a **100-question, dev-focused AI-102 SDK practice exam**.
Questions focus on code, SDK classes/methods, call patterns, and common exam traps across **Computer Vision, Speech, Form Recognizer / Document Intelligence, Language/CLU, Cognitive Search, Bot Framework, and Containers**.

I kept questions short and tightly targeted. After the 100 questions you’ll find a compact **answer key** with one-line rationales so you can self-grade quickly.

---

## AI-102 — 100 Dev-Focused SDK Questions

(Each question is multiple choice: A, B, C, or D.)

---

### 1

You want a full-sentence description for an image to present to visually impaired users. Which method should you call?

* A. TagImageInStreamAsync
* B. DescribeImageInStreamAsync
* C. ReadInStreamAsync
* D. AnalyzeImageByDomainInStreamAsync

### 2

You need to poll the Computer Vision Read API until OCR completes. Which sequence is correct?

* A. ReadAsync → GetReadResultAsync with operation ID loop
* B. GetReadResultAsync → ReadAsync
* C. ReadInStreamAsync → DescribeImageInStreamAsync
* D. TagImageInStreamAsync → GetReadResultAsync

### 3

Which class is used to perform speech-to-text in the Speech SDK (C#)?

* A. SpeechSynthesizer
* B. KeywordRecognizer
* C. SpeechRecognizer
* D. SpeakerRecognizer

### 4

To stream MP3-encoded audio into the Speech SDK push stream, which method sets the format?

* A. AudioStreamFormat.GetWaveFormatPCM()
* B. AudioStreamFormat.GetCompressedFormat(AudioStreamContainerFormat.MP3)
* C. AudioStreamFormat.CreateDefault()
* D. AudioStreamFormat.GetFloat32Format()

### 5

Which method produces tags (keywords) for an image (no sentences)?

* A. DescribeImageInStreamAsync
* B. ReadInStreamAsync
* C. TagImageInStreamAsync
* D. AnalyzeImagesByDomainInStreamAsync

### 6

You must disable logging/persistence of user text to the Language service. Which query parameter is used?

* A. model-version
* B. log=true
* C. loggingOptOut=true
* D. showStats=true

### 7

Which SDK package provides conversational intent recognition support in C#?

* A. Azure.AI.Language.Conversations
* B. Azure.AI.TextAnalytics
* C. Microsoft.Cognitive.Speech
* D. Azure.CognitiveServices.Vision

### 8

You need to extract structured fields from receipts using the prebuilt Form Recognizer model with the SDK. Which client+method is correct?


* A. FormTrainingClient + StartRecognizeReceiptsFromUri
* B. FormRecognizerClient + StartRecognizeReceiptsFromUri
* C. DocumentAnalysisClient + AnalyzeDocumentAsync("prebuilt-receipt", uri)
* D. ComputerVisionClient + ReadAsync

### 9

Which attribute must be set on a Cognitive Search field to allow drill-down filters (facets)?

* A. searchable
* B. retrievable
* C. facetable
* D. filterable

### 10

To increase query throughput for Azure Cognitive Search, you should:

* A. add partitions
* B. add replicas
* C. add indexes
* D. enable CMK encryption

### 11

You want to synthesize speech (text-to-speech). Which class do you instantiate?

* A. SpeechRecognizer
* B. SpeechSynthesizer
* C. TranslationRecognizer
* D. SpeechClient

### 12

Which code fragment correctly polls a Read OCR operation?

* A. `await client.ReadAsync(stream); results = await client.GetReadResultAsync(Guid.Parse(id));` // no loop
* B. `Do { results = await client.GetReadResultAsync(Guid.Parse(id)); await Task.Delay(1000); } while (status==Running)`
* C. `results = await client.ReadAsync(stream);` // no follow-up
* D. `await client.GetReadResultAsync(Guid.NewGuid());` // random id

### 13

Which Speech SDK object would you use to perform real-time translation and add target languages?

* A. SpeechRecognizer
* B. TranslationRecognizer
* C. SpeechSynthesizer
* D. AudioConfig

### 14

When building a bot that queries a Q&A knowledge base, which dialog class is most appropriate?

* A. ComponentDialog
* B. AdaptiveDialog
* C. QnAMakerDialog
* D. SkillDialog

### 15

You need to collect utterances for active learning so reviewers can improve the model. Which query parameter must you include when calling the prediction endpoint?

* A. show-all-intents=true
* B. log=true
* C. loggingOptOut=true
* D. verbose=false

### 16

Which client class is appropriate to call prebuilt Document Intelligence analysis in new SDKs?

* A. DocumentAnalysisClient
* B. FormRecognizerClient only
* C. DocumentClient
* D. AnalysisClient

### 17

You must stream MP3 audio input and use SpeechRecognizer with a push stream. Which AudioConfig is correct?

* A. AudioConfig.FromDefaultMicrophoneInput()
* B. AudioConfig.FromStreamInput(pushStream, AudioStreamFormat.GetCompressedFormat(...))
* C. AudioConfig.FromWavFileInput(filePath)
* D. AudioConfig.FromCustomStream(pushStream) // no format

### 18

To call a domain-specific Vision model for landmark detection, which method is appropriate?

* A. DescribeImageInStreamAsync
* B. AnalyzeImagesByDomainInStreamAsync
* C. TagImageInStreamAsync
* D. ReadInStreamAsync

### 19

You want to create a new CLU conversational client in Python to call intent model. Which package would you install?

* A. azure-ai-language-conversations
* B. azure-cognitiveservices-language-luis
* C. azure-cognitiveservices-speech
* D. azure-ai-textanalytics

### 20

Which Cognitive Search field attribute allows full-text search inside a field?

* A. filterable
* B. retrievable
* C. searchable
* D. facetable

### 21

Which method is used to generate a smart-cropped thumbnail (resized image) using Computer Vision?
A. generateThumbnail endpoint
B. DescribeImage endpoint
C. TagImage endpoint
D. Read API

### 22

Which Bot Framework state storage is non-persistent and loses data on restart?

* A. BlobStorage
* B. CosmosDbStorage
* C. MemoryStorage
* D. AzureTableStorage

### 23

Which command-line behavior should you avoid when running Cognitive Services containers to prevent keys being saved in command history?

* A. Passing keys via environment variables in a script loaded at runtime
* B. Passing keys directly in `docker run` command line
* C. Using Azure Key Vault and mounting secrets at runtime
* D. Using a docker run script that reads keys from protected file

### 24

You exported a LUIS app for container use. Which file format should you export to run in a container?

* A. .json (plain)
* B. .zip with model files
* C. Export for container (GZIP)
* D. .yaml

### 25

Which Form Recognizer method returns general layout (lines, tables) rather than receipts-specific fields?

* A. StartRecognizeReceiptsFromUri
* B. StartRecognizeContentFromUri
* C. AnalyzeDocumentAsync("prebuilt-invoice")
* D. ReadAsync

### 26

Which SDK parameter disables service-side logging for PII-sensitive calls?
A. piiCategories
B. loggingOptOut=true
C. showStats=false
D. model-version=latest

### 27

What is the typical response when you call the Computer Vision Read API immediately (before completion)?

* A. Final text results
* B. OperationLocation header with operation ID
* C. 404 Not Found
* D. Tag list

### 28

Which method should you call to add a phrase list to a LUIS model programmatically (per the book snippet)?
A. client.Features.AddPhraseListAsync(...)
B. client.Models.AddPhrases(...)
C. client.PhraseLists.Create(...)
D. client.AddPhrasesToModel(...)

### 29

Which Speech SDK method performs a single utterance synchronous recognition?

* A. StartContinuousRecognitionAsync
* B. RecognizeOnceAsync
* C. RecognizeAsyncMultiple
* D. GetRecognitionResult

### 30

Which field attributes must you set so a field appears in results and is searchable and can be used for facets?

* A. retrievable, filterable, sortable
* B. searchable, facetable, retrievable
* C. retrievable, facetable, key
* D. searchable, retrievable, sortable

### 31

You want to use the prebuilt Text Analytics language detection endpoint. Which path is correct?
A. /text/analytics/v3.1/languages
B. /language/detect/v1
C. /translate?api-version=3.0
D. /language/identify

### 32

Which class is used to train custom Form Recognizer models (older SDK)?

* A. FormTrainingClient
* B. FormRecognizerClient
* C. DocumentTrainingClient
* D. TrainingClient

### 33

You want translation in a speech app (speech in → speech out). Which combination best fits minimal work?

* A. SpeechRecognizer + custom model + SpeechSynthesizer
* B. TranslationRecognizer + SpeechSynthesizer (or built-in TTS)
* C. SpeechRecognizer + Text Analytics + SpeechSynthesizer
* D. KeywordRecognizer + Translation API

### 34

Which Bot Framework method resets conversation state in Python?

* A. conversationState.delete(turn_context)
* B. conversationState.clear_state(turn_context)
* C. bot.clear()
* D. conversationState.reset()

### 35

Which attribute in an Azure Cognitive Search index is required to allow sorting on a field?

* A. facetable
* B. retrievable
* C. sortable
* D. searchable

### 36

Which Speech SDK method is used to synthesize SSML or text to speaker?

* A. recognizer.SpeakAsync()
* B. synthesizer.SpeakSsmlAsync or SpeakTextAsync
* C. translator.SpeakAsync()
* D. audioPlayer.PlayText()

### 37

Which Computer Vision method returns domain-specific outputs like celebrity names?

* A. TagImageInStreamAsync
* B. DescribeImageInStreamAsync
* C. AnalyzeImagesByDomainInStreamAsync
* D. ReadInStreamAsync

### 38

Which SDK client is used to call Text Analytics sentiment analysis?

* A. TextAnalyticsClient
* B. LanguageClient
* C. SentimentClient
* D. AITextClient

### 39

Which property must you check in Read/GetReadResult responses to know if status is still running?

* A. results.State
* B. results.Status
* C. results.IsComplete
* D. results.Progress

### 40

Which approach allows only VNet resources to access a Language service (ta1) — per exam patterns?

* A. Configure NSG on vnet1
* B. Configure virtual network (private endpoint) settings on ta1
* C. Deploy language service container in vnet1 only
* D. Use Azure Firewall for vnet1

### 41

Which SDK method is appropriate to extract receipts from a remote URI using prebuilt model (per snippet)?

* A. FormRecognizerClient.StartRecognizeReceiptsFromUri(new Uri(...))
* B. DocumentAnalysisClient.AnalyzeDocumentAsync("prebuilt-receipt", new Uri(...))
* C. ComputerVisionClient.ReadAsync(new Uri(...))
* D. TextAnalyticsClient.RecognizeEntitiesFromUri(...)

### 42

Which Bot Framework dialog should be used to route user queries across multiple skills/recognizers (Orchestrator-like)?

* A. QnAMakerDialog
* B. AdaptiveDialog
* C. Orchestrator runtime component (not a dialog)
* D. ComponentDialog

### 43

When running a Cognitive Services container, which local endpoint helps you verify API key validity?

* A. /health
* B. /status
* C. /validateKey
* D. /keycheck

### 44

Which service is best for detecting anomalies across many correlated IoT sensor time series with root cause analysis and alerting out-of-the-box?

* A. Anomaly Detector
* B. Metrics Advisor (Azure Metrics Advisor)
* C. Azure Machine Learning
* D. Custom Vision

### 45

Which Search indexer projection should you use if you want Power BI to work with results easily?

* A. object projection
* B. file projection
* C. table projection
* D. projection group

### 46

What must you configure in a bot to support speech channels using Bot Framework Composer? (Choose the trio that belongs together in exam-style)

* A. Add Orchestrator, Add endpoint key, Add App Insights
* B. Configure Speech language/voice, Add endpoint & key of Speech resource, Add speech to bot responses
* C. Add LUIS, Add QnA Maker, Add Direct Line
* D. Add MemoryStorage, Add BlobStorage, Add CosmosDB

### 47

Which method returns the operation ID location for async Read OCR?

* A. response.Headers.OperationLocation
* B. response.Content.OperationId
* C. response.Json.operation_id
* D. response.Headers.CorrelationId

### 48

You must avoid logging API keys or billing info into shell history when launching containers. Best practice:

* A. Hardcode keys in scripts and run them once.
* B. Provide keys as command-line args to docker run.
* C. Use environment variables injected from a secure store or mount files with restricted permissions.
* D. Paste keys interactively into terminal before running container.

### 49

Which class (package) is used in C# to call Language Conversations models (per earlier snippet)?

* A. Azure.AI.Language.Conversations (package)
* B. Microsoft.Cognitive.LUIS.Client
* C. Azure.CognitiveServices.LanguageClient
* D. Azure.AI.LanguageSDK

### 50

Which method would you use to analyze layout (tables, lines) rather than extracting semantic key/value pairs?

* A. StartRecognizeReceiptsFromUri
* B. StartRecognizeContentFromUri / AnalyzeLayout equivalent
* C. AnalyzeDocumentAsync("prebuilt-receipt")
* D. DescribeImageInStreamAsync

### 51

Which of these is the correct pattern to add a phrase list to many LUIS models programmatically (based on the book)?

* A. client.Features.AddPhraseListAsync(appId, versionId, new PhraselistCreateObject{...})
* B. client.Models.AddPhraseList(appId, phrases)
* C. client.AddPhrases(appId, new PhraseObject(phrases))
* D. client.CreatePhraseList(appId, phrases)

### 52

Which Text Analytics method detects PII entities?

* A. AnalyzeSentimentAsync
* B. RecognizePiiEntitiesAsync
* C. ExtractKeyPhrasesAsync
* D. DetectLanguageAsync

### 53

Which Speech SDK flow is appropriate for long-running continuous recognition from microphone?

* A. RecognizeOnceAsync
* B. StartContinuousRecognitionAsync / StopContinuousRecognitionAsync
* C. ContinuousRecognizeOnce
* D. BeginContinuousTranscribe

### 54

Which Computer Vision SDK output type helps visually impaired users by providing complete-sentence descriptions?

* A. Tag list
* B. Read text only
* C. Descriptions (full sentences)
* D. Domain model metadata

### 55

You want to use the latest deployable LUIS version for a container. Which is correct sequence?

* A. Select latest version → Export for container (GZIP) → Run container and mount model
* B. Train locally → Run container → Upload model
* C. Export JSON → Import into container → Train in container
* D. Run container → Publish version → Export

### 56

Which Bot Framework pattern will display a QnA answer only when score >= threshold? (Config in QnAMakerOptions)

* A. QnAMakerOptions.ScoreThreshold
* B. QnAMakerOptions.MaxAnswers
* C. QnAMakerOptions.RankerType
* D. QnAMakerOptions.CardNoMatchText

### 57

Which Document Intelligence resource name type should you create if you want to use prebuilt invoice analysis and download JSON output?


* A. ComputerVision resource
* B. Document Intelligence (Form Recognizer) resource
* C. Text Analytics resource
* D. Custom Vision resource

### 58

Which Azure Search change will NOT help reduce throttling for query load?

* A. Add replicas
* B. Move to higher tier
* C. Add indexes
* D. Increase number of replicas

### 59

Which SDK concept do you use to avoid persisting sensitive user text in Language service logs?

* A. set header X-Privacy: true
* B. append ?disableLogging=true
* C. use query parameter loggingOptOut=true
* D. set model-version=0

### 60

Which endpoint is used to detect language with Text Analytics v3.1 (per book snippet)?
A. https://<region>.api.cognitive.microsoft.com/text/analytics/v3.1/languages
B. https://<region>.api.cognitive.microsoft.com/language/detect
C. https://<region>.api.cognitive.microsoft.com/translate/detect
D. https://<region>.api.cognitive.microsoft.com/text/language

### 61

You need to run a Text Analytics Sentiment Analysis container on VM with Docker. Which docker image name is correct (per snippet)?

* A. mcr.microsoft.com/azure-cognitive-services/textanalytics/sentiment
* B. microsoft/textanalytics:sentiment
* C. azure/textanalytics/sentiment:latest
* D. mcr.microsoft.com/cognitive/text/sentiment

### 62

Which Form Recognizer client method should you use to analyze receipts from a URI and wait for completion (older SDK snippet)?

* A. StartRecognizeReceiptsFromUri(...).WaitForCompletionAsync()
* B. StartAnalyzeReceipts(new Uri(...))
* C. AnalyzeDocumentAsync("prebuilt-receipt") // no wait
* D. RecognizeContentAsync(uri)

### 63

Which Bot Framework storage accessor creation syntax is correct in C#?

* A. `_userState.CreateProperty<UserProfile>(nameof(UserProfile));`
* B. `_userState.GetProperty<UserProfile>("UserProfile");`
* C. `_conversationState.CreateAccessor<UserProfile>();`
* D. `UserState.CreateProperty<UserProfile>("UserProfile");` // static

### 64

Which Speech SDK action is required to use Custom Neural Voice generation?

* A. Create voice model in Speech Studio and then generate using Text-to-Speech API
* B. Train voice model with SpeechSynthesizer locally
* C. Use TTS with a special SDK flag `UseCustomVoice=true` only
* D. No special steps needed; just pass voice name

### 65

Which of the following is NOT a correct reason to attach an S0 Cognitive Services resource to a Search skillset when processing 50k scanned docs?

* A. F0 (free) tier has too few enrichments → choose S0
* B. S0 supports scale for many documents
* C. S0 eliminates need for Form Recognizer entirely
* D. Free tier would quickly exceed limits

### 66

Which property of Search index fields increases index size and slightly increases query times when using CMK?

* A. adding more replicas
* B. enabling encryption (CMK)
* C. setting `searchable=true`
* D. adding facetable fields

### 67

Which SDK/class would you use to call Azure Video Analyzer (Video Indexer) insights programmatically?

* A. VideoIndexer REST APIs (or SDK)
* B. ComputerVisionClient
* C. FormRecognizerClient
* D. SpeechRecognizer

### 68

Which method would you use to get the operation status for a Read request in Computer Vision?

* A. GetReadResultAsync(Guid)
* B. GetReadStatus()
* C. CheckReadOperation()
* D. ReadStatusAsync()

### 69

Which package should be added to a C# app to call conversational Language service model (Model1) per earlier snippet?

* A. Azure.AI.Language.Conversations
* B. azure-cognitiveservices-language-luis
* C. Universal.Microsoft.CognitiveServices.Speech
* D. Xamarin.Cognitive.Speech

### 70

Which SDK method is used to start a recognition of general content (layout) from a URI (older Form Recognizer naming)?

* A. StartRecognizeContentFromUri
* B. StartRecognizeReceiptsFromUri
* C. StartRecognizeLayoutFromUri
* D. AnalyzeDocumentFromUri

### 71

Which setting in QnAMakerOptions controls minimum confidence to return an answer?

* A. RankerType
* B. ScoreThreshold
* C. Top = 1
* D. ConfidenceMin

### 72

Which is the correct order to move a Language (QnA) project to a different region?

* A. Export project → Import into new Language service → Train & Publish
* B. Recreate KB manually → Train → Publish
* C. Train in new region → Export from old → Import old
* D. Export → Publish → Import

### 73

When calling the Speech SDK for streaming MP3 audio, what is essential to include?

* A. set SpeechRecognitionLanguage="en-US" only
* B. use `AudioStreamFormat.GetCompressedFormat(AudioStreamContainerFormat.MP3)` for audio config
* C. use `AudioConfig.FromWavFileInput` with mp3 path
* D. use default audio config and set Format="MP3"

### 74

Which of these is required to allow only VNet1 to access a Cognitive Services resource?

* A. configure the Cognitive Services resource virtual network / private endpoint
* B. set NSG on VNet1 only
* C. add firewall rules only
* D. deploy service to public endpoint and add IP restrictions

### 75

Which method is used to analyze a remote image using the Describe API (older SDK)?

* A. client.DescribeImageInStreamAsync(stream)
* B. client.DescribeImageAsync(imageUrl)
* C. client.AnalyzeImageByDomainInStreamAsync(stream)
* D. client.TagImageAsync(imageUrl)

### 76

Which attribute must be true for an Azure Search field to be returned in search results?

* A. retrievable = true
* B. searchable = true
* C. facetable = true
* D. filterable = true

### 77

Which of the following is NOT true about MemoryStorage in Bot Framework?

* A. It's in-memory only and non-persistent.
* B. It persists data across app restarts.
* C. Good for local testing.
* D. Lost when process restarts.

### 78

You need to ensure your bot's QnA responses are only shown when confidence >= 0.6. Which option do you set?

* A. QnAMakerOptions.ScoreThreshold = 0.6F
* B. QnAMakerOptions.MaxAnswers = 0.6F
* C. QnAMakerOptions.RankerType = "High"
* D. QnAMakerOptions.CardNoMatchText = "No match"

### 79

Which Azure SDK client is used for general Text Analytics (sentiment, key phrases)?

* A. TextAnalyticsClient
* B. LanguageClient
* C. SentimentClient
* D. AnalyzeTextClient

### 80

Which of the following best practice avoids exposing keys in terminal history when running docker run?

* A. use environment variables read from a file with 600 permissions and `--env-file`
* B. pass `-e "API_KEY=..."` on command line
* C. echo key into terminal then run docker run in same line
* D. use `history -c` afterwards

### 81

Which of the following identifies the correct method to run sentiment analysis on text?

* A. textClient.AnalyzeSentimentAsync(document)
* B. textClient.RecognizePiiEntitiesAsync(document)
* C. textClient.DetectLanguageAsync(document)
* D. textClient.ExtractKeyPhrasesAsync(document)

### 82

Which Cognitive Search change increases the capacity for indexing (ingestion) operations?

* A. Add replicas
* B. Add partitions
* C. Add more indexes
* D. Enable CMK

### 83

Which SDK method would you use to start recognition of content (layout) locally with file stream?

* A. client.StartRecognizeContentFromStream(stream)
* B. client.ReadAsync(stream)
* C. client.StartAnalyzeLayoutFromStream(stream)
* D. client.StartRecognizeReceiptsFromStream(stream)

### 84

Which method is typically used to regenerate the secondary subscription key of a Cognitive Services account via management REST API?

* A. POST .../regenerateKey with body {"keyName":"Key2"}
* B. PUT .../keys/rotate secondary
* C. GET .../keys/regenerate
* D. PATCH .../keys with "rotate"

### 85

Which of these is the correct way to create SpeechConfig in C#?

* A. `var speechConfig = SpeechConfig.FromSubscription("key", "region");`
* B. `var speechConfig = new SpeechConfig("key", "region");`
* C. `var speechConfig = SpeechConfig.Create("key");`
* D. `var speechConfig = SpeechConfig.FromKeyVault(kvUri);`

### 86

Which of these is correct for using TranslationRecognizer to translate from French to German?

* A. `speechConfig.SpeechRecognitionLanguage = "fr"; translator.AddTargetLanguage("de");`
* B. `speechConfig.SpeechRecognitionLanguage = "de"; translator.AddTargetLanguage("fr");`
* C. `speechConfig.SpeechRecognitionLanguage = "fr"; translator.AddSourceLanguage("de");`
* D. `translator.SetSource("fr"); translator.AddTarget("de");` // not SDK

### 87

Which resource should you attach to a Search skillset to perform OCR and text analytics at scale?

* A. free Cognitive Services (F0)
* B. S0 Cognitive Services resource
* C. Computer Vision resource only
* D. No resource required

### 88

Which class do you use to call AnalyzeDocumentAsync for prebuilt invoice in new SDK?

* A. DocumentAnalysisClient
* B. FormRecognizerClient
* C. InvoiceAnalysisClient
* D. DocumentIntelligenceClient

### 89

Which method on SpeechRecognizer returns the recognized text result for a single utterance?

* A. RecognizeOnceAsync()
* B. GetResultAsync()
* C. StartSingleRecognition()
* D. TranscribeAsync()

### 90

When processing receipts with Form Recognizer prebuilt model, which fields are commonly returned?

* A. merchantName, transactionTotal, transactionDate
* B. descriptionOnly
* C. imageColors
* D. facialAttributes

### 91

Which of these endpoints should you call to check swagger docs of a Cognitive Services container?

* A. /swagger
* B. /docs
* C. /api-docs
* D. /help

### 92

Which is the correct practice for programmatically creating a free Computer Vision resource via a helper method `create_resource`? Example from book: `create_resource(client, "res1", "ComputerVision", "FO", "westus")`. What does "FO" indicate?

* A. Free tier (F0)
* B. Standard tier
* C. Billing region
* D. Resource group

### 93

Which is the correct SDK client for analyzing video insights from Azure Video Indexer?


* A. Use Video Indexer REST APIs / SDK
* B. ComputerVisionClient.AnalyzeVideo
* C. FormRecognizerClient.AnalyzeVideo
* D. VideoClient from Speech SDK

### 94

Which of the following is true about QnA Maker provisioning in a resource group with an App Service plan? (Per book)

* A. Azure Cognitive Search and an App Service instance are automatically created
* B. LUIS authoring is automatically created
* C. Azure SQL DB is always created
* D. Azure Storage is never used

### 95

Which Speech SDK method provides continuous recognition for long audio files?

* A. RecognizeOnceAsync
* B. StartContinuousRecognitionAsync
* C. TranscribeFileOnce
* D. GetLongRecognition

### 96

Which of these is the correct approach to avoid storing billing/API keys in container command history?

* A. Use an `docker run` script that loads secrets from a file not in shell history
* B. Always paste the key into terminal directly
* C. Hardcode key in the docker image
* D. Print keys as part of container logs

### 97

Which attribute must be set for a Search field to be used for OData filter expressions?

* A. facetable
* B. filterable
* C. searchable
* D. retrievable

### 98

Which SDK action logs endpoint utterances for LUIS active learning?
A. add header X-Active-Learning: true
B. include `log=true` in predict request
C. call `/logUtterance` endpoint
D. set `verbose=true` only

### 99

Which class is more appropriate to call Text Analytics PII detection in C#?

* A. Azure.AI.TextAnalytics.TextAnalyticsClient
* B. Azure.AI.Language.Conversations.ConversationsClient
* C. Azure.AI.FormRecognizer.FormRecognizerClient
* D. Azure.CognitiveServices.Speech.SpeechClient

### 100

Which of the following is the recommended sequence to move a QnA/Language project into a new Language service instance in a different region?

* A. Export existing project → Import into new instance → Train & Publish
* B. Create new instance → Copy endpoints → Delete old
* C. Export → Delete → Import
* D. Train first in new region then export

---

#### ✅ Answer Key

1. **B** — DescribeImageInStreamAsync returns full-sentence descriptions.
2. **A** — ReadAsync then poll GetReadResultAsync loop with operation ID.
3. **C** — SpeechRecognizer is for STT.
4. **B** — Use GetCompressedFormat with MP3 container.
5. **C** — TagImageInStreamAsync returns tags.
6. **C** — loggingOptOut=true disables persistence/logging.
7. **A** — Azure.AI.Language.Conversations is correct package.
8. **C** — DocumentAnalysisClient + AnalyzeDocumentAsync("prebuilt-receipt", uri).
9. **C** — facetable enables facets/drill-down.
10. **B** — Add replicas for increased query throughput.
11. **B** — SpeechSynthesizer for TTS.
12. **B** — Polling loop with delay until status is not Running/NotStarted.
13. **B** — TranslationRecognizer is for speech translation.
14. **C** — QnAMakerDialog queries KBs.
15. **B** — log=true collects utterances for active learning.
16. **A** — DocumentAnalysisClient is the modern client.
17. **B** — FromStreamInput with compressed MP3 format.
18. **B** — AnalyzeImagesByDomainInStreamAsync for domain models.
19. **A** — azure-ai-language-conversations for Python.
20. **C** — searchable enables full-text search.
21. **A** — generateThumbnail endpoint performs smart cropping.
22. **C** — MemoryStorage is in-memory and non-persistent.
23. **B** — Avoid passing keys on CLI (they get stored in history).
24. **C** — Export for container (GZIP) is the container export.
25. **B** — StartRecognizeContentFromUri for layout/content.
26. **B** — loggingOptOut=true disables logging.
27. **B** — Read returns OperationLocation header with ID.
28. **A** — client.Features.AddPhraseListAsync(...) per snippet.
29. **B** — RecognizeOnceAsync for single utterance.
30. **B** — searchable + facetable + retrievable for those requirements.
31. **A** — /text/analytics/v3.1/languages is the language detection path.
32. **A** — FormTrainingClient used in older SDKs to train models.
33. **B** — TranslationRecognizer simplifies speech→speech translation.
34. **B** — conversationState.clear_state(turn_context) in Python snippet.
35. **C** — sortable enables sorting.
36. **B** — synthesizer.SpeakSsmlAsync or SpeakTextAsync.
37. **C** — AnalyzeImagesByDomainInStreamAsync for celebrity/landmark domain.
38. **A** — TextAnalyticsClient is the main client.
39. **B** — results.Status holds OperationStatusCodes (Running/Succeeded).
40. **B** — Configure virtual network / private endpoint settings on the resource.
41. **A** — StartRecognizeReceiptsFromUri is the receipts convenience method.
42. **C** — Orchestrator is the runtime routing component (not a dialog class).
43. **B** — /status checks container/service status and key validity.
44. **B** — Metrics Advisor offers RCA and multi-metric monitoring.
45. **C** — table projection is best for Power BI tabular export.
46. **B** — Configure language/voice, add speech resource keys, add speech to responses.
47. **A** — OperationLocation header contains the operation ID.
48. **C** — Use secure env-file or mounted secrets (not CLI args).
49. **A** — Azure.AI.Language.Conversations package for CLU.
50. **B** — StartRecognizeContentFromUri (layout/content).
51. **A** — client.Features.AddPhraseListAsync(...).
52. **B** — RecognizePiiEntitiesAsync detects PII.
53. **B** — StartContinuousRecognitionAsync for continuous realtime.
54. **C** — Descriptions provide full-sentence outputs.
55. **A** — Select latest → export for container → run/mount model.
56. **A** — QnAMakerOptions.ScoreThreshold sets min confidence.
57. **B** — Document Intelligence (Form Recognizer) for invoices.
58. **C** — Adding indexes does not reduce query throttling (replicas do).
59. **C** — loggingOptOut=true is the privacy parameter.
60. **A** — That is the documented v3.1 languages endpoint.
61. **A** — mcr.microsoft.com/azure-cognitive-services/textanalytics/sentiment.
62. **A** — StartRecognizeReceiptsFromUri(...).WaitForCompletionAsync() is the pattern.
63. **A** — _userState.CreateProperty<UserProfile>(nameof(UserProfile));
64. **A** — Create voice in Speech Studio, then use TTS to generate audio.
65. **C** — S0 doesn’t eliminate need for Form Recognizer; statement is false.
66. **B** — CMK encryption adds metadata; index size & query time may increase.
67. **A** — Video Indexer / Video Analyzer REST APIs or SDK.
68. **A** — GetReadResultAsync(Guid) returns status/result.
69. **A** — Azure.AI.Language.Conversations package.
70. **A** — StartRecognizeContentFromUri for general layout.
71. **B** — ScoreThreshold sets the min score returned.
72. **A** — Export → Import → Train & Publish.
73. **B** — Use GetCompressedFormat for MP3 streaming audio.
74. **A** — Configure the resource's virtual network/private endpoint.
75. **B** — Describe an image from URL uses DescribeImage API; for streams there is DescribeImageInStreamAsync; older pattern is DescribeImageAsync(imageUrl). (Exam picks describe) — **(B)**
76. **A** — retrievable=true to be included in results.
77. **B** — MemoryStorage does NOT persist across restarts (so statement B is false).
78. **A** — QnAMakerOptions.ScoreThreshold = 0.6F.
79. **A** — TextAnalyticsClient.
80. **A** — Use an env-file with proper permissions and `--env-file`.
81. **A** — AnalyzeSentimentAsync performs sentiment analysis.
82. **B** — Partitions scale ingestion.
83. **A** — StartRecognizeContentFromStream (or equivalent) for content/layout.
84. **A** — POST regenerateKey with {"keyName":"Key2"} regenerates secondary key.
85. **A** — SpeechConfig.FromSubscription("key","region") is correct.
86. **A** — Set recognition language fr and add target de.
87. **B** — Attach S0 Cognitive Services for scale.
88. **A** — DocumentAnalysisClient for prebuilt invoice.
89. **A** — RecognizeOnceAsync().
90. **A** — merchantName, transactionTotal, transactionDate are typical receipt fields.
91. **A** — /swagger exposes OpenAPI docs in many containers.
92. **A** — "FO" indicates Free tier (F0) in the sample helper usage.
93. **A** — Use Video Indexer REST APIs/SDK for Azure Video Analyzer insights.
94. **A** — QnA Maker provisioning creates Cognitive Search and App Service instances.
95. **B** — StartContinuousRecognitionAsync for long audio.
96. **A** — Read secrets from a protected file/script, not pass them in CLI.
97. **B** — filterable allows OData filter expressions.
98. **B** — Include log=true in prediction requests for active learning.
99. **A** — Azure.AI.TextAnalytics.TextAnalyticsClient is correct.
100. **A** — Export → Import → Train & Publish is the standard move sequence.


