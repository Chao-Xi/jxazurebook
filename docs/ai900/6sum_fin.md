* Azure Bot Service can import frequently asked questions (FAQ) to question and answer sets. （No）
* The QnA Maker service can determine the intent of a user utterance. (No)
* C. Answer questions from multiple users simultaneously.
* D. You need to ensure that the bot uses user feedback to improve the relevance of the responses over time. **active learning**
* **object detection.**： **Returning a bounding box that indicates the location of a vehicle** in an image 
* **Named Entity Recognition (NER)** used to extract dates, quantities, and locations from text.
* Add professional greetings and other responses to make the bot more user friendly. **D. Add chit-chat**
* **determine a user's intent? / interpret the meaning of a user input =>  Language Understanding (LUIS)**
*  **speech recognition**
	*  providing closed captions for recorded or live videos 
	*  creating a transcript of a telephone call or meeting
* Assigning classes to images before training a classification model is an example of (**labeling**)
* Azure Speech Services capabilities
	* B. The Speech-to-Text API provides a batch transcript API that can be used to batch process larger audio files.
	* C. When using the Text-to-Speech API, you can configure speech settings such as speed and volume.
* **Accuracy** is the **calculated probability of a correct image classification**.
* Two components can you drag onto a canvas （dataset/module)
* **Evaluate a classification model? => A. true positive rate**
* Evaluate a regression model? 
	* A. coefficient of determination (R2)
	* C. root mean squared error (RMSE)
* Azure Automated Machine Learning (AutoML) 
	* A. AutoML is used to automatically select the best machine learning algorithm for your dataset.
	* B. You can choose to use either the Python SDK or a no-code user interface to build an AutoML experiment.
* Azure Language Understanding (LUIS) model response
	* **A. A list of intents with a confidence score**
	* **C. A list of entities extracted from the input question/command**.
* **Azure Text Analytics API?**
	* A. language detection
	* B. named entity recognition	
* **Automated machine learning can automatically infer the training data from the use case provided.  (No)**
	* **Automated machine learning enables you to specify a dataset and will automatically understand which label to predict. (No)**
* A. Classification algorithms use labeled training data to build a model and predict the category (class) of yet unseen data items.
	* D. Classification algorithms can predict both binary and multi-class classification problems.
* Azure's Computer Vision JSON response
	* **A confidence score that indicates how likely the tag correctly matches the content in the image.**
*  A primary metric used to compare the results of individual experimental runs.
	* B. A list of blocked algorithms that should be excluded from the training runs.

---

* **Language** -  you use to determine a user’s intent
* **Power Virtual Agents**  - can be used to build no-code apps that use built-in natural language processing models
* You need to ensure that the model detects when utterances are outside the intended scope of the model.  - **B. Add utterances to the None intent**
*  extract intent from a user input such as “Call me back later”“ => **Language**
*  generate a narration audio file for each video based on the script => **speech synthesis**
*  Evaluating the performance of a model,  => **confusion matrix**
*  （NLP) entity is used to identify a phone number? => **regular expression**
*  **Chatbots can support voice input. （Yes)**
	* A separate chatbot is required for each communication channel. （No)
* Identify the intent of a user's requests.   => **Language service**
	* Apply intent to entities and utterances.   => **Language service**
* **NLP** => Retrieve support documents / Retrieve order status updates => **named entity recognition**
* An AI solution that helps photographers take better portrait photographs by providing **feedback on exposure, noise, and occlusion** is an example of  => **facial  analysis**
* Object detection can identify the (**multiple instance  / location / multiple types**) of a damaged product in an image.
*  identify groups of rows with similar numeric values in a dataset. => **clustering**
* **Track multiple versions** of a model that was trained by **using Azure Machine Learning**.  => **Register the model.**
* ( **The Azure portal** ) Create a Machine Learning workspace
* (**Machine Learning designer** ) Use a drag-and-drop interface used to train and deploy models
* ( **Automated machine learning (automated ML)** ) Use a wizard to select configurations for a machine learning run
* **a compute resource** should you create before you can run the pipeline
* Azure Machine Learning designer lets you create machine learning models by  **Adding and connecting modules on a visual canvas**,
* **B. Take a training sample that is representative of the population in the United Kingdom.**

---

* Specifying granularity in JSON data object is used to indicate the recording pattern of the data. (Yes)
* XML data format is accepted by Azure Cognitive Search when you are pushing data to the index? (No)
* Automated machine learning can automatically infer the training data from the use case provided. （N）
	* Automated machine learning enables you to specify a dataset and will automatically understand which label to predict （Y）
* **Question Answering** => reate a knowledge base for bots
*  **Import from the existing FAQ document into a new knowledge base.**
*  Automated machine learning provides you with the ability to include custom Python scripts in a training pipeline. （**Yes**)
*   The Text Analytics service can identify in which language text is written. (Y)
*  **Privacy and Security: Personal data must be visible only to approve**.
* **Form Recognizer pre-built receipt model** <=  **Form Recognizer or Cognitive Services resource**
* **Use Face service to identify named individual** => Use Face to create a group containing multiple images of each named individual, and train a model based on the group
* What is one aspect that **may impair facial detection?** => **Extreme angles**
* **How does the service indicate the location of the faces it detects?**
	* A set of coordinates for each face, **defining a rectangular bounding box around the face**
* Company wants developers to use **only one key and endpoint to access all of the services**.  =>  **Cognitive Services**

* A Cognitive Services resource support both Computer Vision for text extraction, and Text Analytics for text analysis.  =>  **(b) Cognitive Services**
* **Object detection model typically return for an image**
	*  A class label, probability, and bounding box for each object in the image  **（Y)**
	*  **Azure Machine Learning designer enables you to include custom JavaScript functions. （N）**
* **Correct**: To use a published model, you n**eed the project ID, the model name, and the key and endpoint for the prediction resource.**
*  Create an inference pipeline from the training pipeline
*  You want to use the Computer Vision service to identify the location of individual items in an image. Which of the following features should you retrieve?  => a) **Objects**
*   _**before deploying the model as a service?**_
	* **Create an inference pipeline from the training pipeline**
* You want to use automated machine learning to train a regression model with the best possible R2 score.
	* **a) Set the Primary metric to R2 score**
* You also want the transformation to scale relative to the minimum and maximum values in each column
	* **b) Normalize Bata**
* The QnA Maker service can determine the intent of a user utterance.    （**No**)
* calculated probability of a correct image classification => **Confidence**