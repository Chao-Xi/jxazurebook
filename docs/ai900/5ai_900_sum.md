1. Data transformation modules
	* **Split Data**
	* Clean Missing Data
	* **Only Split Data and Clean Missing Data are data transformation modules**. 
	* Data transformation modules are used to prepare data before a machine learning experiment.

2. Anomaly Detector is an Azure Cognitive service API that is used to **identify anomalies in time-series data**. 
	* **This service helps identify problems early and detect issues**

3.  **Predict a continuous value,** you would use a **regression algorithm** to build your model. 
	* Classification algorithms are used to **predict discrete values or classes**, 
	* Clustering algorithms help **uncover patterns and organize data into associated clusters**.

4. **1 True positives**
	* 2 Flase positive
	* **3 False Negative**
	* 4 True Negative

5. **Azure QnA Maker as the knowledge base to power a bot using Azure Bot Service and build a web chatbot**. 

	> It is also possible to use Language Understanding (LUIS) to power a bot instead of QnA Maker or in addition to QnA Maker. 

6. **The term utterance is used to describe the user's question or command that is the input sent to a LUIS endpoint for analysis.**

7. Though **Azure Computer Vision services can identify a wide range of features in images, it will not work well if you need to identify domain-specific features**. 
	 * Instead, **Azure Custom Vision services is a no-code option that you can use to train and deploy a custom image classification model.**

8. **Accountability** : Implementing processes to ensure that decisions made
by AI systems can be overridden by humans.

9. **Azure Machine Learning to uncover data patterns and groupings**.  => Clustering

10. Azure Automated Machine Learning (AutoML) **(Regression / Classification / Time-series forecasting)**

11. **feature engineering is applied first to generate additional features**,
	* Feature engineering: **Splitting a date into month, day, and year fields** 
		* **Feature selection is done to eliminate irrelevant, redundant, or highly correlated features.**
		* **Feature selection**： Picking temperature and pressure to train a weather model

12. Fairness : **make sure that the system’s decisions don’t discriminate or run a gender, race, sexualorientation, or religion bias toward a group or individual.**
	* AI systems should NOT reflect biases from the data sets that are used to train the systems.

13. **Azure Bot Service**
	* When you create a bot using Azure Bot Service, **a webchat channel is automatically created for you**. 
	* There are also many other channels that you can associate with your bot, including an email channel and a Microsoft Teams channel.
	*  A bot service can be associated with one or more communication channels.

14. Before you deploy the model
	* **data preparation -> model training  ->  model evaluation**

15. Azure AutoML experiment
	*  **primary metric**
	*  A list of **blocked algorithms**

16.  Each tag in the response includes the **name of the tag and a confidence score that indicates how likely the tag correctly matches the content in the image**.
	* A confidence score is a number from 0 to 1, **with values closer to 1 indicating high confidence that the tag correctly identifies features in the image.** 

17.  You will need a **direct line channel to support speech output** for your web chatbot application.

18. In the most basic sense, **regression refers to prediction of a numeric target**
	* **Linear regression attempts to establish a linear relationship between one or more independent variables and anumeric outcome**, or dependent variable.

19. **Classification algorithms use labeled training data to build a model and predict the category (class) of unseen data items.** 
	> It is clustering algorithms, and not classification algorithms take unlabeled data and group the data into two or more categories (classes).


20. The label is the column you want to predict. The identified Features are the inputs you give the model to predict the Label.

21. **Overfitting happens when the model performs very well on the training dataset but does not perform well with unseen test data**.


22. Azure Machine Learning designer to publish an inference pipeline.
	* **the authentication key**
	* **the REST endpoint** 

23. **Azure Text Analytics API**
	* **A. language detection**
  * **B. named entity recognition** 

24. To perform real-time inferencing, you must deploy a pipeline as a real-time endpoint.
	* **Real-time endpoints must be deployed to an Azure Kubernetes Service cluster**.

25. The primary information included in a response from invoking a LUIS endpoint
	* **The top intent (best confidence score)**
	* **A list of all intents (and associated confidence score)**
	* **A list of entities extracted from the input question/command (utterance)**

26. Two metrics that you can use to evaluate a regression model? 
	* **A. coefficient of determination (R2)**
	* **C. root mean squared error (RMSE)**

27.  **Select Columns in Dataset** -> Clean Missing Data  -> **Split Data** -> Linear Regression -> Train Model -> score model

28. **evaluate a classification model**
	* **true positive rate**
	* **MAE, RMSE and R2 are metris for regression**

29. You can drag-and-drop **datasets and modules** onto the canvas.

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

35. Custom Vision service can be used only on **graphic files**.

36. natural language processing tasks （NLP)
	* **Filter: entity recognition**
	* **Assess: Sentiment Analysis**

37.  QnA Maker. Which file format can you use to populate the knowledge base?
	* **PDF, DOC, and TXT.**'

38. **Language Understanding (LUIS)** is a cloud-based AI service, that applies custom machine-learning intelligence to a user's conversational, **natural language text to predict overall meaning, and pull out relevant, detailed information.**

39. （NLP)  solution will analyze customer reviews and determine how positive or negative each review is.
	* B. sentiment analysis
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