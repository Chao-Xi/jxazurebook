# AI900 Exam summary


1. Data transformation modules
	* **Split Data**
	* **Clean Missing Data**
		* **Only Split Data and Clean Missing Data are data transformation modules**. 
		* Data transformation modules are used to prepare data before a machine learning experiment.
		* **Cleaning missing data, normalizing data, or converting data from one file format to another**.

2. Anomaly Detector is an Azure Cognitive service API that is used to **identify anomalies in time-series data**. 

3.  **Predict a continuous value,** you would use a **regression algorithm** to build your model. 
	* Classification algorithms are used to **predict discrete values or classes**, 
	* Clustering algorithms help **uncover patterns and organize data into associated clusters**.

4. **Confusion matrix**
  * **Predicted Positive + Actual True => true + Positive**
  * **Predicted Negative + Actual True => False + Negative**

 
5. **Azure QnA Maker as the knowledge base to power a bot using Azure Bot Service and build a web chatbot**. 
	* **QnA Maker** => existing frequently asked questions database,
	* It is also possible to use **Language Understanding (LUIS) to power a bot instead of QnA Maker or in addition to QnA Maker**. 

6. **The term utterance is used to describe the user's question or command that is the input sent to a LUIS endpoint for analysis.**
	* What is the term used to describe what the user might say to the application, in this case asking about the temperature in Boston?
		* **A. utterance**
  * Determining whether a review is positive or negative => **Natural language processing**


7. **Accountability** : Implementing processes to ensure that decisions made by AI systems can be overridden by humans.
	* **Reliability and safety** - To build trust, it's critical that AI systems operate reliably, safely, and consistently **under normal circumstances and in unexpected conditions**.
	* **Privacy and security** - Provide consumers with information and controls over the collection, use, and storage of their data.
		* Privacy and security => **Personal data must be visible only to approve**

8. To configure a new **Azure Bot** and connect with your **QnA knowledge base**

	* **QA authorization key / QnA endpoint hostname / QnA knowledge base ID**

9. **Azure Machine Learning to uncover data patterns and groupings**.  => Clustering

	* Computer vision = identify (object) letters
	* **NLP = sentiment**
	* Anomaly Detection = fraud
	* **Machine Learning (regression) = predict**
	* Analyzes customer product reviews and flags reviews that have a negative sentiment. 
		* Which Azure Cognitive Service => sentiment analysis => **Text Analytics API**

 
10. Types of machine learning problems are supported with Azure Automated Machine Learning (AutoML)
 	* **A. Regression / B. Classification / C. Time-series forecasting**


11. **Feature engineering is applied first to generate additional features**,
	* Feature engineering: **Splitting a date into month, day, and year fields** 
	* **Feature selection is done to eliminate irrelevant, redundant, or highly correlated features.**
		* Feature selection： **Picking** temperature and pressure to train a weather model
		* **Feature engineering = splitting / Feature selection = picking**

12. Fairness : **make sure that the system’s decisions don’t discriminate or run a gender, race, sexualorientation, or religion bias toward a group or individual.**
	* **Fairness：AI systems should NOT reflect biases from the data sets that are used to train the systems**
		* **Inclusiveness = accessible to all**
		* **Fairness = treat all without prejudice or bias**
	* A triage bot that prioritizes insurance claims based on **injuries is an example of the Microsoft reliability and safety principle for responsible AI （privacy and security）**.  
	* An AI solution that is offered at **different prices for different sales territories** is an example of the Microsoft **inclusiveness** principle for responsible AI => **fairness** （different sales territories）


13. **Azure Bot Service**
	
	* When you create a **bot using Azure Bot Services**, you need an **Azure Cognitive Service with natural language processing** to understand and respond to user input.
	* When you create a bot using Azure Bot Service, **a webchat channel is automatically created for you**. 
		* There are also many other channels that you can associate with your bot, including an email channel and a **Microsoft Teams channel**.
	*  A bot service can be associated with one or more communication channels.

14. Before you deploy the model
	* **data preparation -> model training  ->  model evaluation**

15. Azure AutoML experiment, following configuration values are specified for the experiment?
	*  **primary metric**
		*  A primary metric used to compare the results of individual experimental runs
		* The **primary metric** is the evaluation metric by which each AutoML run is compared. 
	*  A list of **blocked algorithms**
		* **A list of blocked algorithms that should be excluded from the training runs**.

16. **Using the computer vision REST endpoint, and the JSON response includes one or more tags that have been identified.** What other information is also included with each tag in the JSON response?
	* A confidence score that indicates how likely the tag correctly matches the content in the image.
	* A confidence score is a number from 0 to 1, **with values closer to 1 indicating high confidence that the tag correctly identifies features in the image.** 
	* Each tag in the response includes the **name of the tag and a confidence score that indicates how likely the tag correctly matches the content in the image**.

	
17.  You will need a **direct line channel** to support speech output for your web chatbot application.

18. **Classification algorithms use labeled training data to build a model and predict the category (class) of unseen data items.** 
	> It is clustering algorithms, and not classification algorithms take unlabeled data and group the data into two or more categories (classes).
	* **Classification algorithms can predict both binary and multi-class classification problems**.


19. **Overfitting** occurs when a model matches training data so closely that it doesn't generalize well to other data.
 * **Overfitting happens when the model performs very well on the training dataset but does not perform well with unseen test data**.

20. Labelling is the process of tagging training data with known values.  **(Yes)**
	* **Data labeling can refer to tasks that include data tagging, annotation, classification, moderation, transcription, or processing.**
	* Accuracy is always the primary metric used to measure a model's performance.  **(No)**
		* Accuracy is simply the proportion of correctly classified instances. 
		* It is usually the first metric you look at when evaluating a classifier.
		* However, **when the test data is unbalanced (where most of the instances belong to one of the classes), or you are more interested in the performance on either one of the classes**, accuracy doesn't really capture the effectiveness of a classifier.



21. **Azure Text Analytics API**
	* **A. language detection**
  * **B. named entity recognition** 
  * Other Azure Cognitive Services:
  		* **Form Recognizer / Text Analytics / Anomaly Detection**
		* **Feature: user intent extraction,** **Service: Language Understanding (LUIS)**
		* **Feature: text to speech services**, Service: Text-to-Speech service
		* **Feature: text identification in an image**, Service: Computer Vision - Optical Character Recognition (OCR)


22. To perform real-time inferencing, you must deploy a pipeline as a real-time endpoint.
	* **A. A list of intents with a confidence score.**
	* **C. A list of entities extracted from the input question/command**.
	* The primary information included in a response from invoking a LUIS endpoint with a command or question as input is:
		* The top intent (best confidence score)
		* A list of all intents (and associated confidence score)
		* A list of entities extracted from the input question/command (utterance)
 
23.  Which statement about Azure Automated Machine Learning (AutoML) is true? (Choose 2 answers)
	* **A. AutoML is used to automatically select the best machine learning algorithm for your dataset.**
	* **B. You can choose to use either the Python SDK or a no-code user interface to build an AutoML experiment**.

24. **A validation set can be used to determine how well a model
predicts labels.  (Yes)**
	* The validation dataset is different from the test dataset that is held back from the training of the model.
	* **A validation set can be used to verify that all the training data was
used to train the model.  (No)**
	* The Test Dataset, not the validation set, used for this. The Test Dataset is a sample of data used to provide an unbiased evaluation of a final model fit on the training dataset

25. Two metrics that you can use to evaluate a **regression model**? 
	* **A. coefficient of determination (R2)**
	* **C. root mean squared error (RMSE)**
		* **True positive rate => classification model**
		* **MAE(Main absoulte error), RMSE and R2 are metris for regression**
	
	> **F1 score also known as balanced F-score or F-measure is used to evaluate a classification model.**
	> 
	> **AucROC or area under the curve (AUC) is used to evaluate a classification model**.

26.  **Select Columns in Dataset** -> Clean Missing Data  -> **Split Data** -> Linear Regression -> Train Model -> score model


27. You can drag-and-drop **datasets and modules** onto the canvas in Azure Machine Learning designer.

28. Which statements about **Azure Speech Services capabilities are true**?
	*  **B. The Speech-to-Text API provides a batch transcript API that can be used to batch process larger audio files**.
	*  **C. When using the Text-to-Speech API, you can configure speech settings such as speed and volume.**
		*  The speech translation service does not provide a REST API; it is only available with a SDK.

39. Applications are a common consumer of Azure Cognitive Services' QnA Maker?
	* **A. social media applications** / **B. chatbots**

30. In Azure Machine Learning, a **pipeline** is a workflow you build to manage the data and modules used to train and evaluate a machine learning model.

31. two actions are performed during the **data ingestion and data preparation stage of an Azure Machine Learning process**
	* C. **Combine multiple datasets.**
	* E. **Remove records that have missing values**

32. When creating an object detection model in the Custom Vision service,
**you can select from a set of predefined domains**.  **（Yes)**

33. When you set up QnA Maker, **you create a knowledge base that includes a set of question and answer pairs**. 

34. **Semantic segmentation.** Determine which pixels in an image are part of a bear.
	* **Semantic segmentation achieves fine-grained inference by making dense predictions inferring label for every pixel**, so that pixel is labeled with the class of its enclosing object or region


35. Natural language processing tasks （NLP)
	* **Filter: entity recognition**
	* **Assess: Sentiment Analysis**
	* Natural language processing (NLP) is used for tasks such as **sentiment analysis, topic detection, language detection, key phrase extraction, and document categorization**.

36.  QnA Maker. Which file format can you use to populate the knowledge base?
	* **PDF, DOC, and TXT.**

37. **key phrase extraction**： C. identifying which documents provide information about the same topics

38. **Language Understanding (LUIS)**： AI service can you use to **interpret the meaning** of a user input such as Call me back later

39. **A. There were 35 false negatives**.
	* **C. There were 11 false positives.**

40. **Utterances are input from the user that your app needs to interpret.**

41. Build a QnA Maker bot by using a frequently asked questions (FAQ) page. 
	* Greetings and other responses to make the bot more user friendly=> **Add chit-chat**

41. You need to ensure that the model detects when utterances are outside the intended scope of the model.
	* **B. Add utterances to the None intent**

42. **Named Entity Recognition (NER)** used to extract dates, quantities, and locations from text.
	* **The NER feature can identify and categorize entities in unstructured text.** 

43. **Evaluating whether to use a basic workspace or an enterprise workspace** in Azure Machine Learning
	* **A. Use a graphical user interface (GUI) to run automated machine learning experiments**.
	* **C. Use a graphical user interface (GUI) to define and run machine learning experiments from Azure Machine Learning designer.**

44. You have a webchat bot that provides responses from a QnA Maker knowledge base and **ensure that the bot uses user feedback to improve the relevance of the responses over time**.   => **active learning**


45. Three ways to create question and answer text by using QnA Maker
	* **A. Generate the questions and answers from an existing webpage**.
	* **C. Manually enter the questions and answers.**
	* **E. Import chit-chat content from a predefined data source**.

46. Azure Bot Service can import frequently asked questions (FAQ) **to question and answer sets**.  **（No）**
	* **The QnA Maker service creates knowledge base, not question and answers sets.**

47. Need to identify what the bot that use the knowledge base can perform without adding additional skills. =>  **C. Answer questions from multiple users simultaneously**.


48. Minimize bias in the system.
	* Take a training sample that is representative of the population in the United Kingdom.
	* **To minimize bias in the system, it's important that your training data is representative of the population you're modeling.** 


49. Azure Machine Learning designer lets you **create machine learning models** by
	 * **Adding and connecting modules on a visual canvas.**
	 * **You can customize but only using Python and R code for Azure Machine Learning designer**

	 
50. Use Azure Machine Learning designer to build a model pipeline, What should you create before you can run the pipeline?
	* **a compute resource** to run the model


51.  In a machine learning model, **Variables and Features are input**, **Label is the output**

52. Using Recency, Frequency, and Monetary (RFM) values to identify **segments** of a customer base is **(Clustering)**
	* **segmentation = grouping and grouping is clustering**

53. Need to **track multiple versions** of a model that was trained by using Azure Machine Learning.  => **B. Register the model.**

52.  Identifying whether a kiosk user is annoyed by monitoring a video feed from the kiosk is an example of   **facial analysis.**
	* Facial analysis: infer the emotional state of the kiosk users

54. **Natural language processing**： **C. Classify email messages as work-related or personal**.


55. **NLP**:  **B. named entity recognition**
	* Accept customer orders.
    * Retrieve support documents.
    * Retrieve order status updates.

56. Lanquage Service's question answering can determine the intent of a user utterance.   **（No)**
	
	* Language Service's question answering is focused on extracting answers from text and documents, rather than determining the intent of user utterances. 
	* **Intent recognition is typically handled by other NLP components or services**

57. Which type of natural language processing (NLP) entity is used to identify a phone number?
	* **A. regular expression**

58.  can be used to build no-code apps that use built-in natural language processing models
	* **Power Virtual Agents**

59. Azure Language Service includes features for **understanding user intent from text inputs, making it suitable for chatbots**.

60. Ensuring that the **numeric variables in training data are on a similar scale** is an example of  （**feature engineering**）
	* Feature engineering involves transforming raw data into features suitable for machine learning algorithms. 


61.  **QnA Maker => Kowledge base (PDF)**

	 * Content types include many standard structured documents such as **PDF, DOC, and TXT**.


62. Natural language processing (LP) is used for tasks such as **sentiment analysis, topic detection, language detection, key phrase extraction, and document categorization**

63. **Language Understanding (LUIS) is a cloud-based AI service, that applies custom machine-learning intelligence to a user's conversational,**.

64. **Named Entity Recognition (NER)**： used to extract dates, quantities, and locations from text.

	> The NER feature can identify and categorize entities in unstructured text. For example: people, places, organizations, and quantities.
 
65. **Personal data must be visible only to approve (Privacy and security)**

66. Read text in a large PDF document. For this you plan to use the **Computer Vision service.**

	* The Read API
	* Read API better suited for larger images. Additionally, it runs asynchronously so it will not block your application while it is running

67. **One aspect that may impair facial detection => Extreme angles**


68. Form Recognizer service to analyze receipts that you have scanned into JPG format images. What is the maximum file size of JPG file  => **50MB**

69. A score of 0.99 of sentiment analysis on a document using Language service.  => **The document is positive.**

	> Score values closer to 1 indicated a more positive sentiment where scores closer to 0 indicated negative sentiment

70. Which service should you use to create a knowledge base for bots? => **Question Answering**

71. When might you see NaN returned for a score in Language Detection? => **When the language is ambiguous**
