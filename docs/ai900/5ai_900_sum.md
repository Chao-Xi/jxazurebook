1. Data transformation modules
	* **Split Data**
	* **Clean Missing Data**
		* **Only Split Data and Clean Missing Data are data transformation modules**. 
		* Data transformation modules are used to prepare data before a machine learning experiment.
		* **Cleaning missing data, normalizing data, or converting data from one file format to another**.

2. Anomaly Detector is an Azure Cognitive service API that is used to **identify anomalies in time-series data**. 
	* **This service helps identify problems early and detect issues**

3.  **Predict a continuous value,** you would use a **regression algorithm** to build your model. 
	* Classification algorithms are used to **predict discrete values or classes**, 
	* Clustering algorithms help **uncover patterns and organize data into associated clusters**.

4. **Confusion matrix**

	xxx | Predicted Positive  |   Predicted  Negative
------------- | ------------- | -------------
Actual True  | True Positive | True Negative
Actual False  | False Positive | False Negative


 
5. **Azure QnA Maker as the knowledge base to power a bot using Azure Bot Service and build a web chatbot**. 

	> It is also possible to use Language Understanding (LUIS) to power a bot instead of QnA Maker or in addition to QnA Maker. 

6. **The term utterance is used to describe the user's question or command that is the input sent to a LUIS endpoint for analysis.**
	* What is the term used to describe what the user might say to the application, in this case asking about the temperature in Boston?
		* **A. utterance**

	> Determining whether a review is positive or negative => **Natural language processing**

7. Though **Azure Computer Vision services can identify a wide range of features in images, it will not work well if you need to identify domain-specific features**. 
	 * Instead, **Azure Custom Vision services is a no-code option that you can use to train and deploy a custom image classification model.**

8. **Accountability** : Implementing processes to ensure that decisions made
by AI systems can be overridden by humans.
	* **Reliability and safety** - To build trust, it's critical that AI systems operate reliably, safely, and consistently under normal circumstances and in unexpected conditions.
	* **Privacy and security** - Provide consumers with information and controls over the collection, use, and storage of their data.

	> **To configure a new Azure Bot and connect with your QnA knowledge base**
	>
	> **QA authorization key / QnA endpoint hostname / QnA knowledge base ID**

9. **Azure Machine Learning to uncover data patterns and groupings**.  => Clustering

 > Computer vision = identify (object) letters
 >
 > **NLP = sentiment**
 >
 > Aomaly Detection = fraud
 >
 > **Machine Learning (regression) = predict**
 >
 > Analyzes customer product reviews and flags reviews that have a negative sentiment. Which Azure Cognitive Service => sentiment analysis => **Text Analytics API**
 >
 > **The **Text Analytics API** has the ability to take an input text document and return the predicted author's sentiment (positive, negative, or neutral).**
 
 * Types of machine learning problems are supported with Azure Automated Machine Learning (AutoML)
 	* **A. Regression / B. Classification / C. Time-series forecasting**


11. **feature engineering is applied first to generate additional features**,
	* Feature engineering: **Splitting a date into month, day, and year fields** 
	* **Feature selection is done to eliminate irrelevant, redundant, or highly correlated features.**
		* Feature engineering： Splitting a date into month, day, and year fields
		* Feature selection： Picking temperature and pressure to train a weather model

12. Fairness : **make sure that the system’s decisions don’t discriminate or run a gender, race, sexualorientation, or religion bias toward a group or individual.**
	* **Fairness：AI systems should NOT reflect biases from the data sets that are used to train the systems**
		* **Inclusiveness = accessible to all**
		* **Fairness = treat all without prejudice or bias**
	* **Transparency**： Automated decision-making processes must be recorded so that approved users can identify why a decision was made

13. **Azure Bot Service**
	* When you create a **bot using Azure Bot Services**, you need an **Azure Cognitive Service with natural language processing** to understand and respond to user input.
		* **The Language Understanding service (LUIS) would be the best option to integrate with the chatbot**
	* When you create a bot using Azure Bot Service, **a webchat channel is automatically created for you**. 
		* There are also many other channels that you can associate with your bot, including an email channel and a **Microsoft Teams channel**.
	*  A bot service can be associated with one or more communication channels.

14. Before you deploy the model
	* **data preparation -> model training  ->  model evaluation**

15. Azure AutoML experiment, following configuration values are specified for the experiment?
	*  **primary metric**
	*  A primary metric used to compare the results of individual experimental runs
	*  A list of **blocked algorithms**
	* **A list of blocked algorithms that should be excluded from the training runs**.

16.  Each tag in the response includes the **name of the tag and a confidence score that indicates how likely the tag correctly matches the content in the image**.
	* A confidence score is a number from 0 to 1, **with values closer to 1 indicating high confidence that the tag correctly identifies features in the image.** 

	

17.  You will need a **direct line channel to support speech output** for your web chatbot application.

18. In the most basic sense, **regression refers to prediction of a numeric target**
	* **Linear regression attempts to establish a linear relationship between one or more independent variables and anumeric outcome**, or dependent variable.

19. **Classification algorithms use labeled training data to build a model and predict the category (class) of unseen data items.** 
	> It is clustering algorithms, and not classification algorithms take unlabeled data and group the data into two or more categories (classes).
	* Classification algorithms can predict both binary and multi-class classification problems.



20. Apply automated ML when you want Azure Machine Learning to train and tune a model for you using the target metric you specify.
	* **The label is the column you want to predict. The identified Features are the inputs you give the model to predict the Label**.

21. **Overfitting happens when the model performs very well on the training dataset but does not perform well with unseen test data**.
	* **Overfitting** occurs when a model matches training data so closely that it doesn't generalize well to other data.


22. Azure Machine Learning designer to publish an inference pipeline.
	* **the authentication key**
	* **the REST endpoint** 
	
23. **Azure Text Analytics API**
	* **A. language detection**
  * **B. named entity recognition** 
  * Other Azure Cognitive Services:
  		* **Form Recognizer / Text Analytics / Anomaly Detection**
		* **Feature: user intent extraction,** **Service: Language Understanding (LUIS)**
		* **Feature: text to speech services**, Service: Text-to-Speech service
		* **Feature: text identification in an image**, Service: Computer Vision - Optical Character Recognition (OCR)


24. To perform real-time inferencing, you must deploy a pipeline as a real-time endpoint.
	* **Real-time endpoints must be deployed to an Azure Kubernetes Service cluster**.

25. The primary information included in a response from invoking a LUIS endpoint
	* **The top intent (best confidence score)**
	* **A list of all intents (and associated confidence score)**
	* **A list of entities extracted from the input question/command (utterance)**
	

	> The confidence score assigned to each intent is a value from 0 to 1, with values closer to 1 indicating greater confidence that the intent has been correctly identified

26. Two metrics that you can use to evaluate a regression model? 
	* **A. coefficient of determination (R2)**
	* **C. root mean squared error (RMSE)**
	
	> F1 score also known as balanced F-score or F-measure is used to evaluate a classification model.
	> 
	> aucROC or area under the curve (AUC) is used to evaluate a classification model.

27.  **Select Columns in Dataset** -> Clean Missing Data  -> **Split Data** -> Linear Regression -> Train Model -> score model

28. **Evaluate a classification model**
	* **true positive rate**
	* **MAE, RMSE and R2 are metris for regression**

29. You can drag-and-drop **datasets and modules** onto the canvas in Azure Machine Learning designer.
	* create a training dataset and validation dataset from an existing dataset in in Azure Machine Learning designer =>  Split Data Module

	> Use the Split Data module to divide a dataset into two distinct sets.

30. To invoke a deployed machine learning model, you will need the **REST endpoint URL for the deployed model and the authentication key.**

31. In Azure Machine Learning, a **pipeline** is a workflow you build to manage the data and modules used to train and evaluate a machine learning model.

32. two actions are performed during the data ingestion and data preparation stage of an Azure Machine Learning process
	* C. Combine multiple datasets.
	* E. Remove records that have missing values

33. The Azure Cognitive Services six principles of responsible AI are:

	* Fairness – Limit Biases
	* Reliability and Safely – ops, resist manipulating, use of regresses testing
	* Privacy and security- secure data provide security controls
	* Inclusiveness- AI available to everyone i.e., disabled ppl
	* Transparency- fully aware of the limitations over AII in use
	* Accountability- follow governments and frameworks meet legal and ethical standards

34. When you set up QnA Maker, **you create a knowledge base that includes a set of question and answer pairs**. 
	* **key piece of information do you need to call your QnA Maker service from a client application => The REST endpoint URL for your QnA Maker service**

35. Custom Vision service can be used only on **graphic files**.

36. natural language processing tasks （NLP)
	* **Filter: entity recognition**
	* **Assess: Sentiment Analysis**

37.  QnA Maker. Which file format can you use to populate the knowledge base?
	* **PDF, DOC, and TXT.**'

38. **Language Understanding (LUIS)** is a cloud-based AI service, that applies custom machine-learning intelligence to a user's conversational, **natural language text to predict overall meaning, and pull out relevant, detailed information.**

39. （NLP)  solution will analyze customer reviews and determine how positive or negative each review is.
	* **sentiment analysis**
	* Sentiment Analysis is the process of determining whether a piece of writing is positive, negative or neutral.

40. **Utterances are input from the user that your app needs to interpret.**

41. You need to ensure that the model detects when utterances are outside the intended scope of the model.
	* **B. Add utterances to the None intent**

42.  **Inclusiveness = accessible to all**
	*  **Fairness = treat all without prejudice or bias**

43. **Knowledge mining - You can use Azure Cognitive Search’s knowledge mining results and populate the knowledge base of your chatbot**.

44. Automated machine learning, also referred to as automated ML or AutoML, **is the process of automating the time consuming, iterative tasks of machine learning model development**.

45. Apply automated ML when you want Azure Machine Learning to train and tune a model for you using the target metric you specify. The label is the column you want to predict.

46. **Accuracy is simply the proportion of correctly classified instances. It is usually the first metric you look at when evaluating a classifier.** 
	* However, when the test data is unbalanced (where most of the instances belong to one of the classes), or you are more interested in the performance on either one of the classes, accuracy doesn't really capture the effectiveness of a classifier.

47. Azure Machine Learning designer lets you **create machine learning models** by
	 * **Adding and connecting modules on a visual canvas.**
	 * **You can customize but only using Python and R code for Azure Machine Learning designer**

48. Automated machine learning provides you with the ability to include
custom Python scripts in a training pipeline.   (No)
	* **Automated machine learning implements machine learning solutions
without the need for programming experience.  (Yes)**
		* A) **In Automated ML , you cannot insert Python code**.
	* Automated machine learning provides you with the ability to visually
connect datasets and modules on an interactive canvas.   (No)
		* C) in Automated ML, though you can select Data but not modules... No Canvas is used in Auto ML

49. Which two components can you drag onto a canvas in Azure Machine Learning designer?
	* **dataset / module**


50. **Fairness: AI systems should be designed and built to avoid unfair bias.**
	* e.g: **A facial recognition system should accurately identify people of all ethnicities and genders**.
	* Reliability and Safety:AI systems should be reliable and safe.
		* e.g: Self-driving cars should be designed to operate safely in various road conditions and handle unexpected situations.
	* Privacy and Security: AI **systems should be built with privacy and security in mind.**
		* **Protecting user data and preventing unauthorized access to AI models**
	* Inclusiveness: AI systems should be designed for everyone and avoid unintended bias.
		* Developing speech recognition systems that accurately recognize a wide range of accents and dialects.
	* Transparency: AI systems should be understandable and explainable.
		* e.g: Providing clear explanations for decisions made by AI models, such as loan approval or job candidate selection.
	* Accountability: People should be held accountable for the technology they create.
		* e.g: Establishing clear guidelines for AI development and deployment, including roles and responsibilities.

		
51. Ensuring that the **numeric variables in training data are on a similar scale** is an example of  （**feature engineering**）
	* Feature engineering involves transforming raw data into features suitable for machine learning algorithms. 

	> One crucial step is to ensure that numeric variables have a similar scale. This process, often called normalization or standardization, prevents features with larger scales from dominating the model's learning process.

52. Azure Automated Machine Learning (AutoML) 
	*  A. **AutoML is used to automatically select the best machine learning algorithm for your dataset**.
	*  **B. You can choose to use either the Python SDK or a no-code user interface to build an AutoML experiment.**

53. **Accuracy： is the calculated probability of a correct image classification**.

54.  Assigning classes to images before training a classification model is **labeling**

55. Applications are a common consumer of Azure Cognitive Services' QnA Maker
	* **A. social media applications**
	* **B. chatbots**

56. There are two that are **not features offered by the Azure Computer Vision service**:
	* **These capabilities do exist with other Azure Cognitive Services.**
		* Train a custom model to identify domain-specific entities in an image
		* Extract text and key/value pairs from documents
57. Two actions are performed during the **data ingestion and data preparation stage** of an Azure Machine Learning process?
	* **ingestion ==> data transformation/manipulation**
		* C. Combine multiple datasets.
		* E. Remove records that have missing values

58. **Label** must be numeric for **regression**
	* **labels are not required => Clustering**
	* **Classification - may or may not be numeric, not must**

59. **Azure Cognitive Services: QnA knowledge base**
	* **A data set that includes question and answer pairs**.

60. Determine which pixels in an image are part of a bear.
	* **Semantic segmentation**
	* Semantic segmentation achieves fine-grained inference by making dense predictions inferring label for every pixel, so that pixel is labeled with the class of its enclosing object or regio

*  **verification** - Face verification: Check the likelihood that** two faces belong to the same person and receive a confidence score**.
*  **Face detection:**  - Detect one or more human faces along with attributes such as: age, emotion, pose, smile, and facial hair, including 27 landmarks for each face in the image.

61  The Azure Cognitive Services **Face service** provides facial recognition and analysis capabilities.

It can detect and recognize faces in images, identify specific individuals, and analyze facial attributes such as age, gender, emotions, and more.

62 **Computer Vision feature** can you use to **generate automatic captions for digital photographs**

* **Describe the images.**
* **Describe images with human-readable language Computer Vision** can analyze an image and generate a human-readable phrase that describes its content

63 Form Recognizer applies advanced machine learning to accurately extract text, key-value pairs, tables, and structures from documents.

64 Build an app that will read recipe instructions aloud to support users who have reduced vision.

65 A speech synthesiss solution： **Azure Text to Speech is a Speech service feature that converts text to life like speech**.

* A.an automated voice that reads back a credit card number entered into a telephone by using a numeric keypad
* D.an AI character in a computer game that Speaks audibly to a player

66  Filter => **Entity recognition** / Assess => **Sentiment Analysis**

67 **QnA Maker => nowledge base (PDF)**

Content types include many standard structured documents such as **PDF, DOC, and TXT**.

68 You need to extract key terms from the reports to generate summaries. => **natural language processing**

69 Natural language processing (LP) is used for tasks such as **sentiment analysis, topic detection, language detection, key phrase extraction, and document categorization**

70 **Language Understanding (LUIS) is a cloud-based AI service, that applies custom machine-learning intelligence to a user's conversational,** natural language text to predict overall meaning, and pull out relevant, detailed information.

71: make the written press releases of your company available in a range of languages. => **Translator**

* The Language service can identify in which language text is written. （Yes)
* **The Language service can detect handwritten signatures in a document.  => Handwritten detection is part of OCR (Optical Character Recognition).**
* The Language service can identify companies and organizations mentioned in a document （Yes)

72 Named Entity Recognition (NER) is the ability to identify different entities in text and categorize them into pre-defined classes or types such as: person, location, event, product, and organization.

73 Natural language processing (NLP) is used for tasks such as **sentiment analysis, topic detection, language detection, key phrase extraction, and document categorization**

74  **Natural language processing to process text from a Microsoft news story => entity recognition**

Named Entity Recognition (NER) is the ability to identify different entities in text and categorize them into pre-defined classes or types such as: person, location, event, product, and organization

75 **Named Entity Recognition (NER)**： used to extract dates, quantities, and locations from text.
 
 The NER feature can identify and categorize entities in unstructured text. For example: people, places, organizations, and quantities.
 
76 **Personal data must be visible only to approve (Privacy and security)**

77 **Evaluating whether to use a basic workspace or an enterprise workspace** in Azure Machine Learning.

* A. Use a graphical user interface (GUI) to run automated machine learning experiments.
* C. Use a graphical user interface (GUI) to define and run machine learning experiments from Azure Machine Learning designer

78 **The QnA Maker service can determine the intent of a user utterance. (No)**

79 **Azure Bot Service can import frequently asked questions (FAQ) to question and answer sets. （No）**

> The QnA Maker service creates knowledge base, not question and answers sets.

80 **Bot from a frequently asked questions (FAQ)  => QnA Maker**

81 calculated probability of a correct image classification => **Confidence**

82 Ensuring that the numeric variable in training data are on a similar scale  => **Feature selection**

* a) **Azure Machine Learning enables you to train a predictive model from the existing data.**
* b) The Azure Bot Service provides a platform for conversational Al.
* c) The Language Service is used for understanding and analyzing text and creating intelligent applications.


83 **Inclusiveness is about how AI should bring benefits to all parts of society, regardless of physical ability, gender, sexual orientation, ethnicity, or other factors**.

Fairness is about developing models and applications without incorporating any bias based on gender, ethnicity, or **other factors that might result in an unfair advantage or disadvantage to specific groups**

* **Feature engineering**: The process of creating new features from raw data to increase the predictive power of the learning algorithm
* **Feature selection**: The process of **selecting the key subset of features to reduce the dimensionality of the training problem**.

84 create a training pipeline for a classification model.

**Create an inference pipeline from the training pipeline**

85 You want to use **automated machine learning to train a regression model with the best possible R2 score**. How should you configure the automated machine learning experiment

**a) Set the Primary metric to R2 score**

86 **Splitting data into two sets enables you to compare the labels that the model predicts with the actual known labels in the original dataset.**

87 Use the Computer Vision service to **identify the location** of individual items in an image. Which of the following features should you retrieve?  =>  Objects

88 valuate Model module and note that it has an AUC score of 0.3.

* The model performs worse than random guessing.
* 0.5: As good as random choice

89 Image classification model that achieves less than satisfactory evaluation metrics.

* **Add more images to the training set**


Natural language processing

90 Determining whether a review is positive or negative  **Natural language processing**

91 Read text in a large PDF document. For this you plan to use the **Computer Vision service.**

* The Read API
* Read API better suited for larger images. Additionally, it runs asynchronously so it will not block your application while it is running

92 Detect human faces in an image. How does the service indicate the location of the faces it detects?

**A set of coordinates for each face, defining a rectangular bounding box around the face**

> The location of detected faces are indicated by a coordinates for a rectangular bounding box


93 **One aspect that may impair facial detection => Extreme angles**

94 Face service to identify named individuals

Use Face to create a group containing multiple images of each named individual, and train a model based on the group

95 **Both the Form Recognizer resource and Cognitive Services** resource provide access to the Form Recognizer service

96 Form Recognizer service to analyze receipts that you have scanned into JPG format images. What is the maximum file size of JPG file  => **50MB**

The maximum file size for the pre-built receipt model is 50 MB

97 **Fairness**: The system must not discriminate based on gender and race

98 A score of 0.99 of sentiment analysis on a document using Language service.  => **The document is positive.**

Score values closer to 1 indicated a more positive sentiment where scores closer to 0 indicated negative sentiment

99 Which service should you use to create a knowledge base for bots?

**Question Answering**

100 When might you see NaN returned for a score in Language Detection?

**When the language is ambiguous**

101 list of processes

* Data Preparation
* Model training
* Model evaluation

102 

* b) Implement a process of Al model validation as part of the software review process  => **Reliability and Safety
*** c) Establish a risk governance committee that includes members of the legal team, members of the risk management team, and a privacy officer   =>  **Privaey and security.**