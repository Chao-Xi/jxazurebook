# 1 AI Agent Builder Associate (AB-620)

## AGENDA

**Agent Orchestration**

- 3 Pieces of Every Agent
- Agent Ecosystem
- Perfecting Performance

**Agent Knowledge**

- Copilot Connectors
- Generative Answers
- Content Moderation

**Agent Tools**

- Inputs & Outputs
- Authentication
- What is Available

**Evaluations & ALM**

- Evaluations
- Environments
- Solutions

## 1 WHAT IS AGENT ORCHESTRATION?

Agent orchestration is the process of coordinating **multiple specialized tools, capabilities, and Al agents** to work together efficiently on **complex tasks, ensuring seamless collaboration, task allocation, and workflow management.**

### 1-1 3 PIECES OF EVERY AGENT

#### **Knowledge**

**Knowledge sources ground your agent's responses in authoritative information from the content and data sources you configure.** 

Knowledge sources are the integration type for answering questions.

#### Tools

**Tools enable your agent to take action in external systems.** 

Tools are the integration type for doing things.

#### Agents

**Agents allow your agent to delegate tasks to other specialized agents.** 

Agent connections are the integration type for handing off reasoning.

### 1-2 AGENT ORCHESTRATION

#### AGENT LEVEL

- You can add **knowledge, tools, and agents directly to your agent**
- This gives the model (or orchestrator) the ability to call on that resource when it thinks it is necessary
- **Some tools can only be called by the agent**
- *More Indeterministic*

#### TOPIC/NODE LEVEL

- You can add **knowledge, tools, and agents to the flow of a topic**
- This gives you, the author, **the ability to define when specific resources are called on**
- Some tools can only be called inside a topic
- More **Deterministic**

### 1-3 AGENT ORCHESTRATION

#### CHILD AGENTS

- A child agent is a focused workflow created directly **within your parent agent in Copilot Studio**.
- **Child agents have their own set of instructions, tools, and knowledge**, and the **parent agent calls it as a subroutine when a relevant request arrives.**
- **Child agents share the parent's context, which makes passing conversation state and variables between them straightforward**
- They don't have an independent publishing lifecycle, so when you update or deploy the parent, the children go with it.
- **The same team that builds the parent agent co-owns and co-manages all its child agents.**

#### CONNECTED AGENTS

- A connected agent is a separately published agent with its **own orchestration, tools, knowledge, and deployment lifecycle.**
- **From your main agent's perspective, a connected agent looks like a "tool with a description”:**
  - your agent routes to it based on that description, and the connected agent uses its own reasoning layer to handle what's been delegated.
- Connected agents can be owned by a different team, released through standard/release processes, and made available to the orchestrating agent.

#### **CHILD AGENTS**

Build child agents when:

- Your team builds and maintains the full agent solution
- **Components don't need to be published separately or accessed directly by users**
- **No separate authentication, model configuration, or ALM process is required**
- **The capabilities are specific to this solution and won't be reused by other agents**

#### **CONNECTED AGENTS**

Build connected agents when:

- Another team already owns and maintains the capability you need
- The agent is already published and should continue operating independently
- You need separate deployment, configuration, or testing cycles for that component
- The capability should be reusable a orchestrators

### 1-3 AGENT2AGENT PROTOCOL

The **AgentAgent (A2A)** protocol is an open standard for agent-to-agent communication across platform boundaries.

A2A is purpose-built for agent-to-agent delegation: 

scenarios where one agent needs to hand off a task to **another agent that manages its own reasoning, tools, and responses independently.**

When a Copilot Studio orchestrator connects to an **A2A-enabled agent, it doesn't call a function and receive a value back**. 

**Instead, it delegates to the external agent that works through it using its own capabilities and its own logic, and returns an agent-generated response.**


#### CONNECTED AGENTS


Because the Connected Agent is completely separate from the Parent Agent, **the prompt is processed a second time by the Connected Agent.**

This means:

- Higher Token Usage
- Delays in Performance

Child agents do not have this consideration.

### 1-4 IS YOUR AGENT CALLING INCORRECT RESOURCES?

- **Update resource descriptions**

The names and descriptions of tools is what tells the agent when to call on each resource.

- **Segment tasks into child or connected agents**

If your agent has access to too many options, **it has a higher likelihood of making a mistake**.


#### UPDATE RESOURCE DESCRIPTIONS

- **If your agent isn't using the right tools, knowledge, or resources, review their descriptions**.
  - Clear descriptions help the agent understand when each item should be used.
- **The agent doesn't rely on names alone**.
- **Think of descriptions as instructions for the agent.**
  - The more accurate and specific they are, the more likely the agent is to select the correct resource at the right time.
- **Poor descriptions can lead to missed or incorrect resource calls.**
  - Updating them can significantly improve your agent's responses and behavior.

> When a prompt routes to the wrong child agent, the activity map shows which agent was called instead.
>
> For Fabrikam, the prompt "Can I track my package?" unexpectedly calls a different agent rather than Order Status.
>
> A closer look at the descriptions reveals why: "track" and "package" appear in another agent's description but not in Order Status's,
>
> so the orchestrator found the closest textual match and chose incorrectly.

### 1-5 SEGMENT TASKS TO RELATED AGENTS

- The most reliable signal that **a multi-agent architecture is worth considering is routing accuracy degradation in your main agent**.
- As a rule of thumb, when an agent reaches 30-40 choices of action (including topics, tools, and connected agents), the orchestration layer starts to struggle with precision.
- **This threshold isn't a hard limit, and agents with fewer actions but similarly described tools can hit the same ceiling**.
- It's a practical threshold, and one you should validate against your own evaluations.



## 2 AGENT KNOWLEDGE

### 2-1 POWER PLATFORM CONNECTORS

- Real-time knowledge
- **The connector reaches out to the source system on demand**.
- Instead of replicating data into Microsoft Graph, **each query triggers a live API call through the connector at the moment the agent needs an
answer.**
- **No data moves into Microsoft 365.**

### 2-2 COPILOT CONNECTORS

- **<mark>Ingesting and semantically indexing external content into Microsoft Graph</mark>**.
- **Because the content lives in the Graph index, agents retrieve it using semantic search and can cite specific items in their responses.**
- **An administrator must configure the Copilot connector in the Microsoft 365 admin center before you**, as a maker, can add it to an agent.
- Think of Copilot connectors as a "search and index" pattern:
  - **content is ingested once and becomes broadly searchable and citable across Microsoft 365 experiences.**


### 2-3 GENERATIVE ANSWERS

- **You can only use generative answers inside of topics**.
- When a user asks a question, t**he node searches configured knowledge sources and generates a grounded response**.
- When using generative answers, you are effectively answering, " What does our content say about this?"
- The output is always drawn from a defined corpus of information.
- When a generative answers node has its own sources configured, those sources take priority over the agent-level sources for that node.
  - <mark>**Agent-level sources act as a fallback, used only when a node has no sources of its own**.</mark>


### 2-4 AZURE AI SEARCH

**Description:** **A retrieval service that enables agents to ground responses using indexed enterprise content** for more accurate and relevant answers.


#### Business Value / When to Use

- Used when organizations maintain their own search indexes and vector stores.
- **Improves answer quality through Retrieval Augmented Generation (RAG).**
- **Ideal for large document repositories and enterprise knowledge bases.**
- **Supports highly relevant responses using semantic and vector search.**

#### **Exam Tips & Gotchas**

- Used when content exists outside Microsoft Graph.
- Often selected when organizations have already invested in Azure search infrastructure.
- Focuses on helping agents answer questions, not perform actions.



### 2-5 CONTENT MODERATION


In Copilot Studio, Content Moderation is the safety layer that evaluates both user inputs and Al-generated outputs **to help prevent harmful, unsafe, offensive, or policy-violating content from entering or leaving your agent.**

You'll encounter content moderation in several places:

- **Agent-level Generative Al settings**
- **Al Prompt tools (Prompt Builder)**
- Generative Answer nodes


Microsoft states that content is evaluated both:

- **When the user submits a prompt/input**.
- Before the Al response is returned to the user.

## **3 Agent Tools**

### 3-1 UNDERSTANDING & INPUTS & OUTPUTS

Every action an agent **performs requires inputs and produces outputs** -variables and topics allow you to capture, store, transform, and reuse that information throughout the conversation.

#### **How it works**

1. **Gather Inputs** - Collect information from users through conversation, questions, previous actions, or adaptive cards.
2. **Store in Variables** - Use topic variables and global variables to hold user responses, action parameters, and business data.
3. **Execute Actions** - Pass variables as inputs to tools.
4. **Capture Outputs** - Store returned values such as records, status codes, approvals, or summaries in variables.
5. **Transform and Reuse** -** Format, parse, combine, conditionally evaluate, or enrich outputs before presenting them to users or the next action.**

**For example:**

- User provides an Employee ID.
- Store Employee ID in a variable.
- **Pass the variable to an HR connector action**.
- Capture the employee record returned by the connector.
- **Extract the employee name, department, and manager.**
- Use those values in subsequent actions or responses.

> EVERY TOOL MUST AUTHENTICATE WITH THE SYSTEM IT IS CALLING.

HOW IS ACCESS TO EACH TOOL MANAGED?

#### **Run as the Maker (Maker Connection)**

How it works: The action executes using the credentials or connection owned by the agent creator. **All users leverage the same underlying access context.**

#### **Business Value:** 

- Simplifies access to shared systems.
- Allows users to interact with data sources they may not have direct access to.

### 3-2 Run as a Service Account Connection) (Application Identity)

- **How it works:**

**Actions execute using a dedicated service principal, managed identity, or service account rather than an individual person**.


- **Business Value:**

  - Most scalable and enterprise-ready option.
  - Eliminates dependency on a specific employee account.


### 3-3 AUTHENTICATION

#### No Authentication

No credentials are required and suitable for **when the target endpoint is publicly accessible.**

#### Auth 2.0 (Most Common)

Users sign in with their Microsoft Entra ID and access tokens are issued and used when the agent executes actions.

#### API Key Authentication

A static API key is passed with each request that identifies the application rather than the individual user.


### 3-4 AGENT TOOLS

- **Connectors**

Prebuilt integrations that allow a Copilot Studio agent to **securely access data and perform actions in Microsoft and third-party applications**.

- **Custom Connectors**

User-defined connectors that **expose proprietary, internal, or unsupported APis as tools that an agent can invoke**.

- **MCP**

Standardized tool endpoints that allow agents to discover and interact with external systems, data sources, and capabilities through the **Model Context Protocol.**

- **Agent Flows**

Structured, automated workflows that allow agents to execute business processes, orchestrate actions, and manage complex tasks across systems.

- **REST APIs and HTTP**

Direct web service calls that enable agents to interact with virtually any application or service that expose an HTTP-based API.

- **AgentAgent Protocol**

A communication framework that allows one Al agent to securely collaborate, delegate tasks, and exchange information with other agents.


### 3-5 CONNECTORS

**Description** Prebuilt integrations that allow a Copilot Studio agent to securely **access data and perform actions in Microsoft and third-party applications.**

**Business Value / When to Use**

- Fastest way to integrate with existing business systems.
- Ideal when a Microsoft or Power Platform connector already exists.
- Allows agents to perform actions such as creating tickets, sending emails, updating records, or retrieving business data.
- Common examples include Outlook, Teams, SharePoint, Dataverse, Salesforce, ServiceNow, and Dynamics 365.


**Exam Tips & Gotchas**

- Always check whether a prebuilt connector exists before considering a custom connector or API integration.
- **Connectors can use End User Authentication or Maker-Provided Authentication**.
- **Power Platform connectors provide real-time access to data at runtime.**
- **Authentication strategy is an important design consideration during solution planning**.

### 3-6 REST API

**Description:** 

- Reusable agent tools that expose an external application's functionality through 

- REST endpoints, allowing Copilot Studio to invoke business capabilities and exchange structured data.

#### **Business Value / When to Use**

- **Expose application capabilities as reusable agent tools**.
- Allow orchestration to dynamically determine when an API should be called.
- Reduce the need to build extensive topic logic for external system interactions.
- **Execute agent-specific integrations**


#### Exam Tips & Gotchas

- **REST APIs are exposed as agent-level tools that can be reused across conversations and topics.**
- **Most enterprise systems expose REST APIs.
- REST APIs can accept inputs and return structured outputs that become agent variables.
- Authentication considerations (Auth, API Keys, Service Principals) are often part of the design.

### 3-7 HTTP

**Description:** A direct integration method that allows topics and agent flows to send web requests to external services **using HTTP methods such as GET, POST, PUT, and DELETE.**

**Business Value / When to Use**

- Rapidly integrate with an external endpoint.
- Call APIs when a connector doesn't exist without building reusable assets.
- Prototype integrations before investing in a custom connector.
- Integrate with niche or internal applications

**Exam Tips & Gotchas**

- **HTTP requests are often implemented directly within Topics**.
- The maker is responsible for defining: **URL, HTTP Method, Headers, Authentication, Request Body, Response Handling**
- API responses frequently need parsing and transformation before use.
- HTTP requests as a good option when:
  - No connector exists,
  - A simple API call is needed,
  - The integration is not expected to be broadly reused


### 3-8 CONNECTORS

#### Custom Connectors

When multiple components (apps, flows, agents, etc.) need to use it.

#### REST APIs

When one agent needs to use it multiple times.

#### HTTP

When one agent needs to only use it once.(and it is not foreseeable for this to change)

### 3-9 MODEL CONTEXT PROTOCOL (MCP)

Description: **Standardized tool endpoints that allow agents to discover and interact with external systems, data sources, and capabilities through the Model Context Protocol**.

**Business Value / When to Use**


- **Provides a standardized mechanism for exposing tools to Al agents**.
- Reduces custom integration work.
- Promotes interoperability between Al systems and enterprise capabilities.
- **Enables agents to discover available tools and invoke them dynamically**.

**Exam Tips & Gotchas**

- MCP is about tool access and capability exposure in a scalable way.
- **You configure MCP tools directly within Copilot Studio.**
- **MCP is rapidly becoming a preferred integration standard for Al systems**.

### 3-10 AGENT FLOWS

Description: **Structured, automated workflows that allow agents to execute business Processes, orchestrate actions, and manage complex tasks across systems.**

#### Business Value / When to Use

- **Best for multi-step business processes**.
- **Coordinates actions across multiple systems**.
- **Enables approvals, human-in-the-loop scenarios, and automation.**
- Allows logic, branching, error handling, and orchestration to be separated from the conversation layer.

#### Exam Tips & Gotchas

- Agent Flows **can accept inputs and return outputs to topics.**
- Agent Flows **must respond back to the agent within approximately 100 seconds**.
- **A flow can return a response early while additional processing continues in the background**.
- Error handling should be incorporated into flow design.
- **Think of Agent Flows as the "process automation" layer.**


<mark>**BE CAUTIOUS OF AGENT FLOW TIMEOUT.  (100 SECONDS)**</mark>

### 3-11 AGENTAGENT PROTOCOL

Description: A communication framework that allows one Al agent to securely collaborate, delegate tasks, and exchange information with other agents.

#### Business Value / When to Use

- Enables multi-agent architectures.
- **Allows specialized agents to perform work on behalf of another agent**.
- Creates scalable agent ecosystems where agents focus on specific domains.
- **Useful when individual agents become too large or too complex.**

#### Exam Tips & Gotchas

- A2A is an open standard for agent-to-agent communication.
- When using A2A, the task is fully delegated to the target agent.
- The target agent is responsible for reasoning, execution, security, and tool usage.
- Key concepts:
  - **Agent Cards = Agent metadata and capabilities (Usually located at /.well-known/agent.json)**
  - **Tasks = Unit of work being delegated**
  - **Context IDs = Conversation tracking across agent boundaries**

> What do you do AFTER building your agent?



## 4 EVALUATIONS

- Run evaluations and analyze the results to **optimize your agent's behavior and validate that your agent meets your business and quality requirements.**
- You can also run a test set multiple times **to see changes over time as you improve your agent.**
- **An evaluation takes a few minutes to run. Test results are processed in real-time, line by line**.
- You see the result of each evaluation test case appear sequentially as they're generated.
- Live processing of test cases gives you immediate visibility into quality trends and potential failures while the evaluation is running.


### 4-1 EVALUATIONS

These questions came a surprised and were the most challenging (at least in my opinion)

(Exercise) Ask yourself:

### 4-2 ENVIRONMENTS

**Environments are isolated containers within Power Platform that store and manage your Copilot Studio agents, flows, connections, Dataverse data, and related components.**

Why they matter for ALM:

- Separate development, testing, and production workloads.
- Enable safe testing without impacting production users.
- Help enforce governance, security, compliance, anc access controls.
- Support solution-based deployments and promotion between environments.
- Provide environment-specific configurations through environment variables.

### 4-3 UNDERSTANDING SOLUTIONS

**Solutions are the primary ALM mechanism in Power Platform, used to package, transport, and manage Copilot Studio agents and related components across environments.**

- **Unmanaged Solutions**:
  - Used during development and allow makers to modify components.
- **Managed Solutions**
  - Used for production deployments and protect deployed components from direct modification.


> All Solutions should be exported as MANAGED
>
> You cannot "convert" solutions to managed.
>
> This option is selected on export and cannot be changed.


### 4-4 ENVIRONMENT VARIABLES

Environment Variables allow you to store configuration values separately from your agent's logic, making solutions portable across Development, Test, and Production environments.

Instead of hard-coding values such as URLs, IDs, API endpoints, or configuration settings, your agent references a variable whose value can change from one environment to another.

**Common Use Cases**

- API endpoints
- Service URLs
- SharePoint site addresses
- Azure resource names
- Agent configuration settings
- Dataverse table references
- Feature flags
- Custom connector configuration

> Not all environment variables behave the same way when their values change.

### 4-5 ENVIRONMENT VARIABLES

#### Non-Secret Environment Variables

**Purpose**: Store standard (not sensitive) configuration values.

**Examples include**: API URLs, SharePoint site URLs, Environment names, Feature flags, Dataverse table names

**When the Value Changes**

- After updating a non-secret environment variable, the change is not immediately reflected in a live Copilot Studio agent.
- The agent must be republished for the updated value to be incorporated into the published version of the agent.

#### Secret Environment Variables

**Purpose**: Store sensitive values securely.

**Examples include**: API Keys, Client Secrets, Access Tokens, Integration Credentials

**When the Value Changes**

- Unlike standard environment variables, secret environment variable updates are typically available immediately to actions and connections that reference them.
- No agent republishing is required.