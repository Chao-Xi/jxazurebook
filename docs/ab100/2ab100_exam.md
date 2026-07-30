# AB-100 Agentic AI Business Solutions Architect

## Plan AI-powered business solutions

### Testlet 1

Case study

**Overview**

Contoso, Ltd. is a high-tech manufacturing company that uses Microsoft Dynamics 365 Finance. Dynamics 365 Supply Chain Management, and Dynamics 365 Commerce for its North American operations. The company designs and develops innovative products that have many patents and proprietary technologies. The patents and engineering designs are closely guarded secrets.

Contoso executives want to integrate and adopt AI solutions to help scale the company in preparation for an anticipated period of rapid growth.

The company has multiple legal entities and Azure subscriptions that will be used in the adopted AI solutions.

**Requirements**

**AI Adoption**

The following executives will have specific responsibilities in the overall AI adoption:


- Chief Technology Officer (CTO): Select one Dynamics 365 Finance, Dynamics 365 Supply Chain Management or Dynamics 365 Commerce prebuilt AI agent and one custom Microsoft Copilot Studio AI agent to prioritize and deploy during the initial AI adoption phase.

- Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.

- Chief Financial Officer (CFO): Analyze the return on investment (ROI) for the AI agents being deployed. Chief Information Security Officer (CISO): Discover and inventory AI resources for auditing.

- Chief Executive Officer (CEO): Ensure that all solutions adhere to industry-standard responsible AI practices.


All AI initiatives and agents will have a detailed business use case, a defined audience profile, and an estimated ROI that will compare the cost savings of the current process against the estimated costs of using the new AI solutions.

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

Depending on which high-priority AI agents are identified, its agent capabilities must be previewed in a discovery meeting with the relevant business operation stakeholders.


**Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

- The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

- The custom AI agent will be accessible from within Microsoft Teams.

- The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description.

- The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

- The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

- The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

- The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

**Analysis, Reporting, and Troubleshooting**

Contoso has identified the following analysis, reporting, and troubleshooting requirements:

The CISO will audit all the AI solutions monthly for compliance and security.

The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.

### QUESTION 1 

Which two components in the custom AI agent design should the CFO evaluate in the quarterly agent analysis? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. the GPT models used for the agent

B. the average characters in a chat message

C. the agent orchestration method

D. the average session time per agent


-----


C, D


The CFO’s quarterly analysis is focused on comparing:

* estimated ROI

* actual measured efficiencies
 
* actual adoption


The case study explicitly says the CFO will use the Copilot Studio agent usage estimator . For that kind of analysis, the most relevant design components are the ones that affect how the agent is used operationally and how interactions are processed.

**Quarterly Estimated ROI (Forecasting)**

Use the Microsoft Agent Usage Estimator to model quarterly expectations before each period.

Orchestration Method Input: Select between Classic (logic-driven) or Generative (AI-driven) orchestration. Generative orchestration typically consumes more credits but reduces manual development time.

Session Time Variables: Model the average session time per agent to estimate total message volume. The estimator uses this to project credit consumption based on interaction depth.

Target ROI Formula: Define the benchmark as:

Estimated Savings = (Projected Deflection × Human Agent Cost) - Estimated Credit Cost.


Why C. the average session time per agent is correct:

Average session time is a practical usage and adoption indicator. It helps the CFO understand how much users are engaging with the agent and whether the agent is reducing effort efficiently or creating long, costly interactions.

Why D. the agent orchestration method is correct:

The orchestration method affects how the agent handles requests, invokes tools, uses knowledge sources, and consumes resources. Since this can influence both operational efficiency and cost, it is important for ROI analysis.

Why the other options are not the best fit:


### QUESTION 2 

What should you configure for the custom AI agent?

A. AI-assisted evaluators

B. classic orchestration

C. generative orchestration

D. Azure OpenAI reasoning models


------


Correct Answer: C

**Explanation/Reference:**

**Explanation:**

Generative orchestration is the most appropriate choice for this Microsoft Dynamics 365 AI agent solution. This selection directly addresses your requirements for a low-code, conversational, and interconnected agent ecosystem within the Microsoft Power Platform and Dynamics 365 environment.

**Why Generative Orchestration?**

Generative orchestration (available in Microsoft Copilot Studio) is specifically designed to move away from rigid, trigger-phrase-based logic toward a flexible, intent-based model.

**Mapping to Your Requirements** 

Intent-Based Selection: Unlike "Classic" orchestration which relies on exact trigger phrases, generative orchestration uses Natural Language Understanding (NLU). It selects the correct topic or "sub-agent" based on a description of the purpose, allowing for the conversational flow you requested.

**Low-Code Integration:** Copilot Studio is the primary low-code tool for Dynamics 365. It provides native connectors to Supply Chain Management (SCM) data and can be embedded directly into the SCM interface or deployed to Microsoft Teams.

**External Business Logic**: It can trigger Power Automate flows or API calls to execute business logic stored in external databases or legacy systems, bringing that data back into the conversation.

**Product Specifications**: By using Generative Answers, the agent can crawl "existing technologies" like SharePoint libraries, internal wikis, or SCM data tables to answer complex spec questions without manual topic authoring.

Incorrect:

**[Not A]**

AI-Assisted Evaluators are testing and diagnostic tools, not runtime execution engines.

You would use these to measure how well your agent is performing, but they cannot be the agent or manage the logic flow.

**[Not B]**

Classic Orchestration is entirely dependent on trigger phrases.

It creates a "command-and-control" feel rather than the fluid, conversational interaction you are looking for. 

It also scales poorly when trying to connect multiple agents.


**[Not D]**

Azure OpenAI Models (Reasoning Models) while powerful, this is a pro-code path (API-heavy).

Using raw Azure OpenAI models would require significant custom development, missing the "low-code" requirement. While Generative Orchestration uses these models under the hood, the orchestration layer itself is what manages the "which agent to call" logic.

**Scenario: Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

*-> The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

The custom AI agent will be accessible from within Microsoft Teams.

The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description


*-> The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

*-> The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

*-> The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

## Plan AI-powered business solutions


**Background** 

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

As part of the cloud migration, Fabrikam will adopt an AI-first approach to its business solutions and implement AI solutions, wherever possible, to streamline operations.

**Problem Statements**

Fabrikam's infrastructure currently relies on various on-premises systems that require sales executives to use corporate computers with physical keyboards to access business information during customer interactions. Mobile phones cannot be used for these purposes, as the systems depend on keyboard input. As a result, the sales executives spend a lot of time using keyboards to search for data on several disparate systems and file servers, rather than focusing on the customers. This affects the customer experience.

Fabrikam stakeholders are concerned that users will be hesitant to adopt AI. If the AI initiatives are NOT adopted, cost savings will never be realized. Additionally, funding for future AI initiatives will depend on demonstrating an increase in AI adoption month over month. As the AI agent initiative for the sales team will be the first for Fabrikam, the rapid adoption of the agent is a high priority

**Planned Initiatives** 

General

Fabrikam management has prioritized AI-driven projects to improve efficiency, customer engagement, and responsible AI adoption. The current application infrastructure is on-premises and must be migrated to the cloud to support the adoption of these technologies.

**Infrastructure Migration**

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Sales Cycle Enablement**

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Use low-code development to create a single AI agent that has Dataverse as its core component. Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

Replace the previous proprietary software with Dynamics 365 Sales to track sales cycles and customer interactions.

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.


Requirements 

**Infrastructure Migration**

Fabrikam has identified the following infrastructure migration requirements:

Azure must be used for all future infrastructure workloads.

The company must follow Microsoft-recommended methodologies for infrastructure migration to the cloud.

Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.


**Sales Cycle Enablement**

Fabrikam has identified the following requirements for sales cycle enablement:

The final AI agent must follow Microsoft recommendations for a conversational user experience.

A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

Detailed telemetry must be logged for the first created AI agent to help troubleshoot and optimize the agent during the initial AI agent adoption process.

Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

Sales managers must report on the adoption of the AI agent to key Fabrikam stakeholders on a monthly basis.

Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.

### QUESTION 1

Which framework should you use to meet the AI agent requirements for the sales cycle enablement? To answer, select the appropriate options in the answer area.

Hot Area:

Answer Area

**For Microsoft Copilot Studio best practices:**

- the ALM Accelerator for Microsoft Power Platform  
- Microsoft Cloud Adoption Framework for Azure  
- Microsoft Power Platform Well-Architected framework  
- Success by Design  

**For conversational user experiences:**

- the ALM Accelerator for Microsoft Power Platform  
- Microsoft Cloud Adoption Framework for Azure  
- Microsoft Power Platform Well-Architected framework  
- Success by Design


Explanation/Reference:

Explanation:

**Box 1: the ALM Accelerator for Microsoft Power Platform For Microsoft Copilot Studio best practices**

Using the ALM Accelerator for Microsoft Power Platform is a recommended approach for managing the lifecycle of a low-code AI agent (Copilot Studio) that relies on Dataverse. It enables source control, versioning, and automated deployment of AI agents to ensure they follow Microsoft's best practices.

**Box 2: Microsoft Power Platform Well-Architected framework For conversational user experience**

Utilizing the Microsoft Power Platform Well-Architected framework for a low-code AI agent (built in Copilot Studio) with Dataverse as the core data component ensures the solution is secure, reliable, and provides a high-quality conversational user experience (CUX). The framework helps align the agent with Microsoft’s best practices for responsible AI, efficiency, and user satisfaction.



###  Scenario: Sales Cycle Enablement

Fabrikam has identified the following requirements for sales cycle enablement:

*-> The final AI agent must follow Microsoft recommendations for a conversational user experience.

#### Sales Cycle Enablement

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle

*-> Use low-code development to create a single AI agent that has Dataverse as its core component.

#### QUESTION 2

Which framework should you use for the infrastructure migration?

A. Microsoft Cloud Adoption Framework for Azure

B. Success by Design

C. Microsoft Power Platform Center of Excellence (CoE)

D. Microsoft Power Platform Project Setup Wizard


**Correct Answer: A**

Explanation/Reference:

For migrating a legacy on-premises infrastructure to Microsoft Dynamics 365 Sales with Dataverse as the Single Source of Truth (SSOT), the recommended framework is the Microsoft Cloud Adoption Framework for Azure (CAF), specifically utilized in conjunction with the Data Management Framework (DMF) for Dynamics 365.

This combined approach ensures a structured transition by focusing on both the strategic adoption of cloud technology and the technical, granular migration of data.

Recommended Framework: Microsoft Cloud Adoption Framework (CAF) The CAF provides a holistic structure to ensure the migration is secure, compliant, and aligned with business goals.

Plan: Assess legacy data, prioritize workloads, and define the SSOT requirements.

Ready: Set up the Dataverse environment (landing zone) and configure security (Azure Active Directory/ Microsoft Entra ID).

Adopt (Migrate): Perform the technical migration of data using ETL (Extract, Transform, Load) processes.


### Scenario: Infrastructure Migration

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Background**

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

Reference:

Plan AI-powered business solutions

#### QUESTION 1

A company uses Microsoft Dynamics 365 Sales to manage leads that are stored in a Microsoft Dataverse table named Lead and use non-standard terminology and custom columns.

You need to configure business terms in the Lead table so that Microsoft Copilot controls can summarize the leads efficiently. The solution must minimize administrative effort.

How should you configure the business terms?

A. Combine all the fields into one custom field.

B. Map the field display names as business terms.

C. Add the schema names as business terms.

D. Create new business terms for each field.

------

Correct Answer: B

Explanation/Reference:

To configure Microsoft Copilot to efficiently summarize leads with non-standard terminology and custom columns in Microsoft Dynamics 365 Sales, you must map these unique fields to business terms within the Sales AI Glossary in Microsoft Copilot Studio.

Note:

To map your field display names as business terms:

1. Access Copilot Studio: Open Microsoft Copilot Studio and select the environment containing your Dynamics 365 Sales instance.

2. Select the Sales Agent: Navigate to Agents and select the agent named Copilot in Dynamics 365 Sales (formerly Sales Copilot Power Virtual Agents Bot).

3. Navigate to Knowledge: Under the Knowledge section, select the SalesSpecificQnA knowledge source.

4. Add Glossary Entries:

Go to the Glossary tab.

Term: Enter the non-standard or custom field display name (e.g., your custom business term).

Description: Define how this term relates to the Dataverse schema. This helps Copilot understand the logic behind the custom column.

5. Configure Synonyms: In the Synonyms section, map your custom field to alternative names that sellers might use in natural language queries (e.g., mapping "Custom Revenue" to "Opportunity Revenue").

6. Publish Changes: Select Publish to apply these mappings, allowing Copilot to use the newly defined terms when generating lead summaries.

#### QUESTION 2

You are designing two Microsoft Copilot Studio agents named Agent1 and Agent2. Each agent must meet the following requirements:

Each agent must use a standard model.

Each agent must NOT use generative orchestration.

Agent1 must support simple and short phrases for a given topic.

Agent2 must integrate with Microsoft Dynamics 365 Contact Center voice channel.

You need to recommend language models for the agents.

What should you recommend for each agent? To answer, drag the appropriate language models to the correct agents. Each language model may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

Select and Place:

**Language models**

- Azure Language in Foundry Tools
- Azure OpenAI
- Conversational language understanding (CLU)
- Natural language understanding (NLU)
- Natural language understanding + (NLU+)

**Answer Area**

- Agent1:
- Agent2:

---------

Box 1: Natural Language Understanding (NLU)

Box 2: Natural Language Understanding + (NLU +)


Explanation/Reference:


**Box 1: Natural Language Understanding (NLU)**

Agent1 must support simple and short phrases for a given topic.

For a Microsoft Copilot Studio agent that must not use generative orchestration and requires support for simple, short trigger phrases, the best choice is the Classic NLU (Natural Language Understanding) model.

When you disable generative orchestration (also known as "Generative mode" or "Generative AI" orchestration), the agent reverts to Classic orchestration. In this mode, the agent relies on predefined trigger phrases to map user input directly to specific topics.


**Box 2: Natural Language Understanding + (NLU +)**

Agent2 must integrate with Microsoft Dynamics 365 Contact Center voice channel.

For a Microsoft Copilot Studio agent using classic orchestration (no generative orchestration) and integrating with the Dynamics 365 Contact Center voice channel, the best language model is NLU+.

Why NLU+ is the Best Choice While standard agents offer three "classic" Natural Language Understanding (NLU) options, NLU+ is specifically designed for high-performance, enterprise-grade scenarios like voice channels.

Note:

Comparison of Classic Models

| Model | Best For | Key Characteristic |
|:----|:---:|:---:|
| NLU | Simpler bots | Uses 5-20 phrases per topic; basic RegEx/List entities. |
| NLU+  | Voice / Enterprise | **Optimizes speech recognition** and handles large training sets with high accuracy. |
| CLU | Advanced devs | Integrates with Azure Conversational Language Understanding for external model management. |


### QUESTION 3

A company uses Microsoft Dynamics 365 finance and operations apps.

The company plans to use Microsoft Copilot in-app help and guidance to generate responses for internal business processes.

You need to add an additional knowledge source for the business processes. The solution must NOT add new topics to the Copilot agent for the finance and operations apps.

Which knowledge source should you add?


A. Microsoft Dataverse

B. a public website

C. Azure AI Search

D. a file upload


-------


Correct Answer: D Section: (none)


Explanation/Reference:

Explanation:

To add an additional knowledge source for internal business processes to the Microsoft Copilot in-app experience for Dynamics 365 finance and operations apps—without creating new topics—you should add File Uploads (such as PDF, Word, or text documents) to the "Copilot for finance and operations apps" agent in Copilot Studio.


### QUESTION 4

A company has an AI business solution.

You need to extend the solution so that Microsoft 365 Copilot can invoke external logic hosted in Azure services.

What should you include in the solution?

A. Microsoft Copilot Studio skills

B. Microsoft Power Platform connectors

C. custom engine agents

-----

Correct Answer: B Section: (none)

Explanation/Reference: 

Explanation:


To enhance an AI business solution with Microsoft 365 Copilot and integrate external logic hosted in Azure, you should use Copilot Studio to create Actions. These actions act as plugins that allow Copilot to invoke external services through Power Platform components.

**Implementation Strategy**

Azure Logic Hosting: Host your external logic in Azure using services like Azure Functions or Azure Logic Apps. These provide the API endpoints that Copilot will ultimately call.


*-> Power Platform Connector: Create a Custom Connector in the Power Platform to wrap your Azure service's API. This connector acts as the bridge, translating Copilot's requests into API calls your Azure logic understands.

Copilot Studio Integration: Within Microsoft Copilot Studio, add the custom connector as a Tool or Action. This makes the logic discoverable and invokable by Microsoft 365 Copilot.

Deployment: Deploy the action through the Microsoft 365 admin center under Integrated Apps to make it available to users in Teams or other Microsoft 365 apps.

**Key Components *->**


Connector: Wraps the Azure API using an OpenAPI definition or Postman collection.

Plugin/Action: Defines how Copilot identifies when to use the connector based on user prompts.

Authentication: Ensure the connector is configured with appropriate security (e.g., OAuth 2.0) to safely access your Azure resources.



### QUESTION 5

You need to design a shared prompt library that will be used across multiple business units. The solution must meet the following requirements:

* Ensure consistent AI responses with reusable formats. 
* Support governance and version control.
* Minimize administrative effort.
* Minimize ongoing costs.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area:

Answer Area

Ensure consistent AI responses:

- Delegate department-specific prompt templates.
- Define standardized prompt templates.
- Maintain a prompt history.

Support governance and version control:

- Define standardized prompt templates.
- Store prompts in a Git repository.
- Categorize prompts by business function.


------


**Box 1: Define standardized prompt templates**

**Box 2: Store prompts in a Git repository**


Explanation/Reference:

Explanation:


**Box 1: Define standardized prompt templates**

Ensure consistent AI responses with reusable formats.

To ensure consistent AI responses across multiple business units, your shared prompt library should be built on a foundation of standardized, modular templates that balance centralized governance with unitspecific flexibility.

**Box 2: Store prompts in a Git repository**

Support governance and version control.

Storing AI prompts in a Git repository allows you to treat prompts as "first-class artifacts" with the same accountability and lifecycle management as source code. For an enterprise solution serving multiple business units, this approach provides the necessary structure for governance, collaboration, and scalability.

1. Repository Organization for Business Units

2. Governance and Version Control Workflow Branching Strategy: Use a dedicated branch for each experiment or new use case (e.g., feature/ marketing-seo-v2) to ensure the main branch remains stable.

Pull Requests (PRs): Mandate PRs for all changes to enable peer reviews. PRs should include descriptions of changes, linked issues, and test results.

Semantic Versioning: Apply tags (e.g., v1.0.1) to mark significant updates, allowing business units to pin their applications to specific, stable prompt versions.

Auditability: Git maintains a full historical record of who changed a prompt, what was modified, and when it occurred.

### QUESTION 6

A company has a Microsoft Foundry project that uses a single agent and a single prompt to complete a series of tasks.

The agent encounters the following issues:

* It frequently produces incomplete results. 
* It struggles with domain-specific reasoning. 
* Agent response times are remarkably slow.


You need to recommend a solution to improve the overall performance and accuracy of the agent.

What should you include in the recommendation? 

To answer, drag the appropriate actions to the correct requirements. Each action may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Actions**

- Add a grounding data source.
- Add a prebuilt connector.
- Move to a multi-agent architecture.
- Upgrade to a larger generative AI model.

Answer Area

- To improve performance: [______]
- To improve accuracy: [______]

Action

- [______]
- [______]



------

**Box 1: Move to a multi-agent architecture**

**Box 2: Add a grounding data source**


**Explanation/Reference:**

**Box 1: Move to a multi-agent architecture To improve performance**

> To improve performance

Moving to a multi-agent architecture in Azure AI Foundry is a highly effective strategy to overcome performance bottlenecks, as single-agent systems often struggle with long-running tasks, leading to high latency and timeout issues. By decomposing complex tasks into smaller, specialized subtasks, you can improve response times through parallel processing and targeted tool usage.

Incorrect:

**Upgrade to a larger generative AI model** 

To address slow response times in your Microsoft Foundry agent, upgrading to a larger generative AI model is one option, but it may increase latency in some scenarios due to higher processing demands. Instead, a combination of prompt optimization, model selection, and architectural changes in Microsoft Foundry is recommended to improve performance.

**Box 2: Add a grounding data source**

> To improve accuracy

To improve the performance of an agent in a Microsoft Foundry project experiencing incomplete results, weak domain reasoning, and high latency, adding a grounding data source is a highly effective strategy. Grounding connects the Large Language Model (LLM) to verified external data, ensuring responses are accurate, contextual, and less likely to hallucinate.


### QUESTION 7

A financial services company uses Microsoft Dynamics 365 Finance.

Currently, the company's support staff manually reviews customer transaction histories to detect potential fraud cases before escalating the cases.

You need to recommend an automation solution for the review process. The solution must ensure that escalations reach a human analyst for final decision making. What should you recommend?

A. Deploy an autonomous agent that closes non-fraud cases automatically.

B. Use Microsoft 365 Copilot in Word to automatically finalize fraud detection policies.

C. Configure a task agent to generate fraud risk scores for the human analyst to review.

D. Export the data to a data lake for analysis in Microsoft Power BI.

-----

**Correct Answer: C**

**Explanation/Reference:**

Explanation:

To automate the fraud review process in Microsoft Dynamics 365 Finance while ensuring a human analyst makes the final decision, you should configure the Dynamics 365 Fraud Protection (or integrated Copilot AI agents) to generate risk scores and route high-risk transactions to a manual review queue.

Here is the configuration approach to achieve this:

1. Implement AI-Driven Risk Scoring: Utilize Dynamics 365 Fraud Protection, which uses AI to analyze customer transaction history and assign a risk score (0-999) to each transaction.
2. Define Rules for Escalation: Set up fraud rules in the system to determine which transactions require human intervention. For instance, define a threshold (e.g., a "Minimum score value") where transactions with high fraud probability are automatically flagged.
3. Establish Manual Review Queues: Configure the Manual Review tool to create queues for suspected fraudulent transactions, allowing human analysts to review the AI-generated risk score and transaction history, such as customer behavior, for final, informed decision-making.
4. Use Copilot/AI Agents for Monitoring: Enable AI agents to continuously monitor financial data, such as invoice, payment, and vendor data, and generate alerts for unusual patterns before escalating.


This setup, particularly through the Manual Review workspace, allows for an automated, intelligent, and scalable approach to fraud management.


### QUESTION 8

A company plans to deploy a Microsoft Copilot Studio agent that will analyze historical business data to predict customer behavior.

The data is currently stored in an Azure SQL database, flat files, APIs, and logs.

You need to organize the data into a format that can be used as a knowledge source in Copilot Studio.

What should you include in the solution?

A. Azure AI Search

B. Azure Data Lake Storage

C. Azure Cosmos DB

D. Azure Translator in Foundry Tools

-----

Correct Answer: A

**Explanation/Reference:**

Microsoft Copilot Studio agents can analyze customer behavior by leveraging business data from Azure SQL, files, and APIs by using Azure AI Search as a knowledge source. By importing and vectorizing this structured and unstructured data into an Azure AI Search index, the agent can perform semantic, meaning-based searches to retrieve context-relevant information.


### QUESTION 9

A retail company plans to deploy Microsoft Copilot Studio agents to support:

- Microsoft Dynamics 365 Commerce scenarios.
- A Microsoft Power Apps inventory management solution.

You need to recommend a solution to organize product catalog data as a consistent source for multiple AI systems.

What should you recommend?

A. Let each agent scrape product details from Microsoft SharePoint Online libraries.

B. Store the product catalog data in a separate custom table for each agent.

C. Configure prompts to pull product details from the PDFs of external vendors.

D. Centralize the product catalog data in Microsoft Dataverse and expose the data to both agents.


-------


**Correct Answer: D**

Explanation:

In the scenario described, centralizing product catalog data in Microsoft Dataverse is the recommended architectural approach to ensure consistency across multiple AI systems. Dataverse acts as a unified "knowledge network" that allows different agents to share a single source of truth for both structured and unstructured data.

**Key Benefits of Centralizing in Dataverse**

**Cross-App Consistency**: By storing the catalog in Dataverse, both the Dynamics 365 Commerce agent and the Power Apps inventory management agent access the exact same records. This prevents data silos where inventory levels or product descriptions might drift apart between systems.

**Native Copilot Studio Integration:** You can directly add Dataverse tables as knowledge sources in Microsoft Copilot Studio. This allows agents to use Retrieval-Augmented Generation (RAG) to answer queries grounded in your live product data.

**Security & Governance:** Dataverse enforces Role-Based Access Control (RBAC), ensuring that agents only interact with data they are authorized to see, based on the user's existing permissions.

**Automated Updates:** You can use Power Platform Dataflows to ingest and synchronize catalog data from external sources into Dataverse, keeping the information fresh for all connected AI agents.


### QUESTION 10


A company has a portfolio of AI initiatives at different stages of development.

You need to recommend a structured approach to evaluating the return on AI investment (ROAI) across all the initiatives. The solution must balance immediate results with long-term values and strategic innovations.

What should you include in the recommendation?

A. a simple cost and benefit analysis

B. a horizon-based framework

C. the internal rate of return (IRR) function

D. a prioritization grid

----

**Correct Answer: B**

**Explanation/Reference:**


In this scenario, a horizon-based framework is best for evaluating the return on AI investment (ROAI). While a prioritization grid is excellent for immediate tactical choices (e.g., effort vs. impact), a horizonbased framework is specifically designed to balance diverse timeframes—mapping immediate efficiency gains alongside the long-term strategic and transformational value required for a comprehensive Microsoft AI portfolio.

**Why the Horizon-Based Framework Wins**

This approach categorizes AI initiatives into three distinct "horizons," allowing you to measure different types of value across the development lifecycle:

**Horizon 1: Core Operations (Immediate ROI)**

Focuses on extending current capabilities for rapid results, such as using Microsoft Copilot to automate routine coding tasks or IT support.

**Horizon 2: Adjacent Opportunities (Mid-Term Value)**

Targets growth by expanding into new areas related to your core, such as developing agentic platforms or AI-driven specialized tools that build on existing infrastructure.

Comparison for This Scenario

**Horizon 3: Transformational Innovation (Long-Term Strategy)** 

Invests in "future-forward" innovations that may have uncertain immediate returns but offer massive strategic upside or business model reimagination.


| Feature    | Priority Grid (e.g., 2x2 Matrix) | Horizon-Based Framework    |
|---|---|---|
| **Primary Goal**    | Selecting "what to do first" based on constraints. | Managing a balanced portfolio of value over time.    |
| **Best For**    | Tactical, sprint-level feature ranking.    | Strategic roadmap and investment allocation.    |
| **ROAI Focus**    | Often emphasizes "quick wins" and high-certainty projects. | Validates high-risk, high-reward innovations as essential for long-term health. |


Recommendation: Use the Microsoft AI Maturity Model to baseline your current state, then apply the Horizon-Based Framework to structure your ROAI evaluation. This ensures you don't starve long-term innovation in favor of only "low-hanging fruit" efficiency projects.


### QUESTION 11

You need to recommend a Microsoft Power Platform business solution that consolidates data from multiple internal and external data sources. The solution must meet the following requirements:

- Provide the data as a centralized source for multiple AI systems, including Microsoft Copilot Studio agents, Dynamics 365 applications, and external AI models.
- Support built-in data classification and protection policies.
- Provide data for grounding and analytics.

What should you include in the recommendation?


A. Microsoft Dataverse

B. Azure Data Lake Storage

C. a Microsoft Power BI semantic model

D. Azure Cosmos DB


----

**Correct Answer: A**

Explanation/Reference:

Microsoft Dataverse is the ideal foundational component for this scenario, serving as the secure, centralized data platform for the Microsoft Power Platform, Dynamics 365, and AI integrations. By using Dataverse, the business can consolidate, protect, and utilize data across Copilot Studio agents, Dynamics 365 applications, and analytics tools, addressing all stated requirements.

Here is how Dataverse fulfills the requirements in the described scenario:

Centralized Source: It serves as the primary data storage and management engine for Power Platform, Dynamics 365, and Copilot Studio. It consolidates data into a unified data model (Common Data Model), ensuring consistency across internal and external sources.

Internal & External Integration: Dataverse supports data integration from diverse sources using tools like Power Query, Azure Data Factory, and virtual tables that map external data in real-time.

Data Classification & Protection: It features built-in, enterprise-grade security.

**AI Grounding & Analytics:**

- Grounding: It acts as the knowledge source for Copilot Studio agents, providing the necessary business context for accurate generative AI responses.

- Analytics: It integrates natively with Power BI for reporting and can synchronize with Microsoft Fabric or Azure Synapse for large-scale data modeling and advanced analytics.


### QUESTION 12 

A company plans to deploy an AI-based customer service app that will autonomously manage interactions, escalate complex cases, and learn from historical ticket data.

You need to perform a return on AI investment (ROAI) analysis of the app deployment. The solution must ensure that the analysis is accurate.

What should you do first?

A. Establish the AI performance metrics.

B. Conduct an AI market benchmarking study.

C. Model the customer experience.

D. Identify and quantify all the development, deployment, and operating costs.


-----

Correct Answer: D


**Explanation/Reference:**

Explanation:

To conduct a robust Return on AI Investment (ROAI) analysis for your Microsoft-based AI customer service application, you must first categorize and quantify three distinct cost phases: Development, Deployment, and Operations. For a system capable of managing complex escalations and learning from historical data, your project aligns with "Advanced" or "Agentic" AI profiles.


1.Development Costs (Upfront Investment)

This phase covers the creation of the core AI logic, custom integrations, and data preparation.


2.Deployment Costs (One-Time Setup) 

These are the costs to move the application from a development environment to a live production state.

**3.Operating & Maintenance Costs (Recurring)**

Ongoing expenses are critical for ROAI as they impact the net gain over time.


### QUESTION 13

You are designing end-to-end test scenarios for a business solution that uses Microsoft Dynamics 365 Sales and Dynamics 365 Finance.

You need to ensure that the business solution meets the following test requirements:

- Properly exchanges data between the Dynamics 365 apps 
- Aligns with defined user workflows and business processes

Which type of testing should you use for each requirement? 

To answer, drag the appropriate testing types to the correct requirements. Each testing type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


NOTE: Each correct selection is worth one point.


Select and Place

**Testing types**

- Drift
- Exploratory
- Integration
- Performance
- User acceptance

**Answer Area**

- Properly exchanges data between the Dynamics 365 apps
- Aligns with defined user workflows and business processes


-----

**Box 1: Integration**

**Box 2: User acceptance**

Box 1: Integration 

Properly exchanges data between the Dynamics 365 apps

For a project involving Dynamics 365 Sales and Dynamics 365 Finance, the best testing type to verify proper data exchange is Integration Testing, specifically within a System Integration Testing (SIT) phase.


**Integration Testing** 

This is the primary method for validating that data flows correctly between Sales (Customer Engagement) and Finance (Finance & Operations).


Purpose: Ensures seamless information flow, communication protocols, and data synchronization. Example Scenario: Creating a new Account in D365 Sales and verifying it automatically triggers the creation of a Customer in D365 Finance via Dual-write.

**Box 2: User acceptance**

Aligns with defined user workflows and business processes


The best testing type to ensure a Microsoft Dynamics 365 solution aligns with defined user workflows and business processes is User Acceptance Testing (UAT).

While other testing phases (like Functional or Integration) verify that the system works technically, UAT is the final "road test" where the business confirms that the solution actually supports their day-to-day operations.


### QUESTION 14

A company has a Microsoft 365 tenant in Canada and multiple Microsoft Power Platform environments in Canada and the United States.

The company plans to deploy a Microsoft Copilot Studio agent to the Canadian environment that will use:

Microsoft Dataverse data stored in Canada A connector that connects to an Azure OpenAI instance in the United States

You need to ensure that the agent adheres to data residency and data movement policies before being deployed.

What should you do?

A. Ensure that the data processed by Azure OpenAI is stored in the United States.

B. From the Microsoft Purview portal, validate the Data loss prevention settings.

C. Migrate the tenant to the United States.

D. Ensure that cross-region data movement is enabled for the Canadian environment and connector dependencies.

-----

Correct Answer: D

**Explanation/Reference:**

Explanation:

**Manage Cross-Geo Data Movement Settings**

Because your agent in Canada connects to Azure OpenAI in USA, data will leave your primary geography.

**Explicit Opt-in**: 

You must navigate to the Power Platform Admin Center and explicitly allow data movement across regions for generative AI features.

**Regional Scope:** 

If this toggle is off, Copilot features requiring the external Azure OpenAI instance will be disabled to protect residency.


Security Assurance: Microsoft does not log or retain prompt/response data during this cross-region transit for the purpose of training foundation models.


### **QUESTION 15**

A company has a Microsoft Copilot Studio agent for customer support. You are reviewing and validating the following prompts:

- A prompt that has instructions to "help the customer as best you can"

- A prompt that helps retrieve product information from a knowledge base You need to ensure that the agent delivers consistent and accurate responses.

What should you do for each prompt? To answer, select the appropriate options in the answer area. NOTE: Each correct selection is worth one point.

Hot Area:


**A prompt that has instructions to "help the customer as best you can"**:

- Add filler words to make the prompt sound more natural and conversational.
- Keep the prompt vague to enable model flexibility.
- Rewrite the prompt with clear and task-specific instructions.

**A prompt that helps retrieve product information from a knowledge base:**

- Add several open-ended questions to give the model broader context.
- Use responses with only reference sources and limit the response scope.
- Remove the knowledge source so that the model responds freely with general product information.


--------

**Box 1: Rewrite the prompt with clear and task-specific instructions.**

**Box 2: Use responses with only reference sources and limit the response scope.**

Explanation/Reference:

Explanation:

**Box 1: Rewrite the prompt with clear and task-specific instructions.**


To ensure a Microsoft Copilot Studio agent delivers high-quality support, you must move beyond vague instructions like "help as best you can." Generative AI requires constraints, structured data, and persona definitions to remain consistent.

Here is how to optimize your agent for accuracy and reliability:

Refine the System Prompt A vague prompt leads to "hallucinations" (made-up facts). Replace the general instruction with a Persona and Boundary script.

Define the Persona: "You are a professional Support Specialist for [Company Name]. Your tone is empathetic, concise, and helpful."

Set Boundaries: "Only answer questions based on the provided uploaded documents. If the answer is not in the documentation, politely state you don't know and offer to connect to a human."

Establish Steps: "Always greet the user, identify their core issue, and provide a step-by-step solution."


**Box 2: Use responses with only reference sources and limit the response scope.**

To ensure your Microsoft Copilot Studio agent remains grounded, accurate, and avoids "hallucinations," you must configure the System Prompt to enforce strict grounding. This tells the AI to act only as a retrieval tool rather than a general-purpose assistant.

Restrict Search Scope:

In the Generative Answers node, ensure "Search only selected sources" is toggled on.

Upload specific PDFs, Manuals, or SharePoint folders rather than using the entire public web


### QUESTION 16

You are designing a testing solution for Microsoft Copilot Studio agents.

You need to validate prompt engineering best practices to ensure that the agents generate accurate and contextually relevant responses.

Which prompt validation techniques and metrics should you include in the solution? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

Prompt validation techniques:

- Exclude domain-specific terminology from the prompts.
- Use prompts that have varied phrasing.
- Use only simple, one-word prompts.

Metrics:


- The number of words generated per response
- Response relevance and accuracy
- The response generation time


------

**Box 1: Use prompts that have varied phrasing**

**Box 2: Response Relevance and accuracy**


**Box 1: Use prompts that have varied phrasing**

Here is why this technique is superior to the others for validating prompt engineering best practices: Robustness and Generalization: Using varied phrasing (synonyms, different sentence structures) tests whether the agent understands the underlying intent rather than just matching keywords. This ensures the agent is not brittle and can handle real-world user queries that vary in phrasing.

Best Practice Validation: Microsoft encourages testing agent responses by iterating and refining prompts. Testing with variations helps identify if a prompt is too rigid or if it correctly captures the context.

For a comprehensive validation strategy, this technique is typically paired with Batch Testing, where you upload a set of varied test cases to evaluate the AI's consistency and accuracy.

Incorrect:

* Exclude domain-specific terminology This is incorrect. Effective prompting often requires using domain-specific terms to ensure the AI understands the specialized context.

* Use only simple, one-word prompts This is ineffective. Simple prompts lack the context required for high-quality, accurate responses.

**Box 2: Response Relevance and accuracy**

By using Response Relevance and Accuracy as your primary metrics, you ensure the agent remains grounded in its knowledge sources while remaining flexible to user intent.


### QUESTION 17

A company has two Microsoft Power Platform environments named Dev1 and Prod1. A Microsoft Copilot Studio agent named Agent1 is built into a solution in the Dev1 environment.

You plan to deploy Agent1 to Prod1.

You need to make Agent1 available to the users in Prod1. The solution must minimize administrative effort.

What should you do?

A. Share Agent1 with the users in Prod1.

B. Export the solution as an unmanaged solution and import the solution into Prod1.

C. Export the solution as a managed solution and import the solution into Prod1.

D. Create a new Copilot Studio agent in Prod1 by replicating the configuration of Agent1.


**Correct Answer: C**

**Explanation/Reference:**

Explanation:

To deploy a Microsoft Copilot Studio agent to a second environment while minimizing administrative work, you should use managed solutions and Power Platform Pipelines (or manual export/import if pipelines are not configured).

Follow these steps to move and share the agent effectively:

1. **Prepare the Solution (Source Environment)**

Since your agent is already in a solution, ensure all its dependencies are included to avoid "missing component" errors during import.

2. **Export and Import** 

To minimize manual labor, use a Managed Solution for the target environment. Managed solutions are easier to update or remove later and prevent accidental direct edits in production.


### QUESTION 18

A company has a Microsoft Power Platform environment that contains Microsoft Dataverse data.

You create a Microsoft Copilot Studio agent named Agent1 that processes the Dataverse data.

You discover that Agent1 fails to return relevant or accurate results.

You need to improve the quality and reliability of data grounding.

What should you do?

A. Retrain Agent1.

B. Verify and cleanse the Dataverse data.

C. Use an adaptive card in Agent1.

D. Add example user inputs to the training data of Agent1.


**Correct Answer: B**

**Explanation/Reference:**


To improve the reliability and accuracy of a Microsoft Copilot Studio agent grounded in Dataverse, you must focus on Dataverse data preparation, which includes cleaning, structuring, and enriching the data to ensure the agent retrieves relevant information. When Copilot fails to return accurate results, it is often due to poor data quality (garbage in, garbage out), excessive, unstructured data, or misconfigured search indexing.

### QUESTION 19 

A company plans to deploy a Microsoft Copilot Studio agent to enhance customer support.

The company stores customer data across ServiceNow, Microsoft Dynamics 365 Finance, Dynamics 365 Supply Chain Management, and Excel files in SharePoint Online.

You need to recommend a solution to ensure that the agent can deliver accurate and timely responses.

What should you recommend?

A. Implement a model router for query handling.

B. Create custom prompts.

C. Implement Microsoft Power Platform connectors.

D. Enable incremental indexing in Azure AI Search.

-----

**Correct Answer: D**

Explanation/Reference:

To deploy a Microsoft Copilot Studio agent that delivers accurate responses from ServiceNow, Dynamics 365 (F&O), and SharePoint, you should centralize your data in Azure AI Search and implement incremental indexing to capture updates in real-time or on a schedule.

Immediate Solution: Enabling Incremental Indexing Incremental indexing ensures only new or modified records are processed, reducing latency and cost. High-Water Mark Detection: Configure your indexers to use a "high-water mark" policy based on a last_modified timestamp field from your sources (ServiceNow/Dynamics).

Change Tracking: For ServiceNow and Dynamics 365, use the native change tracking features in their respective connectors to signal the indexer which records have changed.

SharePoint Incremental Crawling: The Azure AI Search SharePoint indexer (currently in preview)

automatically supports incremental crawling, detecting changes in Excel files by tracking the file's metadata.


Incorrect:

**[Not C] Microsoft Power Platform connectors does not cover all the data sources.**

Architecture Overview Your agent will use three primary integration methods:

Knowledge Base Connectors: For high-volume unstructured data (SharePoint, ServiceNow KB).

Power Platform Connectors: For structured, real-time data (Dynamics 365, ServiceNow Incidents).

Virtual Entities: For native integration with Dynamics 365 Finance & Supply Chain.


### QUESTION 20 

A manufacturing company wants to deploy an agent that will automate supplier invoice processing.

You are designing a solution to evaluate the financial implications of the deployment. The company is especially concerned about budget overruns.

You need to ensure that the solution considers the total cost of ownership (TCO), the expected savings from using automation, and whether to extend the existing AI capabilities.

What should you include in the design?

A. a break-even analysis only

B. adopting prebuilt agents to reduce the deployment time

C. training a custom model

D. a return on AI investment (ROAI) analysis


-----


Correct Answer: D

**Explanation/Reference:**

Explanation:

This design plan outlines the financial and operational framework for deploying a Microsoft-based AI agent for supplier invoice processing. By leveraging current industry benchmarks and Microsoft’s own agentic AI frameworks, this plan focuses on maximizing Return on AI Investment (ROAI) while mitigating the risk of budget overruns.


### QUESTION 21 

A company has a Microsoft Power Platform solution that contains the following components:

Microsoft Dataverse tables A Microsoft Power BI workspace named WS1 A canvas app named App1 that uses Dataverse A Power BI semantic model that connects to Dataverse by using DirectQuery

You plan to use generative AI to provide answers to queries based on a subset of corporate data.

You need to ensure that the data is available as a grounding data source for AI systems.

What should you do?

A. Populate a Dataverse table.

B. Share WS1. 

C. Endorse the semantic model.

D. Export the semantic model.


-----

Correct Answer: C


Explanation/Reference:

Explanation:

To ensure data is available as a grounding source for generative AI systems within this Power Platform solution, you should endorse the semantic model.

While populating a Dataverse table and sharing the workspace are necessary for general data accessibility, endorsing the Power BI semantic model (through certification or promotion) specifically helps generative AI systems like Power BI Copilot and Microsoft 365 Copilot prioritize and identify it as a high-quality, trusted source for grounding answers.

Why Endorsement is Key for Grounding 

Generative AI systems use grounding to reduce "hallucinations" by anchoring their responses in real corporate data. In the Power BI ecosystem:

**Discovery:** Endorsement makes the semantic model more discoverable across the organization.

**Prioritization:** Copilot often prioritizes endorsed (Promoted or Certified) models when searching for relevant data to answer a natural language query.

**Trust:** 

It signals to both the AI and the end-user that the data in this DirectQuery-connected model is verified and authoritative for business queries.



### QUESTION 22 

A company plans to implement an AI business solution for a consumer goods company.

You need to create agents that meet the following requirements:

Orchestrate the sales order fulfillment and shipping of goods to customers. Analyze historical data and trends to replenish stock.

Which type of agent should you use for each requirement? To answer, drag the appropriate agent types to the correct requirements. Each agent type may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


Select and Place

**NOTE:** Each correct selection is worth one point.

**Agent types**

- Autonomous
- Prompt-and-response
- Task

**Answer Area**

- Orchestrate the sales order fulfillment and shipping:
- Analyze historical data and trends:


----

**Box 1: Autonomous**

**Box 2: Autonomous**


**Box 1: Autonomous**

Orchestrate the sales order fulfillment and shipping of goods to customers.

An Autonomous Agent is the best choice for orchestrating sales order fulfillment and shipping in a consumer goods (CPG) environment.

While prompt-and-response agents are good for simple queries and task-based agents are good for linear workflows, an autonomous agent can manage the "many-to-many" variables inherent in supply chains without constant human intervention.

Why Autonomous is the Best Fit An autonomous agent acts as a reasoning engine rather than a static script. In fulfillment, it excels because it can:

Handle Exceptions: If a warehouse is out of a specific SKU, the agent can independently look for the next closest facility or suggest a substitute product.

Multi-Step Reasoning: It can check credit limits, verify inventory, calculate shipping dates, and trigger a logistics pickup in one cohesive flow.

Proactive Problem Solving: If a weather delay affects a shipping route, the agent can reroute the order and notify the customer before a human even spots the issue.

**Box 2: Autonomous**

Analyze historical data and trends to replenish stock.

For a consumer goods company managing stock replenishment, an Autonomous Agent is the best fit.

Stock replenishment requires a system that proactively monitors inventory, analyzes trends in real-time, and takes action (like drafting purchase orders) without waiting for a human to ask. While "Task" and "Prompt-and-response" agents have roles in analysis, they lack the "always-on" orchestration needed for a supply chain.

Why an Autonomous Agent Wins Proactive Replenishment Unlike prompt-based systems, an autonomous agent in Microsoft Copilot Studio can be triggered by business events—such as a low-stock alert in your ERP—rather than a user's prompt. It can:

Continuously Monitor: Watch inventory levels across multiple warehouses 24/7.

Auto-Draft Orders: Apply vendor rules and lead times to create draft purchase orders for approval.

Sense Disruptions: Adjust supply chain settings before a problem escalates based on real-time data.


### QUESTION 23 

A company has an AI agent that automates the review of customer feedback stored in a cloud database.

You plan to generate monthly reports from the agent's output to provide insights into customer sentiment and guide product development and marketing.

You need to ensure that the data ingested by the agent is clean and suitable for the intended use.

What should you do to prepare the data?

A. Create a workflow in Microsoft Power Automate.

B. Identify and address biased data.

C. Create an agent flow in Microsoft Copilot Studio.

D. Sort the database by customer last name.

----

**Correct Answer: B**


### QUESTION 24

A company is designing a Microsoft Power Platform solution to reduce the manual steps of a business process by deploying an existing AI model.

You need to calculate the return on AI investment (ROAI) by identifying the metadata and telemetry of the solution.

What should you use?

A. Microsoft Power Platform admin center

B. Success by Design

C. the Business value toolkit

D. Microsoft Cloud Adoption Framework for Azure

-----

**Correct Answer: C**

Explanation/Reference:


Explanation:

The Business Value Toolkit is the correct resource to use for calculating Return on AI Investment (ROAI) for a Microsoft Power Platform solution.

Calculating ROAI with the Business Value Toolkit The Business Value Toolkit helps organizations move beyond simple automation by providing structured templates and analytics to justify AI investments.

Metadata Identification: It captures environment-specific data, such as the number of automated flows, the type of AI models used (e.g., AI Builder), and the business units involved.

Telemetry Integration: It leverages usage data from the Power Platform admin center and Application Insights to track real-time performance, such as execution frequency and success rates.

ROI Metrics: It transforms technical telemetry into financial outcomes, such as:

- Time saved: Hours recovered from manual data entry or processing.

- Error reduction: Improvements in accuracy compared to manual steps.

- Cost avoidance: Savings from reduced reliance on specialized manual labor.

Incorrect:

[Not D] While the Cloud Adoption Framework (CAF) for Azure provides broad strategic guidance for AI adoption, the Business Value Toolkit is specifically designed to quantify the impact of low-code and AI solutions using solution metadata and telemetry.


### QUESTION 25

A company has a Microsoft Power Platform environment.

You need to build two agents named Agent1 and Agent2. The solution must meet the following requirements:

Agent1 must be extendable by using the Semantic Kernel and must connect to multiple business apps and APIs.

Agent2 must connect directly to data stored in Microsoft Dataverse and must be embeddable in a Microsoft Power Apps canvas app.

What should you use to build each agent? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area

Answer Area

**Agent1:**

- Microsoft Foundry
- Azure Logic Apps
- Copilot in Power Apps
- Microsoft Copilot Studio

**Agent2:**

- Microsoft Foundry
- Azure Logic Apps
- Copilot in Power Apps
- Microsoft Copilot Studio


-------

Explanation/Reference:

**Box 1: Microsoft Copilot Studio**

**Box 2: Microsoft Copilot Studio**


Explanation/Reference:

Explanation:

**Box 1: Microsoft Copilot Studio**

Agent1 must be extendable by using the Semantic Kernel and must connect to multiple business apps and APIs.

To build a Microsoft AI agent that integrates Semantic Kernel and connects to various business systems within the Power Platform, you will use Microsoft Copilot Studio as your primary orchestration hub.

By combining these technologies, you bridge the gap between "low-code" conversational interfaces and "pro-code" LLM orchestration. The Architecture To reach your goal, you will follow a multi-tier integration strategy: Microsoft Copilot Studio: Acts as the "Frontend" and dialog manager.

Semantic Kernel (SDK): Acts as the "Brain" hosted in an Azure function or web app.

Power Platform Connectors: Act as the "Hands" to talk to 1,200+ apps.

Custom APIs: Connected via Semantic Kernel "Plugins" or Copilot Studio "Actions."

**Box 2: Microsoft Copilot Studio**

Agent2 must connect directly to data stored in Microsoft Dataverse and must be embeddable in a Microsoft Power Apps canvas app.

To build a Microsoft AI agent that connects to Dataverse and is embedded in a Power Apps canvas app, you need to use Microsoft Copilot Studio as the primary development platform.

Technical Requirements To get started, ensure your environment meets these core prerequisites:

Copilot Studio Solution: Your environment must have version 2.0.0.649.1 or higher.

Dataverse Database: The environment must contain a provisioned Microsoft Dataverse database.

Admin Settings: A tenant administrator must enable "Publish Copilots with AI features" in the Power Platform admin center.

Unmanaged Customizations: Ensure that the "block unmanaged customizations" setting is disabled in your environment.

Incorrect:

* Azure Logic Apps While Logic Apps can connect to Dataverse, they are a workflow orchestration tool (similar to Power Automate) and do not provide the conversational AI interface or the embedding capabilities required for an "agent."

* Microsoft Foundry This is not a standard component of the Power Platform for building AI agents; it usually refers to internal Microsoft data management tools or unrelated external products.

* Copilot in Power Apps This refers to the AI assistant that helps makers build apps or helps users query data through a predefined side pane, but it is not the tool used to build a standalone, customizable agent that you embed yourself.

Copilot in Power Apps is an AI-powered assistant, driven by Azure OpenAI Service, that enables users to create, modify, and manage business applications using natural language instead of code. It allows developers of all skill levels to instantly build apps, design data models, and generate complex formulas by simply describing their needs in everyday language.

### QUESTION 26

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Cost Management + Billing

B. Microsoft Fabric SKU Estimator

C. Total Cost of Ownership (TCO) Calculator

D. Azure Reservations


-----

Correct Answer: C

Explanation/Reference:

Explanation:

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report The calculator generates a detailed report comparing your current costs against Azure.


### QUESTION 27

You need to recommend a Microsoft Power Platform solution for customer support. The solution must include AI capabilities in Microsoft Power Automate and must meet the following requirements:

Use a centralized workspace for AI models.

Generate short overviews from large amounts of unstructured text, such as case notes or transcripts, without requiring additional training or coding.

What should you include in the recommendation for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

### Answer Area

* **Use a centralized workspace:**
  * An Microsoft Foundry hub
  * Azure OpenAI Foundry
  * Microsoft Copilot Studio
  * Microsoft Dataverse

* **Generate short overviews:**
  * An AI Builder prebuilt model
  * An AI Builder prebuilt prompt
  * Azure OpenAI
  * GitHub Copilot
  * Microsoft Copilot in Power Automate


------


Box 1: Azure AI Foundry

Box 2: An AI Builder prebuilt model


**Box 1: Azure AI Foundry Use a centralized workspace for AI models.**

Integrating Azure AI Foundry with Microsoft Power Automate provides a powerful, centralized environment for managing the AI models that drive your customer support project. This combination allows you to leverage enterprise-grade generative AI while maintaining governance through a unified hub.

Core AI Capabilities in Power Automate Power Automate can use AI Foundry models to transform standard support flows into intelligent, context- aware processes.

Intelligent Email Responders: Automatically analyze incoming support emails to determine sentiment, urgency, and intent.

Ticket Summarization: Use GPT models to condense long customer conversation histories for human agents.

Contextual Routing: Extract key entities (like product names or order IDs) to route tickets to the correct specialized team.

Multi-Agent Orchestration: Coordinate complex support tasks—like checking a database, drafting a reply, and updating a CRM—using centralized AI logic.

Incorrect:

* Microsoft Foundry Hub While Microsoft Foundry Hubs (part of Azure AI Foundry) are used for large-scale, professional-grade AI development, AI Builder is the specific low-code tool designed to integrate seamlessly into Microsoft Power Automate.


**Box 2: An AI Builder prebuilt model** 

Generate short overviews from large amounts of unstructured text, such as case notes or transcripts, without requiring additional training or coding.

To generate short overviews from large amounts of unstructured text in Power Automate without additional training, you should use the AI Builder "Summarize text" prebuilt model.

Key Features of the Summarize Model Zero Training Required: Works immediately out of the box with Microsoft’s pre-trained logic.

Unstructured Data: Handles case notes, long emails, and meeting transcripts effectively.

Low Code: Can be added to a Power Automate flow as a single "action" step.

Customizable Length: Allows you to specify if you want a brief summary or a more detailed overview.


### QUESTION 28 


A company uses Microsoft Dynamics 365 Finance for accounts payable and customer debt recovery.

You are designing an AI finance process that meets the following requirements:

Provides AI-driven details to help staff identify overdue vendor invoices and outstanding balances

Helps staff reduce how long it takes to review overdue invoices and payment history You need to recommend which Microsoft Copilot features to include in the design.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


### Answer Area

* **Help identify vendor overdue invoices and outstanding balances:**
  * Agent management
  * AI Summaries with Copilot
  * The Account Reconciliation agent
  * The Supplier Communication agent

* **Reduce how long it takes to review overdue invoices and payment history:**
  * Analyze demand plans with Copilot
  * Collections coordinator summary
  * The Account Reconciliation agent
  * The Supplier Communication agent


-----

Box 1: The Account Reconciliation Agent

Box 2: Collections coordinator summary


Box 1: The Account Reconciliation Agent 


Provides AI-driven details to help staff identify overdue vendor invoices and outstanding balances In Microsoft Dynamics 365 Finance, the Account Reconciliation agent and Copilot for Finance provide a powerful AI-driven ecosystem to manage overdue vendor invoices and customer debt recovery. These agents shift your team from reactive manual checking to proactive, exception-based management.

The Account Reconciliation Agent This agent automates the high-volume task of matching subledger transactions to the general ledger, specifically for Accounts Payable (AP) and Accounts Receivable (AR).

Automated Matching: Continuously monitors and reconciles transactions throughout the month rather than waiting for period-end.

Exception Identification: Automatically flags discrepancies, such as voucher amount mismatches or unmatched entries, for staff review.

AI-Suggested Actions: Using Microsoft Copilot, the agent suggests the most likely resolution for each exception, such as posting a correction or reaching out to a vendor.

Efficiency: Reduces the time spent on manual spreadsheet-based reconciliations, allowing staff to focus on resolving the "why" behind overdue balances


Box 2: Collections coordinator summary


Helps staff reduce how long it takes to review overdue invoices and payment history

To reduce the time spent reviewing overdue invoices and payment history in Microsoft Dynamics 365 Finance, you need the Collections Coordinator Summary feature powered by Copilot.

This AI-driven process automates the synthesis of customer financial data, allowing staff to move directly from review to action without manual data digging.


### QUESTION 29

A company has an AI agent that automates the review of customer feedback stored in a cloud database.

You plan to generate monthly reports from the agent's output to provide insights into customer sentiment and guide product development and marketing.

You need to ensure that the data ingested by the agent is clean and suitable for the intended use.

What should you do to prepare the data?

A. Ensure that the size of the database does not exceed 100 GB.

B. Translate the data into a single language.

C. Identify and address biased data.

D. Sort the database by customer last name.


------

Correct Answer: C

Explanation/Reference:

Explanation:

Correct:

* Identify and address biased data.

To ensure that the customer feedback ingested by your Microsoft AI agent is clean and suitable for monthly sentiment reports, the most effective action is to identify and address biased data.Data bias in sentiment analysis can lead to skewed reports that misrepresent customer satisfaction or ignore the needs of specific demographic groups.‘


Incorrect:

* Create a workflow in Microsoft Power Automate

* Create an agent flow in Microsoft Copilot Studio.

* Ensure that the size of the database does not exceed 100 GB.

* Sort the database by customer last name.


### QUESTION 30

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Total Cost of Ownership (TCO) Calculator

B. Azure Reservations

C. Azure pricing calculator

D. Azure Monitor

----


Correct Answer: C

Explanation/Reference:

Explanation:

Correct:

Azure pricing calculator (Best choice) The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice).


Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.

Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. 

For a complex AI solution involving.

* Total Cost of Ownership (TCO) Calculator (Second best choice)

While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. 

It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best)

Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. 

Cost Management + Billing does post-deployment tracking.


A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. This granular data is essential for calculating the Return on AI Investment (ROAI) for specific departments or the entire organization.

Incorrect


* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. 


It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance.


* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform.

* **Azure pricing calculator**

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership (TCO) Calculator

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI 

To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload

Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions

Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report

The calculator generates a detailed report comparing your current costs against Azure.


### QUESTION 31 

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?


A. Azure savings plans

B. Microsoft Fabric SKU Estimator

C. Cost Management + Billing

D. Azure Monitor


----


Correct Answer: C 

Explanation/Reference:

Correct:

* Azure pricing calculator (Best choice) The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice).

Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. For a complex AI solution involvin

* Total Cost of Ownership (TCO) Calculator (Second best choice) While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best) Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. Cost Management + Billing does post-deployment tracking.

A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. 


This granular data is essential for calculating the the Return on AI Investment (ROAI) for specific departments or the entire organization.


Incorrect:

* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. 


It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance

* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform


Note:

* Azure pricing calculator

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership

(TCO) Calculator To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI 

To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload

Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions

Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report

The calculator generates a detailed report comparing your current costs against Azure.

### QUESTION 32 

A company has an Azure environment that supports multiple business units.

The company plans to implement an AI solution that will perform sentiment analysis on customer product reviews.

You need to evaluate the potential cost of the solution to support return on AI investment (ROAI) analysis.

What should you use?

A. Azure Reservations

B. Microsoft Fabric SKU Estimator

C. Anomaly Detection in Azure Cost Management

D. Azure pricing calculator

----

Correct Answer: D

Explanation:

* Azure pricing calculator (Best choice)

The best tool to evaluate the potential cost of a new AI solution to support ROI analysis is the Azure pricing calculator.

Why Azure Pricing Calculator is BestProactive Estimation: It is specifically designed to estimate the costs of Azure services before they are deployed.

Granular Planning: It allows you to select specific services (e.g., Azure AI Language, Cognitive Services, Azure Machine Learning), define usage patterns, regions, and tiers to create a detailed cost estimate.

Scenario Comparison: You can create different scenarios (e.g., comparing different language models or usage volumes) to estimate the impact on ROAI

**Comparison of Tools Azure Pricing Calculator: Estimates costs for new, un-deployed projects. (Best Choice**）

Total Cost of Ownership (TCO) Calculator: Compares on-premises infrastructure costs against Azure, typically used for large-scale migration strategies, not specific AI service modeling.Cost Management + Billing: Monitors and analyzes actual, real-time spending on already deployed resources. For a complex AI solution involvin

* Total Cost of Ownership (TCO) Calculator (Second best choice)

While Cost Management + Billing is essential for tracking actual spend once a solution is running, the TCO Calculator is specifically designed for the pre-implementation phase to support Return on AI Investment (ROAI) analysis. It allows you to estimate and compare the potential costs of moving a workload to Azure —including labor, networking, and storage—against an existing process or alternative solution.

* Cost Management + Billing (Third best)

Azure pricing calculator and Total Cost of Ownership (TCO) Calculator are both better than Cost Management + Billing, as they evaluate the potential cost and support a Return on AI Investment (ROAI) analysis before the solution is built, you need to estimate future expenses based on expected usage. Cost Management + Billing does post-deployment tracking.

A good tool still for this scenario is Cost Management + Billing. Cost Management + Billing allows you to break down and evaluate costs across many business units using tags and scope filtering. This granular data is essential for calculating the Return on AI Investment (ROAI) for specific departments or the entire organization.

Incorrect:

* Azure Monitor
* Azure Reservations
* Azure savings plans

Is used to reduce costs for compute services via long-term commitment. It is a way to lower your bill, but not a tool for evaluating or reporting on investment performance.

* Microsoft Fabric SKU Estimator

Is used to estimate capacity needs for Fabric-specific data projects. It is eseful only if your sentiment analysis solution is built specifically on the Microsoft Fabric platform.

**Note:**

* Azure pricing calculator

To evaluate the potential cost of an AI solution for sentiment analysis on Azure, you should use the Azure Pricing Calculator.This tool allows you to estimate the monthly and annual costs of the specific services required for your solution—such as Azure AI Language (which provides sentiment analysis) or Azure OpenAI Service—based on your expected volume of feedback data.

* Total Cost of Ownership (TCO) Calculator

To evaluate the cost of an Azure sentiment analysis solution and support a Return on AI Investment (ROAI) analysis for multiple business units, you should use the Azure Total Cost of Ownership (TCO) Calculator.

The TCO Calculator is essential for calculating the financial impact of migrating or implementing a new solution compared to your existing infrastructure.

Step-by-Step: Using the TCO Calculator for ROAI To perform a comprehensive ROAI analysis, follow these steps to capture the full scope of ownership:

1. Define Your Current Workload Enter details about your existing infrastructure that the AI solution might replace or augment.

2. Adjust Assumptions Tailor the calculator to your business environment by adjusting key metrics.

3. Review the TCO Report The calculator generates a detailed report comparing your current costs against Azure.

## Design AI-powered business solutions

Testlet 1


Overview Contoso, Ltd. is a high-tech manufacturing company that uses Microsoft Dynamics 365 Finance. Dynamics 365 Supply Chain Management, and Dynamics 365 Commerce for its North American operations. The company designs and develops innovative products that have many patents and proprietary technologies. The patents and engineering designs are closely guarded secrets.

Contoso executives want to integrate and adopt AI solutions to help scale the company in preparation for an anticipated period of rapid growth.

The company has multiple legal entities and Azure subscriptions that will be used in the adopted AI solutions.

Requirements AI Adoption The following executives will have specific responsibilities in the overall AI adoption:

- Chief Technology Officer (CTO): Select one Dynamics 365 Finance, Dynamics 365 Supply Chain Management or Dynamics 365 Commerce prebuilt AI agent and one custom Microsoft Copilot Studio AI agent to prioritize and deploy during the initial AI adoption phase.
- Chief Information Officer (CIO): Ensure that appropriate security labels are assigned to the data used by the AI agents.
- Chief Financial Officer (CFO): Analyze the return on investment (ROI) for the AI agents being deployed. Chief Information Security Officer (CISO): Discover and inventory AI resources for auditing.
- Chief Executive Officer (CEO): Ensure that all solutions adhere to industry-standard responsible AI practices.

All AI initiatives and agents will have a detailed business use case, a defined audience profile, and an estimated ROI that will compare the cost savings of the current process against the estimated costs of using the new AI solutions.

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

Depending on which high-priority AI agents are identified, its agent capabilities must be previewed in a discovery meeting with the relevant business operation stakeholders.

**Custom AI Agent**

Contoso has identified the following custom AI agent requirements:

- The custom AI agent will use data from Dynamics 365 Supply Chain Management to answer questions for the manufacturing team as a low-code solution.

- The custom AI agent will be accessible from within Microsoft Teams.

- The custom AI agent must be designed to eventually connect to other agents that can be selected based on their description.

- The topics used in the custom AI agent will be selected based NOT on a trigger phrase, but on a description of the purpose of the query, to make the interactions more conversational.

- The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

- The custom AI agent must be integrated with and accessible from Dynamics 365 Supply Chain Management.

- The custom AI agent must be able to use Dynamics 365 Supply Chain Management business logic that is stored outside of the application.

**Analysis, Reporting, and Troubleshooting**

Analysis, Reporting, and Troubleshooting

Contoso has identified the following analysis, reporting, and troubleshooting requirements:

- The CISO will audit all the AI solutions monthly for compliance and security.

- The CFO will analyze all the AI solutions quarterly to compare the estimated ROI against actual measured efficiencies and adoption. The CFO will use the Copilot Studio agent usage estimator to perform this analysis.

- The CISO wants to identify how much sensitive data was accessed for a given AI agent run and who accessed the data. Too much sensitive data accessed by a single user might indicate a high security risk.

- The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.

- The CEO wants a quarterly assessment of all the required metrics for their specific responsibilities. The tools used for the assessments must be Microsoft-recommended and must verify reliability, interpretability, fairness, and compliance.

- The CFO wants to identify how many interactions with the AI agents are abandoned on a given day as compared to resolved conversations. Too many abandoned sessions might indicate that Copilot Studio credits are being used inefficiently by end users.


### QUESTION 1 

What should you recommend to assist the CTO with the prebuilt agent selection process?

A. Agent management

B. Copilot Studio

C. Lifecycle Services (LCS)

D. Immersive Home

----

Correct Answer: A Section: (none)

Explanation/Reference:

Explanation:

Agent management is the correct tool to use for viewing available agent templates and deciding which AI agent to use within Dynamics 365 Supply Chain Management.

Available Agent Discovery Tools When working within Dynamics 365 Finance and Operations apps (including Supply Chain Management), the specifically designed interface for these tasks is Agent management.

Agent Management: A dedicated preview feature in Finance and Operations apps that allows users to discover, configure, and manage autonomous AI-powered agents.

Incorrect:

[Not B] Copilot Studio: While this is the platform used to build and customize agents and track detailed analytics (like thumbs-up/down feedback), it is a standalone low-code tool rather than the primary discovery pane inside the SCM interface.

[Not C] Lifecycle Services (LCS): Primarily used for environment management, deployments, and updates rather than the day-to-day discovery of specific AI agent templates.

[Not D] Immersive Home: Typically refers to a broader Microsoft 365 or entry-level experience, not the specialized ERP agent management portal.

Scenario: 

**Prebuilt AI Agent**

The CTO has NOT yet selected which prebuilt AI agent to use in Dynamics 365 Supply Chain Management. The CTO wants to view available agent templates to identify which agent will add the most business value.

The CTO wants to track user feedback on the quality of the AI agent responses during user interactions with the agents. Consistently poor feedback will trigger an escalated reengineering discussion.


### QUESTION 2 

What should you include in the custom AI agent design to meet the R&D product specifications and the compliance information requirements? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


Answer Area

To expose the data to the agent, create:

* an Azure AI Bot Service channel
* a custom connector
* a custom OData entity
* the Semantic Kernel

Add to the agent:

* an event trigger
* the MCP server
* a REST API
* a tool

-----

Box 1: Custom connector

Box 2: a tool


**Explanation/Reference:**

Explanation:

Scenario:

The company's research and development (R&D) department already has a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data.

The custom AI agent must be able to answer questions about product specifications by using existing technologies. The product specifications are maintained by the R&D department.

**Box 1: Custom connector To expose the data to the agent, create**

To expose data from a custom Model Context Protocol (MCP) server to a Microsoft Dynamics 365 AI agent (built in Copilot Studio) to answer questions about product specifications, you should create a Custom Connector.

This custom connector acts as the bridge between the custom MCP server and Power Platform/Copilot Studio, enabling the agent to consume the data and tools provided by the MCP server.


**Box 2: a tool Add to the agent**

To add a custom Model Context Protocol (MCP) server that contains comprehensive product specifications and compliance data to a Microsoft Dynamics 365 AI agent, you should use Microsoft Copilot Studio and configure the MCP server as a tool (or skill) within the agent.

Here are the specific steps and components to use:

Platform: Use Microsoft Copilot Studio to create or update the custom agent.

*-> Method: In the agent configuration, go to the Tools section and select Add a tool > Model Context Protocol (MCP).

MCP Server Details: Input the required technical details for your custom server, including the Server Name, Description, and Server URL.

Authentication: Configure the necessary authentication type (e.g., OAuth 2.0 or API Key) as required by your custom MCP server to ensure secure access to product specifications and compliance data.

*-> Tool Binding: The MCP server will expose the specifications as tools that the agent can "call" at runtime to answer user questions about products.


## Testlet 2


**Background **

Fabrikam, Inc., is a global consumer goods company that is undergoing a digital transformation initiative to migrate its entire infrastructure to the Microsoft cloud. As a key element of this cloud migration, the company will implement Microsoft Dynamics 365 Sales, moving away from the current on-premises proprietary technologies used by its business-to-business (B2B) sales team.

As part of the cloud migration, Fabrikam will adopt an AI-first approach to its business solutions and implement AI solutions, wherever possible, to streamline operations.

**Problem Statements** 


Fabrikam's infrastructure currently relies on various on-premises systems that require sales executives to use corporate computers with physical keyboards to access business information during customer interactions. Mobile phones cannot be used for these purposes, as the systems depend on keyboard input. As a result, the sales executives spend a lot of time using keyboards to search for data on several disparate systems and file servers, rather than focusing on the customers. This affects the customer experience.

Fabrikam stakeholders are concerned that users will be hesitant to adopt AI. If the AI initiatives are NOT adopted, cost savings will never be realized. Additionally, funding for future AI initiatives will depend on demonstrating an increase in AI adoption month over month. As the AI agent initiative for the sales team will be the first for Fabrikam, the rapid adoption of the agent is a high priority.

**Planned Initiatives**


General Fabrikam management has prioritized AI-driven projects to improve efficiency, customer engagement, and responsible AI adoption. The current application infrastructure is on-premises and must be migrated to the cloud to support the adoption of these technologies. 

**Infrastructure Migration**

Fabrikam plans to migrate from its current on-premises infrastructure to a completely cloud-based topology; this will include user authentication, the security framework, and, primarily, the adoption of the services by end users.

All the data from the different systems will be consolidated into a single data source - a common data model that will use a Microsoft Dataverse environment as a single source of truth (SSOT) for the sales team.

**Sales Cycle Enablement**

- To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

- Use low-code development to create a single AI agent that has Dataverse as its core component. Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

- Replace the previous proprietary software with Dynamics 365 Sales to track sales cycles and customer interactions.

- Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

- Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.

**Requirements** 

**Infrastructure Migration** 

Fabrikam has identified the following infrastructure migration requirements:

Azure must be used for all future infrastructure workloads.

The company must follow Microsoft-recommended methodologies for infrastructure migration to the cloud.

Any created AI agents must have their return on investment (ROI) calculated to ensure that the solution will save the company money.

**Sales Cycle Enablement** 

- Fabrikam has identified the following requirements for sales cycle enablement:

- The final AI agent must follow Microsoft recommendations for a conversational user experience.

- A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

- Detailed telemetry must be logged for the first created AI agent to help troubleshoot and optimize the agent during the initial AI agent adoption process.

- Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

- The return on investment (ROI) of switching from the current process to the future process is required for stakeholder sign off.

- The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

- Sales managers must report on the adoption of the AI agent to key Fabrikam stakeholders on a monthly basis.

- Any sensitive information, such as user IDs and names, shared via the AI agent must be tracked for future auditing.

### QUESTION 1 


Which template should you use for the AI agent to meet the requirements for the sales executives?

A. IT Helpdesk in Microsoft Copilot Studio 

B. AI agents in Microsoft Foundry

C. Voice in Microsoft Copilot Studio

D. AI chat in Microsoft Foundry

----

Correct Answer: C

Sales Cycle Enablement To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects.

*-> Have the sales executives use handsfree headsets to interact with an AI agent when they have questions about internal policies or customer data.

To enable handsfree headset interaction with an AI agent for internal policies and customer data in Dynamics 365 Sales, you should use Microsoft Copilot Studio to create a custom agent template.

Here is the breakdown of the recommended approach and templates:

Recommended Template Voice-enabled agent template (in Copilot Studio): This template provides the foundational, pre-configured setup for Interactive Voice Response (IVR) capabilities, allowing for natural language voice inputs and text-to-speech output.

Internal Data Knowledge Source: Within this agent, you will connect to Dataverse (for customer data) and configure Knowledge Sources (for internal policy documents).

Note:

To implement a hands-free AI agent for Dynamics 365 Sales using the Voice agent template in Microsoft Copilot Studio, follow these steps to enable voice-first interactions for internal policies and customer data.

1. Create a Voice-Enabled Agent

2. Configure Hands-Free Interaction

3. Connect to Internal Dat


### QUESTION 2 

Which tool should you use for the prospect communication requirements in Dynamics 365 Sales?

A. Azure AI Search

B. Copilot email assist

C. the Voice template Microsoft Copilot Studio

D. Deep Research in Microsoft Foundry Agent Service


------


Correct Answer: B

Explanation:

Scenario:

Requirements 

*-> The sales team must use Dynamics 365 Sales to correspond with prospects more quickly and efficiently than currently.

Sales Cycle Enablement 

To achieve the company's objectives, Fabrikam intends to implement the following strategies to enhance the sales cycle:

Ensure that sales managers can access unanswered correspondence from prospects and intervene as appropriate.

Have the sales executives use Dynamics 365 Sales to track interactions for open opportunities and send follow-up communications to prospects

---

In Dynamics 365 Sales, the Copilot email assist feature acts as a powerful accelerator for handling prospects by automating the most time-consuming parts of communication.

Here is how it helps you move faster and more efficiently:

Instant Drafting: You can generate professional-looking email drafts in seconds by choosing a predefined category (like "reply to an inquiry" or "follow up") or by entering your own custom prompt.

Context-Aware Personalization: The AI uses data directly from your CRM—such as past interactions, deal status, and customer notes—to ensure every message is tailored specifically to that prospect's needs. Tone & Style Adjustments: You can quickly refine the length and tone (e.g., formal, friendly, or urgent) of a draft to better resonate with a particular recipient.

Summarization: When dealing with long email chains, Copilot provides a concise summary of the conversation history, allowing you to catch up instantly without reading through every old message. Actionable Reminders: It monitors your inbox to identify pending action items or key customer requests you may have missed, ensuring no prospect falls through the cracks.

Seamless Integration: These tools are available directly within the Dynamics 365 Email Rich Text Editor and across Microsoft 365 apps like Outlook and Teams, keeping you in your flow of work.


### QUESTION 3 

Which components should you use to meet the sales cycle enablement requirements? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Answer Area

**For Al agent creation:**


- Microsoft Foundry

- Dynamics 365 Sales

- Microsoft Copilot Studio

- the Power Platform admin center


**For unexpected Al agent actions:**


- a custom connector

- an event trigger

- a Fallback topic

- a REST API


------


Explanation/Reference:


**Box 1: Microsoft Copilot Studio**


**Box 2: a Fallback topic**


**Box 1: Microsoft Copilot Studio For AI agent creation**

Scenario:

A designated checklist must be reviewed to ensure that the AI agent follows Microsoft deployment recommendations for a compliant solution.

The Microsoft tool that should be used to create the AI agent is Microsoft Copilot Studio.

It is a low-code platform specifically designed for building and managing intelligent agents that integrate with Microsoft Dataverse as a core component for storing data and providing business context. To ensure the agent follows Microsoft's deployment recommendations, users should consult the implementation checklist provided within the Microsoft Copilot Studio documentation.

Key Features of Microsoft Copilot Studio:

Low-Code Interface: Uses a graphical builder or natural language to design agent behaviors and conversation flows.

Dataverse Integration: Leverages Dataverse as the enterprise data platform to ground agents in organizational knowledge and store shared context.

Governance and Compliance: Includes built-in responsible AI features and aligns with enterprise security standards.

Multi-Channel Deployment: Allows publishing agents across Microsoft Teams, websites, and mobile app

**Box 2: a Fallback topic** 

For unexpected AI agent actions.

Scenario:

Unexpected AI agent actions must end in an escalation to a live representative. For example, a sales executive must be rerouted to a representative if the agent cannot answer a question after two failed attempts.

In a low-code environment using Microsoft Copilot Studio with Dataverse, you can ensure unexpected AI actions lead to a live representative by configuring specific system topics.


1. Configure the System Fallback Topic

The Fallback system topic triggers when the AI agent cannot match a user's intent to any existing topic or knowledge source with sufficient confidence.

Enable Fallback: In Copilot Studio, navigate to Settings > General Settings > System fallback and click Add.

Action: Edit the Fallback topic to include a Go to topic node that redirects to the Escalate system topic.

2. Implement the Escalate System Topic The Escalate topic is the primary mechanism for handoffs.

3. Handle Errors and Infinite Loops


## Question Set 3 -  Design AI-powered business solutions


### QUESTION 1 

You need to design a Microsoft 365 Copilot solution to optimize employee productivity. The solution must meet the following requirements:

Ensure that the employees can query content stored in a subset of Microsoft SharePoint Online sites and in Teams by using natural language-based prompt actions.

Ensure that employees receive contextually relevant responses in Microsoft 365 Copilot.

What should you include in the design?

A. Build a Microsoft Power Automate desktop flow to read the SharePoint content and post the responses to Teams.

B. Modify SharePoint settings.

C. Create a custom REST API that crawls the SharePoint content.

D. Configure Microsoft Graph access


----

Correct Answer: D


Explanation/Reference:

Explanation:

To enable Microsoft 365 Copilot to query a specific subset of SharePoint Online and Teams content using natural language, you can implement a combination of Restricted SharePoint Search and Microsoft Graph Connectors.

1. Restricting Content Access You can limit the scope of data Copilot searches by using features that control which sites are indexed or accessible.

2. Configuring Microsoft Graph Access Microsoft Graph acts as the bridge connecting Copilot to your organizational data. To integrate specific sources.

3. Enabling Prompt Actions & Context Declarative Agents: You can create specialized Copilot Agents grounded in specific SharePoint knowledge sources. These agents use natural language instructions to focus on a subset of data for more contextually relevant responses.

Direct Referencing: Users can improve response relevance by explicitly naming files, folders, or Teams channels in their natural language prompts (e.g., "Summarize notes from the 'Product Launch' channel").


### QUESTION 2 

A company uses Microsoft Dynamics 365 Finance to manage accounts payable.

You are designing an AI invoice processing solution.

You need to recommend the prerequisites to configure a prebuilt copilot for accounts payable.

What should you recommend?

A. From Microsoft Copilot Studio, create an accounts payable agent.

B. Extend Microsoft 365 Copilot for Sales to an accounts payable agent.

C. Build an AI tool in Microsoft Foundry.

D. From the Power Platform admin center, assign the Finance and Operations AI security role to users.

-----

QUESTION 2 A company uses Microsoft Dynamics 365 Finance to manage accounts payable.

You are designing an AI invoice processing solution.

You need to recommend the prerequisites to configure a prebuilt copilot for accounts payable.

What should you recommend?

A. From Microsoft Copilot Studio, create an accounts payable agent.

B. Extend Microsoft 365 Copilot for Sales to an accounts payable agent.

C. Build an AI tool in Microsoft Foundry.

D. From the Power Platform admin center, assign the Finance and Operations AI security role to users.


------


Explanation/Reference:

Users must be assigned the Finance and Operations AI and AIB Roles in the Dataverse environment.

Note:

To configure the prebuilt Copilot for Accounts Payable in Microsoft Dynamics 365 Finance, you must satisfy several foundational and technical requirements.

1. System & Environment Prerequisites

2. Technical Configuration & Data Settings

3. Licensing & Security Roles Licenses

*-> Dataverse Roles: Users must be assigned the Finance and Operations AI and AIB Roles in the Dataverse environment.

4. Feature Activation

### QUESTION 3 

A company plans to deploy a Microsoft Dynamics 365 Contact Center agent.

You need to ensure that the agent can transfer the conversation to a live customer service representative.

Which two components should you include in the solution? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Microsoft Foundry

B. Microsoft Copilot Studio

C. Microsoft 365 Agents Toolkit

D. an Azure AI Bot Service skill

E. Customer engagement hub


-----



Correct Answer: BE


Explanation/Reference:

To implement a Microsoft Dynamics 365 Contact Center solution that enables seamless handoff between a virtual agent and a live representative, you must integrate Microsoft Copilot Studio with the Customer Engagement Hub (typically Dynamics 365 Customer Service or Omnichannel).


Core Components & Setup


1. Copilot Studio Configuration:

Connect to Engagement Hub: In Copilot Studio, navigate to Settings > Customer Engagement Hub and select Dynamics 365 Customer Service.

Enable Agent Transfer: Under the Channels tab, select the Dynamics 365 Customer Service tile and click Connect. This establishes the link between the bot and your live agent environment.

Configure Handoff Topic: Modify the Escalate system topic or create a custom topic. Use the Transfer conversation node to trigger the move to a live representative. You can include a private message to the agent to provide context.


2. Customer Engagement Hub (Dynamics 365) Setup:

Workstream Integration: In the Customer Service Admin Center, create or open a workstream (e.g., for Live Chat or Voice). Add your Copilot Studio agent to this workstream to ensure it is the first point of contact.

Routing Rules: Define rules to route the escalated conversation to the correct live agent queue based on context variables passed from the bot.

3. Handoff Experience:

Context Sharing: When a transfer occurs, the live representative receives the full conversation transcript and any variables collected by the bot, allowing them to resume the interaction without asking the customer to repeat information.

Agent Workspace: Live agents accept the transfer through the Customer Service Workspace or Omnichannel for Customer Service.


### QUESTION 4

、A company uses Microsoft Dynamics 365 Supply Chain Management.

You are designing an AI supply chain process that meets the following requirements:

Provides managers with AI-driven insights that surface key information from customer orders

Helps planners use AI to anticipate future product needs more accurately You need to recommend which Microsoft Copilot features to include in the design.

What should you recommend for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

**NOTE:** Each correct selection is worth one point.

Answer Area

Provide AI-driven insights from customer orders:

- Al Summaries with Copilot
- Generative insights for Demand planning
- The Customer credit and collections workspace
- Workload insights with Copilot

Anticipate future product needs:

- Generative insights for Demand planning
- Microsoft Power BI
- Product information management
- The Supplier Communications Agent


-----


**Box 1: AI summaries with Copilot**


**Box 2: Generative insights for Demand planning**


Box 1: AI summaries with Copilot 


Provides managers with AI-driven insights that surface key information from customer orders

To provide managers with AI-driven insights from customer orders in Dynamics 365 Supply Chain Management, use the AI summaries with Copilot feature, specifically leveraging the embedded Customer Summary capabilities. This tool provides instant, personalized overviews of critical data, such as backordered items, credit limits, and risk indicators, directly within the workspace.


Box 2: Generative insights for Demand planning 


Helps planners use AI to anticipate future product needs more accurately

The Copilot Generative insights for Demand planning feature in Microsoft Dynamics 365 Supply Chain Management enables demand planners to move from reactive, manual forecasting to proactive, AI-driven demand anticipation. By analyzing, clustering, and interpreting vast datasets, Copilot helps identify patterns such as seasonality and signal correlations to improve accuracy.


### QUESTION 5

A company has a Microsoft 365 E5 subscription and uses Microsoft Copilot Studio.

The company has a Microsoft SharePoint Online library that contains 10,000 policy PDFs from various departments. The library contains a populated column named Department for each PDF.

You need to design a Copilot Studio agent that will use the SharePoint library as a knowledge source. The solution must meet the following requirements:

- Enable the agent to answer user questions about company policies.

- Ensure that the agent can identify which departments and policies are connected.

What should you include in the design for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


Enable the agent to answer questions about company policies:

- Build a custom model in Microsoft Foundry.
- From Copilot Studio, add SharePoint as a knowledge source.
- Import the PDFs into Microsoft Dataverse.
- Use AI Builder to process and feed SharePoint content.

Identify which departments and policies are connected:

- Apply Microsoft Purview sensitivity labels.
- Create a Microsoft Dataverse table for the departments.
- From Copilot Studio, configure the SharePoint tool.
- Upgrade to SharePoint Premium.

-----

Explanation/Reference:

Explanation:

Box 1: From Copilot Studio, add SharePoint as a knowledge source

Box 2: From Copilot Studio, configure the SharePoint tool.


Box 1: From Copilot Studio, add SharePoint as a knowledge source 


Enable the agent to answer user questions about company policies.

To enable a Microsoft Copilot Studio agent to answer questions from a large SharePoint Online library using the Department column as a filter, you must configure Generative Answers with specific metadata filtering.

*-> 1. Configure SharePoint as a Knowledge Source Add the Source: In Copilot Studio, go to the Knowledge tab and select Add knowledge. Choose SharePoint and provide the URL of your site or specific document library.

Authentication: Ensure Manual Authentication with Microsoft Entra ID is configured. The agent requires the Sites.Read.All and Files.Read.All scopes to access documents on behalf of the user.

Indexing: Note that indexing tens of thousands of files can take significant time (days or weeks).

2. Enable Metadata Filtering (Department Column) To ensure the agent only searches policies relevant to a user's department, you must use Advanced Settings to filter the search results based on your custom column


Box 2: From Copilot Studio, configure the SharePoint tool.

Ensure that the agent can identify which departments and policies are connected.

The SharePoint tool can be configured directly from Microsoft Copilot Studio to act as a knowledge source, allowing your AI agent to read files, documents, and lists from SharePoint to provide answers.

Note:

To ensure your Copilot Studio agent effectively identifies and connects your "Department" metadata with specific policies across tens of thousands of documents, you must address both search indexing and agent instructions.

To ensure that your Microsoft Copilot Studio agent can identify and filter documents based on the Department column from your SharePoint library, you should configure the Advanced settings of your SharePoint knowledge source to use KQL (Keyword Query Language) filters.


Incorrect:

Upgrade to SharePoint Premium Configuring a Microsoft Copilot Studio agent to filter a SharePoint knowledge source using KQL (Keyword Query Language) for a Department column typically requires advanced filtering capabilities, but "SharePoint Premium" is not a strict prerequisite for the KQL configuration itself. Instead, the primary requirement is a Microsoft 365 Copilot or Copilot Studio license to access these advanced features.


### QUESTION 6

You need to design a Microsoft Copilot Studio agent that meets the following requirements:

Supports interactive speech responses Optimizes decision-making and the accuracy of responses

What should you include in the design for each requirement? To answer, drag the appropriate options to the correct requirements. Each option may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.


**Options**

- A deep reasoning model
- Azure Language in Foundry Tools
- Azure AI Speech
- Speech Synthesis Markup Language (SSML)

**Answer Area**

- Supports interactive speech responses:
- Optimizes decision-making and response accuracy:


-----

**Box 1: Copilot Studio voice features Supports interactive speech responses**


**Box 2: A deep reasoning model Optimizes decision-making and the accuracy of responses**

Explanation/Reference:

Explanation:

Box 1: Copilot Studio voice features Supports interactive speech responses

To support interactive speech responses in a Microsoft Copilot Studio agent, you must incorporate specialized voice features and capabilities. These features enable the agent to move beyond chat-based interactions to handle voice-based input (speech-to-text) and output (text-to-speech).

Box 2: A deep reasoning model Optimizes decision-making and the accuracy of responses

Integrating a deep reasoning model (specifically Azure OpenAI o3) into Microsoft Copilot Studio optimizes decision-making and accuracy by enabling multi-step analysis, logical deduction, and the handling of complex, multi-turn conversations. This capability, enabled via the "reason" keyword in instructions, allows agents to analyze large datasets and provide context-aware, transparent answers, ideal for scenarios like financial analysis or compliance


### QUESTION 7 


You are designing a low-code AI business solution by using Microsoft Copilot Studio.

The solution must include an agent that automates tasks by simulating user interactions across third-party apps and websites, such as clicking buttons, entering text, and extracting information from screens.

You need to recommend what to include in the agent.

What should you recommend?

A. Model Context Protocol (MCP)

B. a natural language understanding + (NLU+) model in Copilot Studio

C. Computer Use in Copilot Studio

D. Copilot skills


----

Correct Answer: C

Explanation/Reference:

Explanation:

In Microsoft Copilot Studio, you can use the computer use tool (currently in preview) to build low-code agents that automate tasks by simulating human interactions on a Windows computer.

Key Capabilities of Computer Use UI Interaction: Agents can interact with any system featuring a graphical user interface (GUI), including third-party websites and desktop applications.

*-> Human-like Actions: The tool enables the agent to click buttons, select menus, enter text into fields, and scroll, mimicking a human user.

No API Required: It is particularly useful for automating legacy systems or applications that lack direct API connectors.

Vision-Based Reasoning: Powered by Computer-Using Agents (CUA), the tool uses AI to "see" the screen, allowing it to adapt in real time if button positions or layouts change.

*-> Low-Code Setup: You define what the agent should do using natural language instructions rather than complex coding.

Reference:


### QUESTION 8 

You need to recommend a solution to integrate a Microsoft Copilot agent with a Microsoft Dynamics 365 Contact Center chat channel.

The agent must respond to customer questions and hand off the conversation to a live customer service representative when the customer requests an escalation.

What should you recommend?

A. Build an agent flow.

B. Configure the Conversation Start topic.

C. Configure a skill.

D. Call a Microsoft Power Automate connector.

E. Configure the Escalate topic.


----

Correct Answer: E Section: (none)


Explanation/Reference:

Explanation:

To hand off a conversation from a Microsoft Copilot agent to a live representative in Dynamics 365 Contact Center, you must configure the Escalate system topic to include a Transfer conversation node. This ensures that when a customer requests an escalation, the agent seamlessly passes the full chat history and context to the live agent.

Steps to Configure the Escalate Topic Open the Escalate Topic: In Microsoft Copilot Studio, navigate to Topics, select the System tab, and open the Escalate topic.

Add a Transfer Node:

Delete any default "no one available" messages if they do not fit your workflow.

Select the Add node icon (+), go to Topic Management, and select Transfer conversation.

Include Context (Optional): You can add a Private message to agent within the node. This message is only visible to the live representative and helps them quickly understand the customer's needs.

Save and Publish: Save your changes and publish the agent to apply the new escalation logic.

### QUESTION 9

A company has a customer order system that creates sales orders manually.

You need to design an AI solution to automate the following tasks as part of the system:

Save the order details to a database.

Update the order status in the database.

Extract the order details from an order file.

Prepare and send a confirmation email to customers.

The solution must minimize development effort and support intelligent automation and solution integration.

What should you include in the design?

A. a workflow in Azure Logic Apps

B. a multi-agent solution that uses the Semantic Kernel SDK

C. a multi-agent solution that uses Microsoft Foundry Agent Service

D. a Microsoft Copilot Studio agent that uses Microsoft Power Automate workflows

-----


Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To create this system, you'll need to integrate Microsoft Copilot Studio with Power Automate and AI Builder. This combination allows your agent to not only "talk" but also "act" by executing complex backend workflows.

Solution Architecture Front-end: A Copilot Studio agent serves as the interface, receiving order requests or files from customers.

Brain (Logic): Power Automate cloud flows act as the "skills" for your agent, handling all database and email operations.

Data Extraction: AI Builder (Document Processing) extracts specific fields (like Item ID, Quantity, or Customer Name) from uploaded order files.

Storage: Microsoft Dataverse or SQL Server functions as the database to save and update order records


### QUESTION 10 

You are designing an AI strategy for Microsoft Dynamics 365 finance and operations apps. You are evaluating the use of Microsoft Copilot Studio to provide in-app help and guidance based on generative AI general knowledge.

You need to recommend which knowledge sources to include in the generative help and guidance agent. The solution must minimize the risk of generating inaccurate responses.

What should you recommend? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

这是一道经典的微软认证考试（多为 **PL-200**、**PL-100** 或 **Copilot Studio / Power Platform** 相关科目）中的 **Hot Area（热区选择题）**。

以下为您精确提取的题目文本、背景知识解析以及常见考点答案。

---

**Hot Area:**

**Answer Area**

*   **Custom knowledge sources:**
    *   [ ] Must be uploaded to the agent *(必须上传到智能体)*
    *   [ ] Must be excluded from the agent *(必须从智能体中排除)*
    *   [ ] Are not supported *(不支持)*
*   **AI general knowledge:**
    *   [ ] Must be enabled for the agent *(必须为智能体启用)*
    *   [ ] Must be disabled for the agent *(必须为智能体禁用)*
    *   [ ] Is not supported *(不支持)*


----


Explanation/Reference: 

Explanation:

Box 1: Must be uploaded to the agent Custom knowledge sources

Box 2: Must be enabled for the agent AI general knowledge


To implement a generative AI agent for in-app help in Dynamics 365 Finance and Operations while minimizing inaccuracies, you must configure the agent in Microsoft Copilot Studio by uploading specific knowledge sources and enabling general AI knowled


1. Upload Custom Knowledge Sources To ensure the agent provides accurate, organization-specific guidance, upload your internal documentation directly to the agent

2. Enable General AI Knowledge To allow the agent to use its own broad generative AI knowledge for general inquiries:

Open Microsoft Copilot Studio and select the Dataverse environment linked to your Finance and Operations apps.

Navigate to Agents and open the specific agent named Copilot for finance and operations apps.

On the Overview tab, find the Knowledge section and set Allow the AI to use its own general knowledge to Enabled.

Publish the changes to make this capability available in the D365 F&O sidecar.


### QUESTION 11

You need to design a multi-agent solution that will include a custom agent. The solution must meet the following requirements:

Define the rules and constraints that the agent must follow.

Automate a backend process that involves data movement between services and runs independently of the agent's reasoning steps.

What should you include in the design for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

这是一道关于 **Microsoft Copilot Studio / Power Platform** 术语及功能应用的热区选择题。

以下为您提取的 Markdown 格式题目文本，以及标准的答案解析：


Answer Area

*   **Define rules and constraints:**
    *   [ ] Agent flows
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow

*   **Automate a backend process:**
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow
    *   [ ] Microsoft Power Pages


----


Box 1: Conversation topics

Box 2: Microsoft Power Automate cloud flow


Box 1: Conversation topics Define the rules and constraints that the agent must follow.

In a Microsoft AI project using Microsoft Copilot Studio, you define the rules, constraints, and dialogue paths for a custom agent primarily through Topics. Topics act as the agent's "competencies," determining how a conversation plays out based on specific user intents.

To use topics for defining agent behavior and constraints, follow these core principles:

Define Conversation Paths: Use topics to map out discrete, structured paths for the agent to follow. This allows you to enforce specific procedures, such as user verification, before providing sensitive information.

Set Triggers: Each topic begins with a trigger (phrases, keywords, or events) that signals when the agent should switch to a specific set of rules or logic.

Enforce Logic via Nodes: Within a topic, use nodes—such as questions, conditions, and actions—to define the logic, variables, and branching paths the agent must follow.

Modularize with "Bite-size" Topics: Break down complex agent logic into smaller, manageable topics. You can use the Redirect node to pass the conversation (and its constraints) from one topic to another.

Handle Errors and Fallbacks: Use System Topics (like On Error or Escalate) to define how the agent should behave when it hits a constraint it cannot resolve or fails to understand a query.


Box 2: Microsoft Power Automate cloud flow Automate a backend process that involves data movement between services and runs independently of the agent's reasoning steps.

In a Microsoft multi-agent project, you can use Power Automate cloud flows to handle backend data movement independently of an agent's reasoning steps. This approach is often referred to as classic orchestration.

By offloading structured, rule-based tasks to a cloud flow, you ensure that high-volume data operations or multi-service integrations remain deterministic and reliable, while your custom agents focus on dynamic, probabilistic decision-making.


### QUESTION 12

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

Solution: You recommend Microsoft 365 Copilot for Sales.

Does this meet the goal?

A. Yes

B. No

----

Correct Answer: A


Explanation/Reference:


Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow.
* You recommend a Microsoft 365 Copilot agent template.


Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 13

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

Solution: You recommend a classic Microsoft Dataverse workflow.

Does this meet the goal?

A. Yes

B. No


-----

Correct Answer: B


Explanation/Reference:

Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow. * You recommend a Microsoft 365 Copilot agent template.

Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 14

A company uses Microsoft 365 and Dynamics 365.

You need to recommend a solution to automatically summarize email threads, generate suggested replies


in Microsoft Outlook, and provide meeting preparation summaries that include relevant customer relationship management (CRM) data.

Solution: You recommend a Microsoft 365 Copilot agent template.

Does this meet the goal?

A. Yes

B. No

----

Correct Answer: B

Explanation:

Correct:

* You recommend Microsoft 365 Copilot for Sales.

Incorrect:

* You recommend a classic Microsoft Dataverse workflow. * You recommend a Microsoft 365 Copilot agent template.

Note:

In the described scenario, Microsoft 365 Copilot for Sales acts as the primary bridge between your productivity tools and CRM data. It integrates directly into Microsoft Outlook and Teams to surface realtime insights from Dynamics 365 Sales or Salesforce.

Key capabilities for this specific workflow include:

Automated Email Summarization: Copilot scans long email threads in Outlook to extract key points, highlights, and BANT (Budget, Authority, Need, Timeline) data. If the sender is an external contact recognized in your CRM, the summary is automatically enriched with relevant account and opportunity data.

Suggested Email Replies: When replying to customer emails, Copilot generates drafts based on the context of the conversation and existing CRM data. You can use predefined response categories (e.g., "Reply to an inquiry," "Offer a proposal") or custom prompts to include specific opportunity details in the draft.

Meeting Preparation Summaries: Before a scheduled meeting, Copilot for Sales provides a "preparation card" in Teams or Outlook. This summary includes:

- CRM Data: Matched opportunity and account attributes.

- Contextual History: Summaries of past email exchanges and the last three seller notes.

- Strategic Insights: Key risks, follow-up actions, and discussion points from previous interactions.


### QUESTION 15 

You need to design an application lifecycle management (ALM) process for a Microsoft Power Platform environment that contains a solution named Solution1.

Solution1 must include a custom connector for Copilot in Microsoft Dynamics 365 Customer Service. Solution1 must meet the following requirements:

Ensure that the custom connector can be deployed consistently across environments as part of the ALM process.

Allow the custom connector to be edited only in the development environment.

What should you include in the design?

A. Add the custom connector to GitHub.

B. Share the custom connector.

C. Create the custom connector in the default solution.

D. Add the custom connector to Solution1.

----


Correct Answer: D Section: (none)

Explanation/Reference:

Explanation:

To implement a consistent and secure Application Lifecycle Management (ALM) process for your custom connector, you should add the custom connector to the solution.

Adding the custom connector as a component of a solution is the standard method for ensuring it can be packaged and deployed across environments.


### QUESTION 16 

A company uses a Microsoft Copilot Studio agent to automate tasks in a web app.

During testing, you discover that the automation sometimes fails because of frequent changes to the app's user interface.

You need to recommend a solution to ensure that the agent successfully automates the tasks. The solution must minimize changes to the agent.

What should you include in the recommendation?

A. Computer Use in Copilot Studio

B. custom models in Azure AI Studio

C. conversation topics in Copilot Studio

D. an agent flow in Copilot Studio

----


Correct Answer: A

Explanation/Reference:

Explanation:

The Computer Use tool in Microsoft Copilot Studio is specifically designed to remedy automation failures caused by UI changes with minimal manual intervention.

Unlike traditional Robotic Process Automation (RPA), which relies on rigid selectors or fixed coordinates that break when a layout shifts, Computer Use is powered by Computer-Using Agents (CUA). This AI model combines computer vision with advanced reasoning to "see" the screen like a human, allowing it to adapt to interface changes in real-time.

Why Computer Use Fixes UI Fragility Visual Reasoning: Instead of looking for a specific HTML tag that might change, the agent looks for the visual concept of a button (e.g., "Submit" or a "plus icon").

Real-Time Adaptation: If a button moves from the left side of the screen to the right, the agent simply scans the screen and finds its new location without requiring you to update any code or scripts.

Natural Language Instructions: You describe the task in plain English (e.g., "Log into the portal and download the latest invoice"). If the portal changes its navigation menu, the AI reasons through the new layout to find the invoice link.

Self-Healing Properties: Because the agent makes decisions at each step based on the current visual state, it effectively "self-heals" during execution, overcoming obstacles that would typically crash a legacy bot.


### QUESTION 17 

A company processes invoices stored across multiple systems in multiple formats. You need to implement an AI solution to automate the invoice processing. The solution must meet the following requirements:

Automate multi-step invoice processing tasks, including document analysis, data validation, and approval routing.

Enable users to interact directly via Microsoft Teams to review and approve invoices.

Minimize development efforts to define and customize approval workflows.

What should you include in the solution?

A. Azure Document Intelligence in Foundry Tools and Azure Logic Apps

B. a SharePoint agent

C. Microsoft Copilot Studio and AI Builder

D. Azure OpenAI and Azure Functions

----

Correct Answer: C

Explanation/Reference:

Explanation:

To automate invoice processing using Microsoft Copilot Studio and AI Builder, you can build an "Intelligent Invoicing Agent" that serves as the central orchestration layer. This solution combines AI-driven data extraction with low-code approval workflows accessible directly within Microsoft Teams.

Solution Architecture The most efficient approach uses Copilot Studio as the "brain" and AI Builder as the "eyes" to read documents.

Extraction Layer (AI Builder): Uses the Prebuilt Invoice Model to automatically identify and extract data like vendor name, date, and total amount without manual training.

Orchestration Layer (Copilot Studio): Hosts "Agent Flows" (advanced workflows) that manage the end-to-end logic, from receiving a file to routing it for approval.

Interaction Layer (Microsoft Teams): Users upload invoices or receive approval cards directly in a chat window, eliminating the need to switch between different accounting apps.


### QUESTION 18 

You need to design a Microsoft Copilot Studio agent for customer support.

The agent must securely retrieve product warranty data from a REST API. The solution must minimize development effort.

What should you include in the design?

A. Export the agent as a managed solution and customize the agent in Power Apps.

B. Create a custom connector in Copilot Studio and use the connector to call the API.

C. Use a Microsoft Power Automate desktop flow to screen scrape the warranty data.

D. Add the warranty data to the Fallback topic.

----

Correct Answer: B


Explanation/Reference:

Explanation:

To securely retrieve data from a REST API for a customer support agent in Microsoft Copilot Studio while minimizing development, creating a custom connector is a highly efficient approach. This method acts as a no-code/low-code wrapper around your API, allowing the agent to perform actions or fetch real-time information.


Implementation Steps

1. Create the Custom Connector

You can build this within Power Apps or Power Automate under the Data or Custom Connectors menu.

2. Add the Connector as an Action

Once the connector is created and published, you can add it directly to your agent.


### QUESTION 19

A company has an ecommerce support portal that uses Microsoft Dataverse.

You are designing a Microsoft Copilot Studio agent for the portal. The agent must meet the following requirements:

- Respond with a default help message when the user input is unclear.

- Initiate external processes, such as retrieving the order status, when users make specific requests. Generative orchestration will be enabled for the solution.

You need to recommend a feature for each requirement.

What should you recommend? To answer, drag the appropriate features to the correct requirements. Each feature may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Answer Area

*   **Define rules and constraints:**
    *   [ ] Agent flows
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow

*   **Automate a backend process:**
    *   [ ] Conversation topics
    *   [ ] Microsoft Power Automate cloud flow
    *   [ ] Microsoft Power Pages

----

Box 1: The Fallback topic

Box 2: A tool (connector)


**Box 1: The Fallback topic**

Respond with a default help message when the user input is unclear.

To ensure your Microsoft Copilot Studio agent responds with a default help message when user input is unclear, you must configure the System Fallback topic. This topic is specifically designed to trigger when the agent cannot match the user's intent to any existing topics or knowledge sources.


**Box 2: A tool (connector)**

Initiate external processes, such as retrieving the order status, when users make specific requests.

In Microsoft Copilot Studio, when generative orchestration is enabled, you use Actions (specifically those powered by Power Platform Connectors) to initiate external processes like retrieving an order status. When a user asks a specific request (e.g., "What is the status of my order?"), the generative orchestrator identifies that it cannot fulfill the request with its existing knowledge and looks for an available Action or Tool to bridge the gap.

Key Tool: Power Platform Connectors To retrieve data from an external system, you would typically use one of the following:

Prebuilt Connectors: Microsoft offers over 1,400 ready-to-use connectors for popular systems like SAP, Oracle, or SQL Server.

Custom Connectors: If your order data is in a proprietary or niche API, you can create a custom connector to define exactly how the agent should talk to that external service.

Power Automate Flows: You can wrap complex logic (like multi-step lookups or data formatting) into a flow and add it as an action. The agent can then "call" this flow, pass it an Order ID, and receive the status back.


### QUESTION 20 

A company uses Microsoft Dynamics 365 to manage service operations. Dispatchers coordinate service requests, and technicians perform scheduled on-site work.

You need to design a solution that will use Microsoft Copilot to improve the efficiency of the service operations. The solution must meet the following requirements:

Provide AI-driven assistance to help staff organize and resolve work orders.

Deliver contextual AI support to frontline workers as they prepare for and complete customer appointments.

Which two components should you include in the design? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Copilot Service workspace

B. Copilot in Outlook

C. Dynamics 365 Customer Service

D. Copilot in Customer Service

E. Copilot in Field Service

F. the Dynamics 365 Field Service mobile app


----


Correct Answer: BE

Explanation/Reference:


To enhance Microsoft Dynamics 365 Field Service with Microsoft Copilot for dispatchers and technicians, the following additional components and configurations are needed:

Essential Copilot Enabling Components [E] Dynamics 365 Field Service License: Copilot for Field Service is included within the standard app, but must be enabled by an administrator in the Power Platform admin center.

[B] Copilot in Outlook & Teams: To enable dispatchers to turn emails into work orders and manage schedules directly in their flow of work, the Dynamics 365 Field Service for Outlook and Field Service app in Teams (preview) need to be configured.

New Field Service Mobile Experience: Technicians must have the latest mobile app (available in preview) enabled, which allows for natural language inputs, voice-to-text notes, and photo attachments.


### QUESTION 21 

A company uses Microsoft Foundry agents.

You need to ensure that an agent can dynamically use external tools at runtime without updating the agent.

What should you include in the solution?

A. a Microsoft Foundry hub

B. a Model Context Protocol (MCP) server

C. Azure AI Search

D. Microsoft Copilot Studio

-----

Correct Answer: B

Explanation/Reference:

n Microsoft Foundry, the Model Context Protocol (MCP) is the architectural standard used to decouple an agent's logic from its toolset, allowing it to discover and use external tools at runtime without requiring code updates or re-deployment.

Why an MCP Server is Required Traditionally, integrating a tool required "hardcoding" its schema into the agent's definition. MCP replaces this with a dynamic discovery model:

Decoupling: The agent is only configured with the MCP server endpoint rather than individual tool definitions.

Runtime Discovery: When the agent starts a session, it queries the MCP server for a manifest of available tools, their parameters, and descriptions.

Zero-Update Scaling: You can add new capabilities to the MCP server (e.g., a new database query or API connection), and the agent will automatically "see" and use them in the next turn without any changes to the agent itself.


### QUESTION 22


A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You add fields to the opportunity summary.

Does this meet the goal?

A. Yes

B. No

------

Correct Answer: A

Explanation/Reference:


Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries.

Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.
- Select the checkboxes for the fields you want to include.
- You can select out-of-the-box, custom, and related table fields.
- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 23

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You build Microsoft Power Automate flows to trigger customized Copilot summaries.

Does this meet the goal?

A. Yes

B. No

---

Correct Answer: B

Explanation/Reference:

Explanation:

Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries.

Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.

- Select the checkboxes for the fields you want to include.

- You can select out-of-the-box, custom, and related table fields.

- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 24

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You configure AI Builder lead scoring models to influence opportunity summaries.

Does this meet the goal?

A. Yes

B. No

---

Correct Answer: B

Explanation/Reference:



Correct:

* You add fields to the opportunity summary.

Incorrect:

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.
* You configure AI Builder lead scoring models to influence opportunity summaries


Note: To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.


Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

- Click Add fields.

- Select the checkboxes for the fields you want to include.

- You can select out-of-the-box, custom, and related table fields.

- Save: Click Add and then Save your changes to update the summary configuration.


### QUESTION 25

A company has a Microsoft Dynamics 365 Sales environment that has Microsoft Copilot enabled.

You need to customize Copilot by tailoring how opportunity summaries are generated or how they are presented to users.

Solution: You add the opportunity summary widget to the Opportunity form.

Does this meet the goal?

A. Yes

B. No

---


Correct Answer: B 

**Explanation/Reference:**


Explanation:

Correct:

* You add fields to the opportunity summary.

Incorrect:

* You add the opportunity summary widget to the Opportunity form.

* You build Microsoft Power Automate flows to trigger customized Copilot summaries.

* You configure AI Builder lead scoring models to influence opportunity summaries


Note:

To customize Microsoft Copilot opportunity summaries and incorporate AI Builder lead scoring data, you must configure the specific fields Copilot uses to ground its generative AI outputs.

By default, Copilot for Sales generates summaries using a set of predefined fields. To "influence" these summaries with scoring data, you need to add the predictive score and grade fields to the Opportunity summary configuration.

Step-by-Step Configuration Switch Area: In the Sales Hub app, select the Change area menu in the bottom-left corner and choose App Settings.

Navigate to Copilot: Under General Settings, select Copilot.

Select Entity: Choose the Opportunities tab.

Add Fields:

Click Add fields.

Select the checkboxes for the fields you want to include.

You can select out-of-the-box, custom, and related table fields.

Save: Click Add and then Save your changes to update the summary configuration.