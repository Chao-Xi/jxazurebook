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