# AB-620 Designing and Building Integrated AI Agent Solutions Studio in Copilot

## Testlet 1 Case Study

**Background**

Blue Yonder Airlines is a global carrier headquartered in Los Angeles, California, operating domestic and international flights. The company serves millions of passengers annually through its website, mobile app, and call centers. To improve customer service efficiency and reduce call center volume, Blue Yonder is deploying an AI agent in Microsoft Copilot Studio.

**The agent will handle customer inquiries across multiple channels – web chat, mobile app, and Microsoft Teams (for internal support staff)**. It will answer questions, retrieve data from enterprise systems, and escalate to human agents when needed.


The project is led by a cross-function team:

* **Product manager**: Defines requirements and success metrics.

* **Lead agent author**: Designs topics, intents, and generative behavior.

* **Flow designers**: Build agent flows and integrations.

* **IT/security and compliance:** Oversees identity, data protection, and Responsible AI (RAI) compliance.

**Current environment**

Channels

* **Public website**: Embedded web chat 
* **Mobile app:** In-app chatbot 
* **Microsoft Teams**: Internal support agent access

**Identity and access**

* **Customers**: Anonymous access for general inquiries (e.g., flight status, baggage policy). 
* Authentication is required for personal data access (e.g., bookings, loyalty points). 
* **Internal staff: Authenticate via Microsoft Entra ID.**


**Data sources**


- **Reservation and Ticketing System (internal):** REST API, no prebuilt connector with custom enterprise database.
- **Flight Status and Weather APIs (external)**: REST APIs with API keys.
- **Customer Support Knowledge Base**: SharePoint library with PDFs and policy documents. Loyalty Program Data: Stored in Dynamics 365 and Dataverse.
- **Travel Advisory Content**: Uses REST API with partner services.


**Integration mechanisms**

* Custom connectors must be used for internal APIs that lack prebuilt connectors. 
* HTTP request nodes may be used for lightweight external APIs.
* Knowledge sources must be used for unstructured content.
* Agent flows must be used to encapsulate reusable logic (e.g., rebooking).


**Business requirements**

**Omnichannel support**

Deploy the agent across web, mobile, and Teams with a consistent user experience. The Teams deployment must also support internal staff.


**Self-service capabilities** 


- The agent must handle common inquiries such as:

- Flight status

- Booking and rebooking

- Loyalty program questions

- Travel policies and baggage rules


**Human escalation** 

- If the agent cannot resolve an issue or the user requests help, it must:
- Escalate to a human agent.
- Transfer the conversation transcript and relevant context.
- Redact any sensitive personal data before escalation.


**Knowledge integration**

The agent must use scalable methods for knowledge integration and must not rely on manually authored Q&A topics for each document.


**Performance metrics**

- **First-contact resolution:** +25% 
- **Tier-1 call deflection**: ≥20% 
- **Response time**: 90% of queries answered within 30 seconds 
- **Accuracy**: ≥95% for known FAQs 
- **CSAT**: ≥85% for AI-handled interactions


**Technical requirements** 

**Platform constraints**

* No custom code is permitted; only Copilot Studio's built-in tools may be used.
* All backend logic must be implemented using agent flows.
* Markdown must be used for formatting (e.g., bold, bullet points); HTML is not supported.

**Authentication** 

- Sign-in is required for personal data access.
- Anonymous access is allowed for general inquiries.
- User identity must be used for data access; shared or builder credentials must not be used.

**Compliance and security**

- Power Platform DLP policies must be enforced to block unauthorized data flows.
- Responsible AI content moderation filters must be enabled.
- Prompt modifications must be added to enforce tone, disclaimers, and refusal behavior. 
- Disclaimers must be applied consistently across all generative responses. Manual edits to individual topics must be avoided.


**Monitoring and maintenance**

* All conversations and actions must be logged for auditing.
* Weekly reviews of transcripts and metrics must be conducted.
* Topics, flows, and knowledge sources must be updated as policies or systems evolve.


**Issues and constraints**

* **API rate limits:** External APIs (e.g., flight status) have usage limits. Agent flows must handle retries and caching to avoid exceeding quotas.

* **Knowledge base limits:** Copilot Studio has limits on the number and size of indexed documents. Large files must be split or summarized.
 
* **Generative answer risks:** Generative responses must be constrained to avoid policy violations. Prompt modifications and filters must be used to enforce tone, safety, and compliance.
 
* **User input variability:** Users phrase questions in diverse ways. Topics must include varied trigger phrases and fallback handling.
 
* **Authentication UX:** The agent must clearly explain when sign-in is required and handle transitions smoothly across channels.


**Problem statement** 

Blue Yonder Airlines must deploy a secure, scalable, and policy-compliant AI agent using Microsoft Copilot Studio. 

The agent must deliver accurate, helpful, and safe responses across multiple channels, integrate with enterprise systems, and support both anonymous and authenticated users. 

It must adhere to strict data protection and Responsible AI standards while improving customer service efficiency and satisfaction


### QUESTION 1

You need to configure the agent in Copilot Studio to meet Blue Vender's Responsible AI and data protection requirements.

Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

Select and Place:


Responsible AI and data protection requirements

1. Add custom prompt modifications.
2. Conduct adversarial testing.
3. Define Data Loss Prevention (DLP) policies.
4. Integrate with Microsoft Purview.
5. Disable generative answers.
6. Configure content moderation filters.

**Answer Area**

1. []
2. [] 
3. []


------


Explanation/Reference:

Explanation:

Scenario: Problem statement: The agent must adhere to strict data protection and Responsible AI standards while improving customer service efficiency and satisfaction.

**Step 1: Define Data Loss Prevention (DLP) policies** 

Security and compliance must be established at the foundation level. Admins use the Power Platform admin center to configure DLP policies. This establishes environmental guardrails by restricting unauthorized data connectors or preventing the agent from leaking sensitive data.

**Step 2: Add custom prompt modifications** 

Once the environment is secure, the maker configures the specific behavior of the agent. Custom prompt modifications and agent instructions shape the tone, define conversational topics, and establish explicit boundaries for the generative model (e.g., instructing the model to strictly stay within its knowledge base).

**Step 3: Conduct adversarial testing**

This is the final evaluation phase before deployment. After the guardrails and custom prompts are in place, you simulate real-world attacks (such as jailbreaks, prompt injections, or malicious user inputs) to verify that the agent reliably adheres to your corporate guidelines and Microsoft's Responsible AI standards.


### QUESTION 2

You need to evaluate whether the current configuration decisions for the Blue Yonder Copilot agent comply with the company's security and governance policies.

Which compliance status should you assign to each configuration decision? To answer, move the appropriate compliance statuses to the correct configuration decisions. You may use each compliance status once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.


NOTE: Each correct selection is worth one point.


**Compliance statuses**

- Compliant
- Non-compliant

**Compliance configuration**

| # | Configuration decision                                                           | Compliance status |
|---|---|---|
| 1 | The agent allows anonymous access to general inquiries such as baggage policies. |                   |
| 2 | The agent uses an open web search to answer questions beyond internal knowledge. |                   |
| 3 | The team relies only on default content filters without custom RAI instructions. |                   |
| 4 | The agent uses one shared admin credential for all internal data access.         |                   |


------

**Correct Answers**

| # | Configuration Decision | Compliance Status | Explanation |
|---|---|---|---|
| 1 | The agent allows anonymous access to general inquiries such as baggage policies. | **Compliant** | Anonymous access is permitted for general inquiries. Authentication is required only when accessing personal data. |
| 2 | The agent uses an open web search to answer questions beyond internal knowledge. | **Non-compliant** | Open web search may introduce unverified information and conflict with requirements to constrain generative responses. |
| 3 | The team relies only on default content filters without custom RAI instructions. | **Non-compliant** | Custom prompt modifications are required to enforce tone, disclaimers, and refusal behavior consistently. |
| 4 | The agent uses one shared admin credential for all internal data access. | **Non-compliant** | Internal data access must use the user's identity rather than shared or builder credentials. |

                             
> **explanation/Reference:**

Explanation:

Box 1: Compliant Anonymous access is allowed for general inquiries.

Box 2: Non-compliant Should use only internal sources.

The agent must handle common inquiries such as:

Flight status Booking and rebooking Loyalty program questions Travel policies and baggage rules

Box 3: Non-compliant Responsible AI content moderation filters must be enabled.

Box 4: Non-compliant User identity must be used for data access; shared or builder credentials must not be used. 


### QUESTION 3 


You need to deploy the Blue Yonder Copilot agent to the public website and Microsoft Teams while ensuring compliance with the company's security and Responsible AI requirements.

Which two actions should you perform before making the agent available on both channels? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Configure prompt modifications to enforce tone, disclaimers, and refusal behavior at the system level.

B. Manually add disclaimers to each topic before publishing.

C. Embed the web channel and then rely on channel-level settings to enforce content moderation.

D. Configure Power Platform DLP policies to restrict unauthorized data connectors.

E. Publish the agent and then enable Responsible AI filters individually for each channel.                           
                             
        
------                     
       
**QUESTION 3 — Correct Answers**

**Correct answers: A and D**

- A. Configure prompt modifications to enforce tone, disclaimers, and refusal behavior at the system level.
- D. Configure Power Platform DLP policies to restrict unauthorized data connectors.

Why not the other options?

- B: Disclaimers should be applied consistently through shared/system-level configuration, not manually added to every topic.
- C: Embedding the web channel does not replace agent-level Responsible AI configuration.
- E: Responsible AI safeguards should be configured before publication, not postponed until afterward.



Exam tip: When the question emphasizes both consistent generative behavior and data protection, choose prompt modifications + DLP policies.  

**逐项分析**

| 选项 | 判断     | 原因    |
| --- | ----| --- |
| A  | ✅ 正确   | 使用系统级或 Agent 级 prompt modifications，统一控制语气、免责声明和拒绝行为。   |
| B  | ❌ 错误   | 场景明确要求统一配置，避免逐个 Topic 手动添加免责声明。    |
| C  | ❌ 错误   | Web channel 的嵌入设置不能代替 Responsible AI 内容安全配置。                |
| D  | ✅ 正确   | 场景明确要求强制实施 Power Platform DLP policies，限制未经授权的数据连接器和数据流。    |
| E  | ⚠️ 有争议 | 启用 Responsible AI 内容过滤符合场景要求，但选项要求先发布，再逐个 Channel 启用，顺序不合理。 |

**最终判断**

- 按照题目给出的完整场景和选项措辞：A、D 更合理。
- 如果官方答案确实是 A、E： 出题者可能想考查 prompt modifications 和 Responsible AI content moderation filters 这两个功能，而忽略了 E 中发布顺序的问题。

考试记忆重点：

- Prompt modifications → 统一控制生成式回答的行为。
- Content moderation filters → 过滤不安全内容。
- DLP policies → 管控连接器及数据流。

因此，如果你正在准备考试并且已有可靠的官方答案来源，可以暂时记录 A、E（题库答案），但需要注意：从严格的技术和安全部署顺序来看，E 的措辞并不严谨。


### QUESTION 4 

You need to configure the Blue Yonder Copilot agent's responses in accordance with the company's content control and platform requirements.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Add required disclaimer text inside each individual topic.

B. Configure prompt instructions that include disclaimer text.

C. Use Markdown syntax within response content.

D. Insert HTML formatting directly into topic responses.

E. Duplicate disclaimer text across reusable topics.


----

**QUESTION 4 — Correct Answers: B and C**

- B. Configure prompt instructions that include disclaimer text.
- C. Use Markdown syntax within response content.

Explanation

- B — Correct: Prompt instructions can define consistent disclaimer text for generative responses, avoiding manual edits to each individual topic.
- C — Correct: The scenario explicitly requires Markdown formatting and states that HTML is not supported.
- A — Incorrect: Adding disclaimers to every topic creates unnecessary manual work and does not ensure consistent handling across all generative responses.
- D — Incorrect: HTML formatting is not supported by the platform requirements.

Exam tip: Consistent disclaimers → prompt instructions; supported formatting → Markdown.


Correct Answer: BC Section: (none) Explanation/Reference:

**Explanation:**

Scenario: **Platform constraints** No custom code is permitted; only Copilot Studio's built-in tools may be used.

**All backend logic must be implemented using agent flows.**

**[C] Markdown must be used for formatting (e.g., bold, bullet points); [Not D] HTML is not supported.**

**[B] Disclaimer text.**

The best approach is to configure prompt instructions that include disclaimer text.

This method ensures the disclaimer is applied universally to all AI-generated responses without manual duplication across topics. It scales effectively and reduces maintenance overhead.

### QUESTION 5 


You need to configure the agent in Copilot Studio to use internal and external partner knowledge sources to answer user questions about the airline services.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Use a Microsoft Graph connector to index the partner's travel advisory content.

B. Write individual Q&A pairs for each document as separate topics.

C. Enable unrestricted web search for the agent.

D. Add the internal policy documents as a knowledge source.

----

**[A] External Scenario:**

Data sources include:

Travel Advisory Content: Uses REST API with partner services.

Configuring a Microsoft Graph connector to index your external data and utilizing REST APIs are highly effective and distinct strategies for supplying knowledge and actions in Microsoft Copilot Studio.

**[D] Internal Scenario:**

The agent will handle customer inquiries across multiple channels – web chat, mobile app, and Microsoft Teams (for internal support staff). It will answer questions, retrieve data from enterprise systems, and escalate to human agents when needed.

Data sources include: Customer Support Knowledge Base: SharePoint library with PDFs and policy documents.

---

Correct Answers: A and D

- A. Use a Microsoft Graph connector to index the partner's travel advisory content.
- D. Add the internal policy documents as a knowledge source.

 Explanation

- A — Correct: A Microsoft Graph connector can make external partner content available through Microsoft Graph-based search and knowledge integration, when the partner source and connector are supported.
- D — Correct: Internal policy documents should be added as a knowledge source so the agent can answer questions using unstructured content.

Why the other options are incorrect

- B: Creating individual Q&A topics for every document is not scalable and contradicts the requirement to use knowledge sources.
- C: Unrestricted web search risks introducing unverified information and conflicts with the requirement to constrain generative responses.

Exam tip: Use knowledge sources for internal documents and supported connectors for external partner content.

### QUESTION 6 

You need to ensure that every AI-generated response from the agent in Copilot Studio includes a disclaimer that complies with the company's security and governance policies.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Add a greeting message that includes the disclaimer.

B. Add a prompt modification in the generative answers node settings.

C. Create a disclaimer topic that always runs first.

D. Disable generative answers and use only pre-authored responses.

E. Edit every topic's first message to include the disclaimer.

-----

**Correct Answer: AB Section: (none)**

Explanation/Reference: 

Explanation:

[A]   Adding a mandatory disclaimer to your greeting message is the best practice for agent governance. You can enforce this by configuring your Greeting System Topic **and adding formal "Output Rules" to the agent's core instructions.**

[B] Using prompt modification in the Generative Answers node settings is an excellent and highly effective strategy for embedding compliance disclaimers into your agent's responses.

### QUESTION 7 

You need to determine which authentication model should be applied to each Blue Yonder Copilot interaction scenario to comply with the company's security and governance requirements.

Which authentication requirement should you apply to each scenario? To answer, move the appropriate authentication requirements to the correct user scenarios. You may use each authentication requirement once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



**Authentication requirements (Options)**

* Allow anonymous access.
* Require customer sign-in using an account.
* Require internal agent sign-in using Microsoft Entra ID.
* Use agent author credentials for authenticated data calls.


| User scenario | Authentication requirement |
| :--- | :--- |
| A customer asks, "What is the baggage allowance for international flights?" | [ 空白框 ] |
| A customer asks, "Can I review my upcoming trips?" | [ 空白框 ] |
| An internal support agent accesses the Copilot agent from Microsoft Teams to look up a loyalty member's profile. | [ 空白框 ] |

----

**Correct Answers — Authentication Requirements**

| User scenario        | Correct authentication requirement                       |
| ---- | ---  |
| 1. A customer asks, “What is the baggage allowance for international flights?”                                      | Allow anonymous access.                                  |
| 2. A customer asks, “Can I review my upcoming trips?”                                                               | Require customer sign-in using an account.               |
| 3. An internal support agent accesses the Copilot agent from Microsoft Teams to look up a loyalty member's profile. | Require internal agent sign-in using Microsoft Entra ID. |

**Explanation**

1. General information: Baggage policies are public information, so authentication is not required.
2. Personal booking information: Upcoming trips contain personal data, so the customer must sign in.
3. Internal staff access: Employees must authenticate through Microsoft Entra ID to access internal customer information.

Unused option: Use agent author credentials for authenticated data calls.

This option is incorrect because the scenario explicitly requires user identity for data access, not shared or maker credentials.


**Box 1: Allow anonymous access.**

Scenario: **Customers**: Anonymous access for general inquiries (e.g., flight status, baggage policy).

**Box 2: Require customer sign-in using an account.**

Scenario: Authentication is required for personal data access (e.g., bookings, loyalty points).

**Box 3: Require internal agent sign-in using Microsoft Entra ID.**

Scenario: **Internal staff:** Authenticate via Microsoft Entra ID.


## Question Set 2

### QUESTION 1 


A company has an existing custom connector that is approved and available in the environment. A builder wants an agent in Copilot Studio to call the connector during a conversation to retrieve information from an internal system.

To meet the business needs, the solution must meet the following requirements:

* The agent must make the connector available for topic steps.
* The agent must run the connector call with a valid connection.
* The connector call must receive the required input values at runtime.

You need to configure the agent so the custom connector can be used as a tool.

What should you configure for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



**Configurations (Options)**

* Map topic variables to the tool inputs.
* Add the connector as a tool in the agent.
* Add the connector as a knowledge source.
* Create or reuse a connection for the connector.


| Requirement | Configuration |
| :--- | :--- |
| The agent must make the connector available for topic steps. | [ 空白框 ] |
| The agent must run the connector call with a valid connection. | [ 空白框 ] |
| The connector call must receive the required input values at runtime. | [ 空白框 ] |


----

**Correct Answers**

| Requirement                                                              | Configuration                                   |
| ------------------------------------------------------------------------ | ----------------------------------------------- |
| 1. The agent must make the connector available for topic steps.          | Add the connector as a tool in the agent.       |
| 2. The agent must run the connector call with a valid connection.        | Create or reuse a connection for the connector. |
| 3. The connector call must receive the required input values at runtime. | Map topic variables to the tool inputs.         |

**Explanation**

1. Add the connector as a tool in the agent — makes the custom connector available for the agent to invoke.
2. Create or reuse a connection for the connector — provides the authenticated connection required to execute the API operation.
3. Map topic variables to the tool inputs — passes the required runtime values to the connector.

Unused option: Add the connector as a knowledge source. A connector used to execute API actions is a tool, not a knowledge source.


**Correct Answers**

| Requirement                                                              | Configuration                                   |
| ------------------------------------------------------------------------ | ----------------------------------------------- |
| 1. The agent must make the connector available for topic steps.          | Add the connector as a tool in the agent.       |
| 2. The agent must run the connector call with a valid connection.        | Create or reuse a connection for the connector. |
| 3. The connector call must receive the required input values at runtime. | Map topic variables to the tool inputs.         |

**Explanation**

1. Add the connector as a tool in the agent — makes the custom connector available for the agent to invoke.
2. Create or reuse a connection for the connector — provides the authenticated connection required to execute the API operation.
3. Map topic variables to the tool inputs — passes the required runtime values to the connector.

Unused option: Add the connector as a knowledge source. A connector used to execute API actions is a tool, not a knowledge source.


### QUESTION 2 

A company needs to ground an agent in Copilot Studio answers using live enterprise data from a supported system via a Microsoft Power Platform connector.

To meet the business needs, the builder must meet the following requirements:

Authenticate using a valid connection.

Add the connector as a real-time knowledge source.

Select the tables for knowledge grounding.

You need to add a Power Platform connector as a real-time knowledge source for the agent.

In which order should you perform the actions? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.


以下是提取并整理为 Markdown 格式的内容，您可以直接复制：

Select and Place:

**REST API (Options)**

1. Select Sign in and create a new connection or reuse an existing connection.
2. Select the tables to include as the knowledge source.
3. Select Add knowledge from the agent Knowledge experience.
4. Select the real-time connector from the Add knowledge dialog.
5. Select Add to agent to complete the connection.


| Answer Area |
| :--- |
| **1** [ 空白框 ] |
| **2** [ 空白框 ] |
| **3** [ 空白框 ] |
| **4** [ 空白框 ] |
| **5** [ 空白框 ] |


----

**Correct Order**

| Step | Action                                                                      |
| ---- | --------------------------------------------------------------------------- |
| 1    | Select Add knowledge from the agent Knowledge experience.                   |
| 2    | Select the real-time connector from the Add knowledge dialog.               |
| 3    | Select Sign in and create a new connection or reuse an existing connection. |
| 4    | Select the tables to include as the knowledge source.                       |
| 5    | Select Add to agent to complete the connection.                             |

**Sequence to remember**

Add knowledge → Select connector → Sign in → Select tables → Add to agent

This sequence first starts the knowledge-source setup, then selects the connector, establishes authentication, chooses the data to ground answers, and completes the configuration.


Step 1: Select Add knowledge from the agent Knowledge experience Initiate: You start in the Knowledge tab to trigger the addition.

Step 2: Select the real-time connector from the Add knowledge dialog Identify: You pick the specific system/connector from the menu.

Step 3: Select Sign in and create a new connection or reuse an existing connection Authenticate: You log in to ensure permissions to the enterprise data.

Step 4: Select the tables to include as the knowledge source Configure: You isolate the exact tables needed for grounding.

Step 5: Select Add to agent to complete the connection Finalize: You save and bind the source to your agent.

### QUESTION 3

You deploy an agent in Microsoft Copilot Studio that triggers a cloud flow to update customer records in Microsoft Dataverse.

You observe the following after deploying the agent:

* Several runs fail due to a temporary authentication issue.

* The flow continues to trigger and generate additional failed runs. 

You must:

* Stop additional failed executions while troubleshooting.
* Process a failed execution after resolving the authentication issue.
* Validate if the most recent executions succeeded immediately after resolution.

You need to use the appropriate monitoring and management actions to restore normal flow operation and validate successful execution.

Which action should you perform for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


**Flow monitoring actions**

| Requirement | Action |
| :--- | :--- |
| Stop additional failed executions while troubleshooting. | [ 下拉选项框 ]<br>- Delete the flow.<br>- Disable the flow.<br>- Cancel the most recent run.<br>- Modify the trigger condition. |
| Process a failed execution after resolving the authentication issue. | [ 下拉选项框 ]<br>- Restart the flow.<br>- Refresh the flow.<br>- Resubmit the run.<br>- Recreate the trigger. |
| Validate if the most recent executions succeeded immediately after resolution. | [ 下拉选项框 ]<br>- Republish the flow.<br>- Review the Activity history.<br>- Export the flow to a solution.<br>- Inspect the Analytics summary. |

---

Correct Answers

| Requirement                                                                       | Correct action               |
| --------------------------------------------------------------------------------- | ---------------------------- |
| 1. Stop additional failed executions while troubleshooting.                       | Disable the flow.            |
| 2. Process a failed execution after resolving the authentication issue.           | Resubmit the run.            |
| 3. Validate if the most recent executions succeeded immediately after resolution. | Review the Activity history. |

 Explanation

1. Disable the flow — temporarily stops the flow from triggering new executions while you troubleshoot the authentication issue.
2. Resubmit the run — reruns a failed execution after the authentication issue has been resolved.
3. Review the Activity history — checks recent flow executions and their statuses to confirm whether the runs succeeded.

Exam tip: Disable → Resubmit → Review Activity history.


**Box 1: Disable the flow**

The most appropriate action to address this specific issue is to disable the flow. Immediate Stop: Turning off or disabling the flow completely prevents any new instances from triggering. This satisfies your urgent requirement to halt additional failed executions immediately while you troubleshoot.

Safe Troubleshooting: It pauses all activity without deleting or altering the internal logic of your automation, allowing you to safely fix the authentication token or connection issues.

**Box 2: Resubmit the run** 

The best action to address this specific issue is to resubmit the run.

Efficiency: Resubmitting a failed run starts the cloud flow again from the exact same trigger point using the original data.

No Data Loss: It eliminates the need for the user or the Copilot Studio agent to manually recreate the request.

Targeted Fix: Since the root cause was a temporary authentication error that is now resolved, the original payload is valid and will now process successfully.

**Box 3: Review the Activity history **

In Microsoft Copilot Studio, the Activity history (specifically within the integrated Power Automate cloud flow management or the Copilot's topic run history) allows you to see the real-time execution status of individual runs. This is the only option that lets you immediately validate if the most recent executions succeeded right after resolving the authentication error.


### QUESTION 4 

A company is preparing an agent flow so that it can be invoked by an agent during conversations.

The agent flow must meet the following requirements:

The agent must be able to trigger the flow. The agent flow must be verified.

You need to prepare an agent flow so that it can be used by the agent.

In which order should you perform the actions to prepare the agent flow? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.


以下是提取并整理为 Markdown 格式的内容，您可以直接复制：

Select and Place:

**Agent flow readiness steps (Options)**

* Configure the invocation trigger that allows the agent to call the agent flow.
* Make the agent flow available for agent usage.
* Validate the agent flow behavior with representative test runs.
* Configure the actions that implement the required behavior.
* Create a new agent flow artifact in the environment.



| Answer Area |
| :--- |
| **1** [ 空白框 ] |
| **2** [ 空白框 ] |
| **3** [ 空白框 ] |
| **4** [ 空白框 ] |
| **5** [ 空白框 ] |


----


Correct Order

| Step | Action                                                                         |
| ---- | ------------------------------------------------------------------------------ |
| 1    | Create a new agent flow artifact in the environment.                           |
| 2    | Configure the invocation trigger that allows the agent to call the agent flow. |
| 3    | Configure the actions that implement the required behavior.                    |
| 4    | Validate the agent flow behavior with representative test runs.                |
| 5    | Make the agent flow available for agent usage.                                 |

Sequence to remember

**Create → Configure trigger → Add actions → Test and validate → Make available**

Explanation: First create the flow, then configure the agent-invocation trigger and required actions. Test the flow to verify its behavior, and finally make it available for the agent to use.


**Step 1: Create a new agent flow artifact in the environment **

You must first initialize the flow container within your Copilot Studio workspace before adding any logic.

**Step 2: Configure the invocation trigger that allows the agent to call the agent flow **

You must set up the specialized trigger first (i.e., "When an agent calls the flow"), because this defines the required input variables that the downstream behavioral actions will rely on.

**Step 3: Configure the actions that implement the required behavior **

With the trigger and input variables established, you build the functional core of the flow (e.g., pulling data, sending approvals) and finalize it with the "Respond to the agent" action.

**Step 4: Validate the agent flow behavior with representative test runs**

The workflow needs to be tested and verified directly within the flow authoring interface using test data to check for errors before exposing it to the orchestrator.

**Step 5: Make the agent flow available for agent usage** 

Once verified, you publish the flow and add it to your agent as an active tool so the conversational orchestrator can dynamically call it during live interactions.


### QUESTION 5 

A company uses an agent flow that occasionally requires human input before continuing execution.

Some automated actions must pause until a human provides a decision or additional information. The flow must be configured to:

* Capture a human response for use in later steps.

* Continue processing within the same flow run after the response is submitted. Wait for a manual decision before proceeding.

* You need to configure a human-in-the-loop agent flow.

Which setting should you configure for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.



Hot Area:

**Human-in-the-loop flow configuration**

| Requirement | Configuration |
| :--- | :--- |
| Capture a human response for use in downstream logic. | [ 下拉选项框 ]<br>- Send a notification to a user.<br>- Use the action's response outputs in subsequent steps.<br>- Enable analytics logging for the response. |
| Continue processing within the same flow run after a response is submitted. | [ 下拉选项框 ]<br>- Republish the flow after the decision is submitted.<br>- Trigger a new flow run when a response is received.<br>- Allow the action to wait for and return a response before continuing. |
| Wait for a manual decision before proceeding. | [ 下拉选项框 ]<br>- Add a human approval action.<br>- Add a manual trigger to the flow.<br>- Send a message that asks for input. |


-----


Correct Answers — Human-in-the-Loop Agent Flow

| Requirement                                                                    | Correct configuration                                                 |
| ------------------------------------------------------------------------------ | --------------------------------------------------------------------- |
| 1. Capture a human response for use in downstream logic.                       | Use the action's response outputs in subsequent steps.                |
| 2. Continue processing within the same flow run after a response is submitted. | Allow the action to wait for and return a response before continuing. |
| 3. Wait for a manual decision before proceeding.                               | Add a human approval action.                                          |

**Explanation**

1. Use the action's response outputs in subsequent steps — makes the human's response available to downstream actions and conditions.
2. Allow the action to wait for and return a response before continuing — pauses execution until the response is received, then continues the same flow run.
3. Add a human approval action — introduces an explicit approval or rejection decision before the flow proceeds.

Exam tip: Capture the response → wait and resume → use an approval action for the manual decision.


Explanation/Reference:

Explanation:

**Box 1: Use the action's response outputs in subsequent steps**.

The correct configuration is to use the action's response outputs in subsequent steps.

Data Persistence: Pausing for human intervention (often via a Power Automate "Approval" or "Wait for an Action" step) generates dynamic output variables based on the human's decision.

Flow Continuity: To use the decision or additional information later, the flow must explicitly capture these response outputs and map them to subsequent steps or variables within Copilot Studio.

**Box 2: Allow the action to wait for and return a response before continuing **

The valid configuration is to allow the action to wait for and return a response before continuing.

Same Flow Run: This setting explicitly pauses the current execution thread and waits for the human interaction to complete. Once the response is submitted, it resumes processing exactly where it left off within the same run.

**Box 3: Add a human approval action.**

The correct configuration is to add a human approval action.

Built-in pausing: An approval action natively pauses the workflow execution.

State preservation: The flow holds its current state and waits until the user selects an outcome (e.g., Approve or Reject). Simplicity: It does not require complex logic to save data and restart the process from


### QUESTION 6

A company uses an agent that invokes an agent flow to exchange information during a conversation. The company requires that the agent send data into the flow and receive structured results back from the same flow run. To support this business need, the flow must be configured to do the following:

* Capture the data provided by the agent.

* Return data results to the agent.

You need to configure the flow so that it can exchange data with the agent.

What should you configure for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.




Hot Area:

**Agent flow input and output configuration**

| Requirement | Configuration |
| :--- | :--- |
| Capture the data provided by the agent. | [ 下拉选项框 ]<br>- Use an internal variable.<br>- Add a text input parameter.<br>- Store values only in the topic. |
| Return data results to the agent. | [ 下拉选项框 ]<br>- Log values to run history.<br>- Store values only in the flow.<br>- Add a text output parameter. |

-----

**Correct Answers**

| Requirement                                | Correct configuration        |
| ------------------------------------------ | ---------------------------- |
| 1. Capture the data provided by the agent. | Add a text input parameter.  |
| 2. Return data results to the agent.       | Add a text output parameter. |

 Explanation

1. Text input parameter: Defines an input that the agent passes to the agent flow when invoking it.
2. Text output parameter: Defines an output that the flow returns to the agent after execution.

Exam tip: Agent → Flow = Input parameter; Flow → Agent = Output parameter.


Explanation/Reference:

Explanation:

**Box 1: Add a text input parameter**

To allow a Copilot Studio agent to pass data into a flow and receive structured results back, you must configure a Power Automate flow triggered by the "Run a flow from Copilot" trigger with custom input variables, and concluding with the "Respond to Copilot" action containing structured output parameters.

**Box 2: Add a text output parameter **

To return structured results from an agent flow to your agent in Microsoft Copilot Studio, you should configure the "Respond to the agent" action in your flow with an output parameter.

In Microsoft Copilot Studio, when a topic or bot calls a Power Automate flow, data is sent into the flow via input parameters. To pass data, objects, or structured results back to the copilot during the exact same flow run, you must explicitly define one or more output parameters (such as a text, number, or boolean output) in the "Return value(s) to Power Virtual Agents/Copilot Studio" final step of the flow.


### QUESTION 7 

You are configuring an agent in Copilot Studio for an organization. The organization uses Microsoft Dataverse, Dynamics 365, and SharePoint Online.

The agent must retrieve information from enterprise systems and internal documents. The agent must meet the following requirements:

* Must retrieve the current balance of a customer account stored in Dataverse.

* Must retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365.

* Must answer questions based on the content of a static PDF policy document.

* Must provide a welcome message that does NOT depend on enterprise data.

* You need to configure the agent to meet the requirements.

How should the agent retrieve the data? To answer, move the appropriate solutions to the correct requirements. You may use each solution once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



Select and Place:

**Solutions (Options)**

* Create a manual response in the topic.
* Connect to a Power Platform connector.
* Upload a file to Agents Knowledge Base.
* Configure a generative answer without enterprise data.



| Requirement | Solution |
| :--- | :--- |
| Retrieve the current balance of a customer account stored in Dataverse. | [ 空白框 ] |
| Retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365. | [ 空白框 ] |
| Answer questions based on the content of a static PDF policy document. | [ 空白框 ] |
| Provide a welcome message that does **NOT** depend on enterprise data. | [ 空白框 ] |


-----

答案

| Requirement | Solution |
| :--- | :--- |
| Retrieve the current balance of a customer account stored in Dataverse. | **Connect to a Power Platform connector.** |
| Retrieve the real-time shipping status of an order that updates throughout the day in Dynamics 365. | **Connect to a Power Platform connector.** |
| Answer questions based on the content of a static PDF policy document. | **Upload a file to Agents Knowledge Base.** |
| Provide a welcome message that does **NOT** depend on enterprise data. | **Create a manual response in the topic.** |


解析与考点说明

1. **Retrieve the current balance... (Dataverse) & Retrieve the real-time shipping status... (Dynamics 365)**
   * **选择：** `Connect to a Power Platform connector.`（连接到 Power Platform 连接器）
   * **原因：** Dataverse 和 Dynamics 365 都有现成的 Power Platform 预构建连接器。当需要获取**实时数据**（如当前余额、全天更新的物流状态）时，必须使用连接器实时查询后端系统。不能使用知识库（知识库通常用于静态的非结构化文档）或手动回复。**注意：在此类“选择并放置”题型中，选项可以被重复使用。**

2. **Answer questions based on the content of a static PDF policy document.**
   * **选择：** `Upload a file to Agents Knowledge Base.`（将文件上传到智能体知识库）
   * **原因：** 静态的 PDF 文件属于非结构化数据。将其上传到知识库并配合生成式答案（Generative Answers），是 Copilot Studio 处理此类文档并基于其内容回答问题的标准做法。不需要为文档中的每一段内容手动创建主题。

3. **Provide a welcome message that does NOT depend on enterprise data.**
   * **选择：** `Create a manual response in the topic.`（在主题中创建手动回复）
   * **原因：** 欢迎语是固定的文本，不需要连接任何企业系统去检索数据。直接在主题（通常是系统默认的问候主题）中添加一个“消息（Message）”节点并输入文本即可。

**未使用的选项：** `Configure a generative answer without enterprise data.`（配置不含企业数据的生成式答案）在这个场景中不需要用到。生成式答案应当与知识库配合使用以提供有依据的回答，而纯粹的固定欢迎语用不上生成式节点。


**Box 1: Connect to a Power Platform connector **


To enable your Copilot agent to fetch specific, real-time structured data (such as a customer's current balance) directly from Dataverse or Dynamics 365, you should connect to a Power Platform connector (or use native Dataverse plugins/tools).

**Box 2: Connect to a Power Platform connector **

Real-Time Data Access: Dynamics 365 data resides in Microsoft Dataverse. Power Platform connectors (like the Dataverse connector) fetch data live from the source, ensuring the shipping status is perfectly accurate and updated throughout the day.

Box 3: Upload a file to Agents Knowledge Base.

Box 4: Create a manual response in the topic.


### QUESTION 8 

An agent calls a flow. The agent requires structured output values to be returned.

The agent receives unexpected or empty values.

You need to configure the agent so that data is exchanged correctly between the agent and the flow.

What should you do?

A. Validate parameter definitions.

B. Change the trigger schema.

C. Review the flow run history.

D. Add a Parse JSON inside the flow.

E. Republish the agent.

---

**Correct Answer: A. Validate parameter definitions.**

Explanation

The agent and flow must have matching input and output parameter definitions to exchange data correctly.

- A. Validate parameter definitions — Correct. Check that the flow's input and output parameters have the correct names, data types, and mappings so the agent receives the expected values.
- B. Change the trigger schema — Incorrect. The trigger schema is not the first thing to change when the issue may be caused by mismatched input/output definitions.
- C. Review the flow run history — Incorrect. Useful for troubleshooting, but it does not directly configure the data exchange.
- D. Add a Parse JSON inside the flow — Incorrect. Only necessary when JSON parsing is required; it does not fix general parameter mapping issues.
- E. Republish the agent — Incorrect. Republishing alone will not fix incorrect parameter definitions.

Exam tip: Unexpected or empty values between an agent and a flow → first validate the input/output parameter definitions and mappings.


**Explanation/Reference:**  Correct Answer: A

Explanation:

Validating your parameter definitions is the correct first step. Unexpected or empty values typically occur because of a schema mismatch or because unsupported, nested data types are passed directly between the agent and the Power Automate flow.

### QUESTION 9 

A company is building an agent in Copilot Studio.

The agent must meet the following requirements:

* Responses must be grounded in approved internal content.

* The agent must be able to retrieve information from configured data sources in a topic.

You need to configure the agent so that topic responses are grounded from custom data sources.

What should you configure?

A. Enable analytics to review which topics users trigger most often.

B. Add a custom prompt that tells the agent to answer only from company data.

C. Configure knowledge sources in a generative answers node.

D. Add SharePoint as a knowledge source only at the agent level.

E. Increase the response length limit to improve answer completeness.

----

**Correct Answer: C Section: (none)**

Explanation/Reference:

Explanation:

To configure a Microsoft Copilot Studio agent so its topic responses are exclusively grounded in your custom data sources, you should leverage the Create generative answers node within a targeted custom topic. This setup ensures the agent strictly retrieves information from your approved internal content.


**Correct Answer: C. Configure knowledge sources in a generative answers node.**

Explanation

- C — Correct: Configuring knowledge sources in a generative answers node grounds the topic's responses in approved internal content and lets the node retrieve information from those sources.
- A — Incorrect: Analytics monitors usage; it does not ground responses.
- B — Incorrect: Prompt instructions guide behavior but do not configure or connect the actual data sources.
- D — Incorrect: Agent-level SharePoint knowledge alone does not meet the specific requirement to configure data sources within a topic.
- E — Incorrect: Increasing response length does not improve grounding or data retrieval.

Exam tip: When a question specifically says “in a topic” and “custom data sources,” choose Generative answers node → Configure knowledge sources.


### QUESTION 10

A company is building an agent in Copilot Studio topic that must retrieve real-time status information from an external REST API using a Send HTTP request node.

To meet the business needs, the topic must meet the following requirements:

The request must include the required authentication header.

The request must call the endpoint using the correct HTTP method.

The response must be configured with an appropriate response data type based on a schema and saved so the topic can reuse the returned values.

You need to configure the Send HTTP request node.

Which configuration should you use for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.



Select and Place:

**Configurations (Options)**

* Add required headers to the HTTP request.
* Set the method to GET in the HTTP request.
* Select JSON data type and save response to a variable.
* Set the method to POST and send JSON in a request body.

**HTTP Request node configuration**

| Requirement | Configuration |
| :--- | :--- |
| Configure authentication for the request. | [ 空白框 ] |
| Select the correct HTTP method for retrieving data. | [ 空白框 ] |
| Configure structured data handling and storage of data for reuse in the topic. | [ 空白框 ] |


-----

| Requirement                                                                    | Correct configuration                                  |
| ------------------------------------------------------------------------------ | ------------------------------------------------------ |
| Configure authentication for the request.                                      | Add required headers to the HTTP request.              |
| Select the correct HTTP method for retrieving data.                            | Set the method to GET in the HTTP request.             |
| Configure structured data handling and storage of data for reuse in the topic. | Select JSON data type and save response to a variable. |

Explanation:

- Headers: Include the required authentication header, such as an API key or bearer token.
- GET: Retrieves real-time status information from the API.
- JSON + variable: Parses the structured response and saves it in a variable for reuse in subsequent topic steps.

Unused option: Set the method to POST and send JSON in a request body. POST is typically used to submit data, not retrieve status information.

Explanation/Reference:

Explanation:

**Box 1: Add required headers to the HTTP request**

To configure the Send HTTP request node to include the required authentication header, you should add required headers to the HTTP request.

Authentication details for external REST APIs (such as API keys or Bearer tokens) are almost universally passed inside the metadata of the call, which is managed in the Headers.

**Box 2: Set the method to GET in the HTTP request.**

To retrieve real-time status information from an external REST API using a Send HTTP request node in Copilot Studio, you should set the method to GET in the HTTP request.

The standard HTTP GET method is specifically designed to fetch or retrieve data from a server without modifying it.

**Box 3: Select JSON data type and save response to a variable**

When retrieving real-time data, the primary configuration requirement is telling Copilot Studio how to interpret the incoming data (JSON) and storing it in a custom variable so subsequent nodes in your topic can use it.


### QUESTION 11 

A company is deploying an agent for employees.

The company has the following requirements:

Access must be restricted to the internal employees only. End-user authentication must be enforced.

You need to configure the agent based on the company requirements.

What should you do?

A. Select Authenticate with Microsoft Entra ID for the agent.

B. Enable Require Secure Access in the Web channel security.

C. Publish the agent as a public website experience.

D. Select Authenticate with personal account for the agent.


----


**Correct Answer: A**

Explanation/Reference:

Explanation:

**To enforce strict internal-only access and require end-user authentication for a Microsoft Copilot Studio agent, you must configure Microsoft Entra ID authentication.**

This setup stops external users from chatting with the agent and forces employees to sign in with their corporate accounts before they can access any data.

The implementation requires a mix of tenant-level governance policies and specific agent security configurations.

Reference:

**Correct answer: A. Select Authenticate with Microsoft Entra ID for the agent.**

Explanation:

- Microsoft Entra ID enforces employee authentication using the company’s organizational identities, restricting access to authorized internal users.
- B. Require Secure Access applies to Web channel security, but it is not the primary setting for enforcing employee authentication.
- C. Public website experience does not meet the internal-only access requirement.
- D. Personal account authentication is intended for personal Microsoft accounts, not organizational employee identities.

Exam tip: For an employee-facing Copilot Studio agent that requires organizational sign-in, choose Microsoft Entra ID authentication.

### QUESTION 12 

 A company is integrating an agent in Copilot Studio into a custom application by using the Microsoft 365 Agents SDK.

The company has the following requirements for the application:

The deployment workflow must follow a dependency driven sequence.

The agent must be published before configuration values are retrieved.

End-to-end validation must occur before production deployment.

You need to plan the deployment workflow to integrate the agent.

In which order should you perform the actions? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.



Select and Place:

**Deployment workflow steps (Options)**

* Configure and enable the agent's target integration channel.
* Retrieve current agent configuration values.
* Deploy the web app to production.
* Implement the Microsoft 365 Agents SDK in the app using the agent configuration.
* Publish the agent.
* Validate the end-to-end conversation workflow in a test environment.


| Answer Area |
| :--- |
| **1** [ 空白框 ] |
| **2** [ 空白框 ] |
| **3** [ 空白框 ] |
| **4** [ 空白框 ] |
| **5** [ 空白框 ] |
| **6** [ 空白框 ] |


**Step 1: Publish the agent**

Based on the second requirement, the agent must be published first before any configuration values can be generated or retrieved.

**Step 2: Retrieve the current agent configuration values** 

Once published, you can extract the necessary configuration properties (such as the Agent ID and Tenant ID) required to connect your applications and infrastructure.

**Step 3: Configure and enable the agent's target integration channel **

Before configuring the SDK code, you must enable the target channel (such as the Custom App or Mobile App channel) within Copilot Studio Channels to permit incoming external connection requests.

**Step 4: Implement the Microsoft 365 Agents SDK in the app using the agent configuration**

With the channels enabled and configurations in hand, your developers can now write the code to implement the Microsoft 365 Agents SDK into your custom application.

**Step 5: Validate the end-to-end conversation workflow in a test environment**

Following the third requirement, end-to-end validation must happen prior to production deployment. This step ensures the chat interface, authentication, and SDK pipelines function flawlessly.

**Step 6: Deploy the web app to production**

Once validation passes successfully, the final step is to push your custom application live to your production environment.



### QUESTION 13 

An agent in Copilot Studio already exists in a development environment.

You need to prepare the agent so it can be moved to a production environment using the supported solution-based approach.

You need to create an exportable package that contains the existing agent.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point. A. Remove agent topics directly from the solution to prevent export errors.

B. Convert the solution to a managed solution so it can be exported.

C. Export the unmanaged solution that contains the agent.

D. Publish the agent to a channel and export the channel configuration.

E. Create a custom solution and add the existing agent to the solution.

----

Correct answers: C and E.

\- C. Export the unmanaged solution that contains the agent.\
Export the solution from the development environment as a package.

\- E. Create a custom solution and add the existing agent to the solution.\
Add the existing Copilot Studio agent to a solution so it can be exported and moved between environments.

Why not the others?

- A: Do not remove topics just to prevent export errors.
- B: You can export an unmanaged solution; converting it to managed is not required for export.
- D: Publishing the agent to a channel and exporting channel configuration is not the solution-based packaging approach.

Exam tip: For solution-based ALM, add the existing agent to a Power Platform solution, then export that solution from development.

----

？？？ 

Correct Answer: BE Section: (none)

Explanation/Reference:

Explanation:

To move a Copilot Studio agent to a production environment using a solution-based approach, you must create a custom unmanaged solution, add your existing agent [E] and its required objects to it, publish all customizations, and export the solution as a managed package [B] [.zip file].


### QUESTION 14 

A company wants to use content from a non-Microsoft enterprise knowledge base to ground agent responses.

To meet the business needs, the knowledge source must meet the following requirements:

* Support grounding from indexed data.
* Use existing access controls from the source system. Support read-only operations.
* You need to determine the correct behavior to meet the requirements.

Which behavior meets each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.


以下是提取并整理为 Markdown 格式的内容，您可以直接复制：

Hot Area:


**Copilot connector knowledge behavior**

| Requirement | Configuration |
| :--- | :--- |
| Support grounding from indexed data. | [ 下拉选项框 ]<br>- Retrieve indexed content<br>- Execute runtime operations.<br>- Retrieve live data at runtime. |
| Use existing access controls from the source system. | [ 下拉选项框 ]<br>- Respect existing permissions.<br>- Bypass permissions for faster retrieval.<br>- Respect existing permissions from agent authors. |
| Support read-only operations. | [ 下拉选项框 ]<br>- Prevent transactional updates.<br>- Allow authenticated write operations.<br>- Enable updates for enhanced performance. |


----

正确答案如下：

| Requirement                                          | Correct option                |
| ---------------------------------------------------- | ----------------------------- |
| Support grounding from indexed data.                 | Retrieve indexed content      |
| Use existing access controls from the source system. | Respect existing permissions  |
| Support read-only operations.                        | Prevent transactional updates |

解析：

1. Retrieve indexed content：通过 Microsoft 连接器索引的数据检索内容，用于 grounding（回答依据）。
2. Respect existing permissions：遵循源系统已有的访问权限，避免用户访问未经授权的数据。
3. Prevent transactional updates：知识源用于只读检索，不执行写入或事务性更新操作。

考试记忆： Indexed data → Retrieve；Source permissions → Respect；Read-only → Prevent updates.


----


**Box 1: Retrieve indexed content**

To ground a Copilot agent in an external enterprise knowledge base using indexed data, you need to configure Retrieve indexed content.

This process relies on Retrieval-Augmented Generation (RAG). Instead of relying on a pre-trained model or executing live API queries during the conversation, the system references a periodically updated, synchronized index of your knowledge base.

**Box 2: Respect existing permissions.**

To ensure that the Copilot agent responses respect the existing access controls and source-level permissions of your non-Microsoft enterprise knowledge base, you must configure Respect existing permissions.

Respect existing permissions: This setting ensures the agent operates on a user-delegated permission model. The Copilot agent dynamically trims and limits search results at runtime, meaning the end-user will only receive answers derived from data they explicitly have authorization to view in the external source system.

Incorrect:

Respect existing permissions from agent authors: This incorrect option would ground responses based entirely on the author's access level during the creation process, potentially leaking sensitive data to unauthorized end-users.

**Box 3: Prevent transactional updates** 

To ground Microsoft Copilot agent responses using a non-Microsoft enterprise knowledge base with read-only operations, you must configure Prevent transactional updates.

This configuration ensures that the Copilot agent can only fetch, read, and query data from your enterprise knowledge base. It explicitly blocks any modifications, insertions, or deletions, adhering strictly to your read-only requirement and protecting your source data from accidental alterations.


### QUESTION 15


An agent uses a flow that calls an external service which can occasionally fail or time out. When a failure occurs, the agent must meet the following requirements:

Must not terminate silently.

Must send a notification containing the error details.

You need to configure the agent flow so that failures are handled in a controlled and predictable way. Solution: Retry the failing action without handling failure.

Does the solution meet the goal?

A. Yes

B. No


----

Correct answer: B. No.

Explanation: Retrying the failing action can help recover from temporary errors or timeouts, but retrying alone does not handle the failure or send a notification containing error details.

To meet the requirements, configure explicit failure handling in the flow, such as:

- Catch the failure using the appropriate error-handling path.
- Send a notification containing the error details.
- Optionally, retry transient failures before triggering the error-handling path.

Exam tip: Retry ≠ error handling. Failures must be handled explicitly, and the required notification must be sent.

Correct:

* Configure run after conditions for failure paths.

You should configure the "Run after" conditions in Power Automate (the underlying flow engine) to handle these failures in a controlled and predictable way.

By default, a cloud flow step only runs if the previous step is successful. If your external service fails or times out, all subsequent steps will normally skip, causing the flow to fail silently from the perspective of the Copilot Studio agent.

How to Configure the Flow for Failure Handling To meet your requirements, you need to create a parallel or sequential failure path using the following steps:

1. Add your Notification Action

2. Configure "Run After" Settings Incorrect:

* Retry the failing action without handling failure.

* Send a notification with relevant error details.


### QUESTION 16

An agent uses a flow that calls an external service which can occasionally fail or time out.

When a failure occurs, the agent must meet the following requirements: Must not terminate silently.

Must send a notification containing the error details.

You need to configure the agent flow so that failures are handled in a controlled and predictable way. Solution: Configure run after conditions for failure paths.

Does the solution meet the goal?

A. Yes

B. No

----


Correct answer: A. Yes.

Explanation: Configuring Run after conditions in Power Automate allows subsequent actions to run when a previous action fails, times out, or is skipped.

This enables the flow to:

- Detect and handle failures explicitly instead of terminating silently.
- Execute a notification action containing error details.
- Provide predictable failure-handling behavior.

Exam tip: Use Configure run after to create failure-handling paths, such as sending an error notification when an external API call fails.

----


Correct:

* Configure run after conditions for failure paths.

You should configure the "Run after" conditions in Power Automate (the underlying flow engine) to handle these failures in a controlled and predictable way.

By default, a cloud flow step only runs if the previous step is successful. If your external service fails or times out, all subsequent steps will normally skip, causing the flow to fail silently from the perspective of the Copilot Studio agent.

How to Configure the Flow for Failure Handling To meet your requirements, you need to create a parallel or sequential failure path using the following steps:

1. Add your Notification Action

2. Configure "Run After" Settings Incorrect:

* Retry the failing action without handling failure.

* Send a notification with relevant error details.


### QUESTION 17

An agent uses a flow that calls an external service which can occasionally fail or time out. When a failure occurs, the agent must meet the following requirements:

Must not terminate silently.

Must send a notification containing the error details.

You need to configure the agent flow so that failures are handled in a controlled and predictable way. Solution: Send a notification with relevant error details.

Does the solution meet the goal? 

A. Yes

B. No

---

Correct answer: B. No.

Explanation: Sending a notification with error details satisfies the notification requirement, but it does not by itself ensure the flow handles failures in a controlled way or prevents silent termination.

You should also configure Run after conditions to detect failures or timeouts and route execution to the notification action.

Exam tip: A notification action alone is insufficient; configure the failure path so the notification is triggered when an error occurs.

---

Correct answer: B. No.

Explanation: Sending a notification with error details satisfies the notification requirement, but it does not by itself ensure the flow handles failures in a controlled way or prevents silent termination.

You should also configure Run after conditions to detect failures or timeouts and route execution to the notification action.

Exam tip: A notification action alone is insufficient; configure the failure path so the notification is triggered when an error occurs.


---

Correct Answer: B 

Explanation/Reference:

Explanation:

Correct:

* Configure run after conditions for failure paths.

You should configure the "Run after" conditions in Power Automate (the underlying flow engine) to handle these failures in a controlled and predictable way.

By default, a cloud flow step only runs if the previous step is successful. If your external service fails or times out, all subsequent steps will normally skip, causing the flow to fail silently from the perspective of the Copilot Studio agent.

How to Configure the Flow for Failure Handling To meet your requirements, you need to create a parallel or sequential failure path using the following steps:

1. Add your Notification Action

2. Configure "Run After" Settings Incorrect:

* Retry the failing action without handling failure.

* Send a notification with relevant error details.

---


QUESTION 18 

A company uses an agent in Copilot Studio that produces structured responses using a reusable instruction template. The responses follow the required tone and format. During a compliance review, the team discovers that the responses were generated using a model that is not on the approved list.

The company requires that the reusable instruction template continues to be used and the model used for prompt-driven responses meets governance requirements.

The solution must ensure that prompt-driven responses are generated using an approved model.

You need to configure the solution that meets the requirements.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Select an approved model from the Microsoft Foundry model catalog in the configuration that is used for prompt-driven response generation.

B. Configure Azure AI Search as the grounding source so the approved model requirement is enforced during response generation.

C. Ensure the reusable instruction template is the one applied to the agent that generates the structured response.

D. Publish the agent so that the model used by prompt-driven responses is updated automatically.

E. Enable citations so generated responses can be traced and comply with governance requirements.

F. Add a line to the instruction template that requires the agent to use only approved models when generating responses.

---


Correct answers: A and C.

- A. Select an approved model from the Microsoft Foundry model catalog in the configuration used for prompt-driven response generation.
- C. Ensure the reusable instruction template is the one applied to the agent that generates the structured response.

Explanation:

- A directly addresses model governance by explicitly selecting an approved model.
- C preserves the reusable instruction template so the responses continue to follow the required tone and format.

Why not the others?

- B: Azure AI Search provides grounding; it does not enforce model approval.
- D: Publishing does not automatically switch the model to an approved one.
- E: Citations improve traceability but do not control model selection.
- F: Instructions cannot enforce which underlying model is used.

Exam tip: Model governance requires configuring the model itself; prompt templates control response behavior, not model selection.

---

To fix the compliance issue in Microsoft Copilot Studio, you must select an approved model from the catalog for generation and ensure the correct template is applied. The two necessary configuration steps are:

[F] Select an approved model from the model catalog in the configuration used for prompt-driven response generation.

[C] Ensure the reusable instruction template is the one applied to the agent that generates the structured response.

Configuration Steps Model Selection: Open your agent settings in Microsoft Copilot Studio and choose a compliant, approved foundation model from the catalog for your prompt responses.

Template Assignment: Verify and re-apply the correct reusable instruction template directly to the specific agent responsible for generating the structured output.


### QUESTION 19 

A company needs to ground an agent in Copilot Studio answers using live enterprise data from a supported system via a Microsoft Power Platform connector. To meet the business needs, the builder must meet the following requirements:

● Authenticate using a valid connection.

● Add the connector as a real-time knowledge source.

● Select the tables for knowledge grounding.

You need to add a Power Platform connector as a real-time knowledge source for the agent.

In which order should you perform the actions? To answer, move all actions from the list of actions to the answer area and arrange them in the correct order.


**REST API (Options)**

* Select the tables to include as the knowledge source.
* Add the connector to the agent.
* Select a real-time connector from the Add knowledge dialog.
* Sign in and create a new connection or reuse an existing connection.
* Add a knowledge source.


**Answer Area**

| Step | Action |
| :--- | :--- |
| **1** | [ 空白框 ] |
| **2** | [ 空白框 ] |
| **3** | [ 空白框 ] |
| **4** | [ 空白框 ] |
| **5** | [ 空白框 ] |


----

Correct order

| Step | Action                                                               |
| ---- | -------------------------------------------------------------------- |
| 1    | Add a knowledge source.                                              |
| 2    | Select a real-time connector from the Add knowledge dialog.          |
| 3    | Sign in and create a new connection or reuse an existing connection. |
| 4    | Select the tables to include as the knowledge source.                |
| 5    | Add the connector to the agent.                                      |

记忆要点： Add knowledge → Select connector → Authenticate → Select tables → Add to agent.


Explanation/Reference:

Explanation:

Step 1: Add a knowledge source 

Initiate: You start in the Knowledge tab to trigger the addition.

Step 2: Select the real-time connector from the Add knowledge dialog 


Identify: You pick the specific system/connector from the menu.

Step 3: Sign in and create a new connection or reuse an existing connection 

Authenticate: You log in to ensure permissions to the enterprise data.

Step 4: Select the tables to include as the knowledge source 

Configure: You isolate the exact tables needed for grounding.

Step 5: Add the connector to the agent 


Finalize: You save and bind the source to your agent.

### QUESTION 20


An agent uses a flow that calls an external service which can occasionally fail or time out.

When a failure occurs, the agent must meet the following requirements:

● Must not terminate silently.

● Must send a notification containing the error details.

You need to configure the agent flow so that failures are handled in a controlled and predictable way.

Solution: Terminate the flow immediately on error.

Does the solution meet the goal?

A. Yes

B. No

---

Correct answer: B. No.

Explanation: Terminating the flow immediately on error stops execution, but it does not ensure a notification containing the error details is sent.

Correct approach: Configure Run after conditions to detect failures or timeouts, then execute a notification action that includes the error details.

Exam tip: `Terminate on error` stops the flow; Run after + notification handles the failure and alerts the appropriate recipient.

---

Correct Answer: B Section: (none)

Explanation/Reference:

Explanation:

Correct:

* Configure run after conditions for failure paths.

You should configure the "Run after" conditions in Power Automate (the underlying flow engine) to handle these failures in a controlled and predictable way.

By default, a cloud flow step only runs if the previous step is successful. If your external service fails or times out, all subsequent steps will normally skip, causing the flow to fail silently from the perspective of the Copilot Studio agent.

How to Configure the Flow for Failure Handling To meet your requirements, you need to create a parallel or sequential failure path using the following steps:

1. Add your Notification Action

2. Configure "Run After" Settings

Incorrect:

* Retry the failing action without handling failure.

* Send a notification with relevant error details.

* Terminate the flow immediately on error.]


### QUESTION 21 

A company requires an agent in Copilot Studio to answer questions using content stored in a third-party knowledge base system and reuse that content for knowledge grounding.

The agent must ground answers using indexed enterprise knowledge from a non-Microsoft system.

You need to choose the correct integration approach.

What should you use?

A. Call the third-party API from a topic for each question.

B. Add a Copilot Studio tool as a real-time knowledge source.

C. Add a Copilot Studio tool and call it from a topic.

D. Add a Copilot connector knowledge source for authorized content.

----


Correct answer: D. Add a Copilot connector knowledge source for authorized content.

Explanation: Copilot connectors can index content from non-Microsoft enterprise systems and make that indexed content available for knowledge grounding. They can also respect the source system’s access permissions.

Why not the others?

- A: Calls the API separately for each question rather than reusing indexed enterprise knowledge.
- B: A Copilot Studio tool is for executing actions, not configuring a real-time knowledge source.
- C: A tool called from a topic performs an operation rather than directly providing indexed knowledge grounding.

Exam tip: Indexed third-party enterprise knowledge → Copilot connector knowledge source.

---

Correct Answer: D

Adding a Copilot connector is the correct approach to index and ground an agent using authorized nonMicrosoft enterprise knowledge.

Integration and Configuration Indexing data: Copilot connectors (formerly Microsoft Graph connectors) sync and index external data sources into Microsoft Graph.

Adding knowledge: Open your agent in Microsoft Copilot Studio, go to the Overview, Knowledge, or Properties page, and select Add knowledge.

Selecting the source: Choose your configured Copilot connector from the dialog menu and select Add to agent.


### QUESTION 22 

A company uses a supported Power Platform connector to provide real-time access to enterprise records for knowledge grounding in an agent in Copilot Studio.

To meet the business needs, the knowledge source must provide the following functionality:

● Avoid copying enterprise data into an index.

● Keep source-system access controls enforced.

● Access data by calling the system at runtime.

You need to configure the connector knowledge source.

What should you configure for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.


以下是提取并整理为 Markdown 格式的内容，附带正确答案及解析：

Select and Place:

**Configurations (Options)**

* Use real-time connector.
* Use existing permissions.
* Retrieve data without indexing.
* Add Azure AI Search as a knowledge source.


**Knowledge source**

| Requirement | Configuration |
| :--- | :--- |
| Avoid copying enterprise data into an index. | [ 空白框 ] |
| Keep source-system access controls enforced. | [ 空白框 ] |
| Access data by calling the system at runtime. | [ 空白框 ] |

----


正确答案如下：

| Requirement                                   | Configuration                   |
| --------------------------------------------- | ------------------------------- |
| Avoid copying enterprise data into an index.  | Retrieve data without indexing. |
| Keep source-system access controls enforced.  | Use existing permissions.       |
| Access data by calling the system at runtime. | Use real-time connector.        |

解析：

- Retrieve data without indexing：避免将企业数据复制到索引中。
- Use existing permissions：遵循源系统现有的访问控制权限。
- Use real-time connector：在运行时调用源系统获取最新数据。

未使用的选项： Add Azure AI Search as a knowledge source。Azure AI Search 通常使用索引来检索数据，不符合避免建立索引的要求。

考试记忆： No index → Retrieve without indexing；Permissions → Use existing permissions；Runtime access → Real-time connector.

### QUESTION 23 

A tenant administrator configures a Copilot connector that indexes content from an external knowledge system into Microsoft Graph.

A builder is building an agent that must:

● Use the indexed enterprise knowledge during answer generation.

● Avoid duplicating or manually uploading the same content.

● Avoid invoking the system as a transactional tool.

You need to configure the agent so that responses are grounded in the authorized knowledge sources.

What should you do?

A. Add the configured enterprise knowledge source to the agent’s knowledge.

B. Create a new custom connector inside the agent configuration.

C. Add the connector as a tool and invoke it from a topic.

D. Upload documents from the external system directly into the agent’s file knowledge store.

---


Correct answer: A. Add the configured enterprise knowledge source to the agent’s knowledge.

Explanation:

- The Copilot connector has already indexed the external content into Microsoft Graph.
- Adding the configured enterprise knowledge source lets the agent use that indexed content for grounding during answer generation.
- This avoids duplicating or manually uploading documents and does not treat the connector as a transactional tool.

Why not the others?

- B: Creates a new connector unnecessarily; one is already configured.
- C: A tool invoked from a topic is for executing actions, not directly grounding answers from indexed knowledge.
- D: Manually uploading documents duplicates content already indexed by the connector.

Exam tip: Existing Microsoft Graph indexed content → Add the configured enterprise knowledge source to the agent’s knowledge.

Section: (none)

Explanation/Reference:

Explanation:

You should add the Copilot connector as a knowledge source for the agent.

Grounding via Microsoft Graph: Since the external knowledge system is already being indexed into Microsoft Graph via a Copilot connector, it is already optimized as a read-only semantic knowledge base. In Copilot Studio or the Agent Builder, you simply enable or select this existing Copilot connector from your available knowledge sources.

Avoids Duplication: Adding it as an existing knowledge source directly references the data already indexed in the Graph, preventing you from manually uploading files or duplicating content.

Avoids Transactional Invocation: Creating a new custom connector inside the agent configuration utilizes Power Platform connectors. Power Platform connectors are designed for tool invocation (real-time API calls, writing data, and performing transactional operations), which violates your requirement to avoid a transactional tool setup.


### QUESTION 24 

A solution containing an agent in Copilot Studio is deployed to multiple environments that require different configuration values.

Configuration values must vary by environment without modifying the solution contents.

Configuration values must meet the following requirements:

● Allow values to be set during import.

● Exclude values from the agent definition.

● Run a dedicated agent instance for each individual environment.

You need to associate each requirement with the configuration approach.

What should you configure for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.


Select and Place:

**Configurations (Options)**

* Use channel-specific settings.
* Define environment variables in the solution.
* Publish distinct agent versions for each environment.
* Hardcode the configuration values in the agent configuration.


**ALM-related configurations**

| Requirement | Configuration |
| :--- | :--- |
| Allow values to be set during import. | [ 空白框 ] |
| Exclude values from the agent definition. | [ 空白框 ] |
| Run a dedicated agent instance for each individual environment. | [ 空白框 ] |

---


正确答案如下：

| Requirement                                                     | Configuration                                         |
| --------------------------------------------------------------- | ----------------------------------------------------- |
| Allow values to be set during import.                           | Define environment variables in the solution.         |
| Exclude values from the agent definition.                       | Define environment variables in the solution.         |
| Run a dedicated agent instance for each individual environment. | Publish distinct agent versions for each environment. |

解析：

- Environment variables：将配置值与 Agent 定义分离，并允许在导入解决方案时为不同环境设置相应的值。
- Distinct agent versions：对应题目要求的每个环境使用独立的 Agent 配置或版本。

未使用的选项：

- Use channel-specific settings：用于配置特定渠道，不是通用的环境级配置管理方式。
- Hardcode the configuration values：将值写死在配置中，无法灵活适应不同环境。

-----



Explanation:

**Box 1: Define environment variables in the solution.**

The correct ALM-related configuration to use for this requirement is Environment Variables.

You must use Environment Variables (specifically with the Current Value left blank in the development solution) to allow different configuration values across multiple environments without modifying the solution contents. When you export the solution as managed and import it into a target environment, the system will explicitly prompt the administrator to set the values during import.

**Box 2: Define environment variables in the solution**

 Define environment variables in the solution is the correct Application Lifecycle Management (ALM) configuration to use for this requirement.

Separates Data from Code: Environment variables act as parameters that store configuration keys and values separately from your agent's definition.

Preserves Solution Integrity: You can transport the same solution across development, testing, and production environments without modifying any of its internal contents.

Excludes Hardcoded Values: They explicitly remove the need to embed sensitive or environment-specific data directly inside the agent, satisfying your exact requirement.

**Box 3: Define environment variables in the solution **

You should use Environment Variables combined with Connection References within Power Platform / Copilot Studio.

Define parameters centrally: Create environment variables inside your solution to act as placeholders for your configuration values (like URLs, IDs, or API keys).

Keep the solution generic: Your Copilot agent references these variables rather than hardcoded values. Set values per deployment: When you import the managed solution into a new environment (Test, Production, etc.), the deployment pipeline prompts you to provide the specific values for that environment. Isolate agent traffic: Because the variables point to environment-specific backend services, data sources, or IDs, a single solution definition naturally spins up and drives a dedicated, isolated agent instance in each environment.

### QUESTION 25 

A company is configuring an agent flow that uses multiple action types to perform operations and process data.

The flow must be configured as follows:

● An HTTP action must connect to an external service.

● A data action must reference the correct data to process.

You need to configure the settings for each action type.

Which setting should you configure for each action? To answer, move the appropriate configuration settings to the correct actions. You may use each configuration setting once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

Select and Place:

**Configuration settings (Options)**

* Input and mapping
* Table relationships and keys
* Endpoint and authentication
* Connection timeout and retry policy


**Action level configuration settings**

| Action | Configuration setting |
| :--- | :--- |
| HTTP action | [ 空白框 ] |
| Data action | [ 空白框 ] |

----

Explanation/Reference:

Explanation:

**Box 1: Endpoint and authentication**

Endpoint and authentication is the correct configuration setting to use.

To connect any HTTP action to an external service, the system fundamentally needs to know where to send the request and how to prove it has permission to access it.

Endpoint (URL): Specifies the exact web address of the external API or service.

Authentication: Credentials (like API keys, OAuth tokens, or Basic Auth) that verify the agent's identity.

**Box 2: Input and mapping**

The correct configuration setting to use is Input and mapping, because it directly links and passes the correct source data parameters into the data action

正确答案如下：

| Action      | Configuration setting       |
| ----------- | --------------------------- |
| HTTP action | Endpoint and authentication |
| Data action | Input and mapping           |

解析：

- HTTP action → Endpoint and authentication：配置外部服务的 API 端点和身份验证信息。
- Data action → Input and mapping：指定需要处理的输入数据，并将数据映射到相应的操作参数。

未使用的选项：

- Table relationships and keys：用于特定的数据表关联场景。
- Connection timeout and retry policy：用于配置连接超时和失败重试策略。



### QUESTION 26

A team uses environment variables to separate configuration from an agent so that the same solution can be moved between environments.

The team requires the following scenarios to be addressed:

● An administrator updates a sensitive configuration value and needs the change to take effect at runtime without republishing the agent.

● A builder needs to confirm a configuration value but must not be able to modify it from Copilot Studio.

● An administrator updates a non-secret configuration value and needs the updated value to be used by the published agent at runtime.

You need to apply the correct handling behavior for different environment-variable scenarios.

Which behavior should you apply for each scenario? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.



Multi environment behavior

| Scenario | Behavior |
| :--- | :--- |
| Update a sensitive configuration value; the change takes effect at runtime without republishing the agent. | [ 下拉选项框 ]<br>- Republish the agent to apply the update.<br>- Use a secret environment variable type to allow for runtime resolution.<br>- Make the update directly in Copilot Studio. |
| Confirm a configuration value but do not modify it from Copilot Studio. | [ 下拉选项框 ]<br>- Environment variables are stored as topic variables.<br>- Environment variables are read-only in Copilot Studio.<br>- Environment variables can be edited by any builder in Copilot Studio. |
| Update a non-secret configuration value and the updated value needs to be used by the published agent at runtime. | [ 下拉选项框 ]<br>- The value can only be changed by hardcoding it into the agent.<br>- The agent must be republished for the updated value to be effective at runtime.<br>- The agent automatically pulls the updated Current Value from the environment at the start of every session. |

----


| Scenario                                                                                                          | Correct behavior                                                                |
| ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| Update a sensitive configuration value; the change takes effect at runtime without republishing the agent.        | Use a secret environment variable type to allow for runtime resolution.         |
| Confirm a configuration value but do not modify it from Copilot Studio.                                           | Environment variables are read-only in Copilot Studio.                          |
| Update a non-secret configuration value and the updated value needs to be used by the published agent at runtime. | The agent must be republished for the updated value to be effective at runtime. |

解析：

1. 敏感配置值：使用 Secret 类型的环境变量，避免将敏感值直接写入 Agent 定义，并支持运行时解析。
2. 只查看、不修改：环境变量在 Copilot Studio 中作为配置引用使用，Builder 不应通过 Agent 编辑界面修改其值。
3. 非敏感配置值：更新环境变量后，通常需要重新发布 Agent，才能确保已发布版本使用更新后的值。

考试记忆： Secret → Runtime resolution；View only → Read-only；Non-secret update → Republish.

### QUESTION 27 

A company has agents in Copilot Studio.

The company needs to prevent the agents from using disallowed connectors and insecure data flows. Administrators must be able to enforce the governance controls to prevent and report violations.

You need to enforce governance controls for agents.

What should you do?

A. Configure Application Insights to collect runtime telemetry.

B. Review security FAQs to understand default protections.

C. Review agent analytics to detect risky connector usage.

D. Configure data policies.

----


Correct answer: D. Configure data policies.

Explanation: Power Platform data policies (Data Loss Prevention, or DLP policies) allow administrators to govern Copilot Studio agents by restricting disallowed connectors and preventing insecure data flows. They can enforce these controls and help identify policy violations.

Why not the others?

- A. Application Insights: Monitors runtime telemetry; it does not enforce connector restrictions.
- B. Security FAQs: Provide guidance but do not enforce governance.
- C. Agent analytics: Helps monitor agent performance, not enforce connector-level security policies.

Exam tip: Prevent disallowed connectors and enforce data-flow governance → Configure DLP/data policies.


**Correct Answer: D **

Section: (none) Explanation/Reference:

Explanation:

To enforce governance controls, prevent Copilot Studio agents from using disallowed connectors, and restrict insecure data flows, the correct action to take is to Configure data policies.

Real-Time Prevention: Data policies (Data Loss Prevention or DLP) function as a critical build-time and runtime boundary. If an agent relies on a blocked or disallowed connector, Microsoft Copilot Studio immediately blocks execution or publishing and surfaces an error to the maker or user.

Connector Isolation: Admins use the Power Platform admin center to categorize connectors into Business, Non-Business, or Blocked groups. This directly prevents insecure data flows by ensuring data cannot be leaked from business systems (like Microsoft Dataverse) to unapproved external channels or APIs. Reporting & Auditing: Violations of these data policies are logged and can be tracked centrally by administrators to report and monitor compliance across environments.


### QUESTION 28 

A company is designing an agent flow that includes human in the loop stages during execution. The company requires that the agent flow perform the following actions:

● Must wait for a human decision before it resumes.

● Must collect information and then continue execution.

You need to configure the flow behavior.

Which flow behavior should you configure for each stage? To answer, move the appropriate flow behaviors to the correct stages. You may use each flow behavior once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Flow behaviors (Options)**

* Wait for a response and capture inputs.
* Send a request and continue immediately.
* Send a notification for approval and continue.
* Wait for a response and branch based on the decision.

**Flow behaviors**

| Human in the loop stage | Flow behavior |
| :--- | :--- |
| Approval | [ 空白框 ] |
| Information collection | [ 空白框 ] |

---

正确答案如下：

| Human in the loop stage | Flow behavior                                         |
| ----------------------- | ----------------------------------------------------- |
| Approval                | Wait for a response and branch based on the decision. |
| Information collection  | Wait for a response and capture inputs.               |

解析：

- Approval（审批）：等待人工审批结果，并根据批准或拒绝的决定走不同的执行路径。
- Information collection（信息收集）：等待人工提交所需信息，捕获输入后继续执行流程。

未使用的选项：

- Send a request and continue immediately.
- Send a notification for approval and continue.

考试记忆： Approval → Wait + branch；Information collection → Wait + capture inputs.


Explanation/Reference:

Explanation:

**Box 1: Wait for response and branch based on the decision **

The best action to take is Wait for response and branch based on the decision because a binary or multipath approval requires distinct logical paths (such as proceeding if approved or canceling/revising if rejected) rather than just logging the text input.

**Box 2: Wait for response and capture inputs**

The correct answer is Wait for response and capture inputs.

Captures Data: The prompt explicitly states that the agent must "collect information" before moving forward.

Pauses Execution: To collect this information from a human, the workflow must pause ("Wait for response") and hold the collected data ("capture inputs") to use in the subsequent steps.


### QUESTION 29 

A company is building an agent topic in Copilot Studio. The agent topic uses a generative answers node to respond to user questions based on authorized knowledge sources.

To meet the business needs, the generative answers node must meet the following requirements:

● Use the user’s message in the generative answers node.

● Scope the topic node to query only designated data.

● Restrict responses to approved enterprise data.

You need to configure the generative answers node to meet the requirements.

What should you configure for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.

Select and Place:


以下是提取并整理为 Markdown 格式的内容，附带正确答案及解析：

Select and Place:

**Configurations (Options)**

* Select Search only selected sources.
* Select Activity.Text in the Input field.
* Enable generative orchestration for the agent.
* Clear Allow the AI to use its own general knowledge.


**Generative answers node configuration settings**

| Requirement | Configuration |
| :--- | :--- |
| Use the user's message in the generative answers node. | [ 空白框 ] |
| Scope the topic node to query only designated data. | [ 空白框 ] |
| Restrict responses to approved enterprise data. | [ 空白框 ] |

---


正确答案如下：

| Requirement                                            | Configuration                                        |
| ------------------------------------------------------ | ---------------------------------------------------- |
| Use the user's message in the generative answers node. | Select `Activity.Text` in the Input field.           |
| Scope the topic node to query only designated data.    | Select Search only selected sources.                 |
| Restrict responses to approved enterprise data.        | Clear Allow the AI to use its own general knowledge. |

解析：

1. `Activity.Text`：将用户当前输入的消息传递给生成式答案节点。
2. Search only selected sources：将检索范围限制在指定的知识源。
3. Clear Allow the AI to use its own general knowledge：禁止模型使用自身的一般知识作答，确保回答基于获准的企业数据。

未使用的选项： Enable generative orchestration for the agent。

考试记忆： User message → `Activity.Text`；指定数据源 → Search only selected sources；仅限企业数据 → Disable general knowledge.


----


Explanation/Reference:

Explanation:

**Box 1: Select the Activity.**

Text in the Input field To use the user's message inside a generative answers node in Microsoft Copilot Studio, map the node's Input field to the System.Activity.Text system variable. This variable captures the exact text of the user's most recent message or trigger phrase.

**Box 2: Select Search only selected sources.**

To scope a Generative Answers node to query only designated data within a specific topic in Microsoft Copilot Studio, you must use the "Search only selected sources" setting within the node's properties and isolate your knowledge base.

**Box 3: Clear Allow the AI to use its own general knowledge **

You configure this correctly by unchecking/clearing the "Allow the AI to use its own general knowledge" option.

When configuring a Create generative answers node in Microsoft Copilot Studio, the system handles external versus internal knowledge sources based on specific toggles:

Preventing Hallucinations: Leaving "Allow the AI to use its own general knowledge" enabled allows the large language model (LLM) to fall back on its public training data (e.g., ChatGPT data) when it cannot find answers in your custom sources.

Strict Enterprise Grounding: Turning this setting OFF explicitly mandates that the agent uses only the authorized enterprise repositories (like SharePoint sites, uploaded files, or custom databases) attached to your node or agent. If an answer isn't in those specific sources, the node stops and hands the query off to your fallback or error-handling flows instead of guessing.


### QUESTION 30 

A company is building an agent topic in Copilot Studio.

The topic must meet the following requirements:

● Collect structured user input in a single step.

● Store the submitted values for use later in the conversation.

You need to configure the topic based on the requirements.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Use the latest Adaptive Card schema version in all channels to ensure full feature support.

B. Paste the card JSON into a Message node to collect the user’s response.

C. Add input fields to the card and include an Action.Submit button.

D. Add an Ask with Adaptive Card node to the topic.

E. Use Action.Execute for the button so the card can run commands across channels.


Correct answers: C and D.

- C. Add input fields to the card and include an `Action.Submit` button


The input fields collect structured user data, and `Action.Submit` submits the entered values.

- D. Add an Ask with Adaptive Card node to the topic.\

This node displays the Adaptive Card, collects the user's response, and makes the submitted values available for use later in the conversation.

Why not the others?

- A: The latest Adaptive Card schema is not supported across all channels.
- B: A regular Message node is not the appropriate node for collecting Adaptive Card responses.
- E: `Action.Execute` is associated with Universal Actions and is not the standard choice for this requirement.

Exam tip: Structured input in one step → Ask with Adaptive Card + input fields and `Action.Submit`.

Explanation/Reference:

Explanation:

To meet your requirements in Copilot Studio, you must use an Adaptive Card with input fields and an Action.Submit button within a Question node. This allows you to collect structured data in a single step, store the responses as variables, and ensure maximum compatibility by using the standard schema.

Step-by-Step Implementation

1. Add a Question Node: In your topic authoring canvas, add a new node and select Ask a question.

2. Set the Text Prompt: Type a brief message introducing the form (e.g., Please fill out the form below).

3. Change the Input Type: Click on the dropdown menu next to Identify in the Question properties panel. Change it from a standard entity type to Adaptive Card.

4. Paste the JSON Schema: Switch the card editor view to JSON edit mode and paste the schema provided below.

5. Map Your Variables: After saving the JSON, Copilot Studio will automatically detect the input fields based on their "id" attributes. Go to the Save response as section of the node to map these inputs to topic variables for later use.


## Integrate and extend agents in Copilot Studio

**Background**

Blue Yonder Airlines is a global carrier headquartered in Los Angeles, California, operating domestic and international flights. The company serves millions of passengers annually through its website, mobile app, and call centers. To improve customer service efficiency and reduce call center volume, Blue Yonder is deploying an AI agent in Microsoft Copilot Studio.

The agent will handle customer inquiries across multiple channels – web chat, mobile app, and Microsoft Teams (for internal support staff). It will answer questions, retrieve data from enterprise systems, and escalate to human agents when needed.

The project is led by a cross-function team:

* **Product manager**: Defines requirements and success metrics.
* **Lead agent author**: Designs topics, intents, and generative behavior.
* **Flow designers**: Build agent flows and integrations.
* **IT/security and compliance:** Oversees identity, data protection, and Responsible AI (RAI) compliance.


**Current environment Channels**

Public website: Embedded web chat Mobile app: In-app chatbot Microsoft Teams: Internal support agent access

**Identity and access**

* **Customers:** Anonymous access for general inquiries (e.g., flight status, baggage policy). 
* Authentication is required for personal data access (e.g., bookings, loyalty points). 
* **Internal staff:** Authenticate via Microsoft Entra ID.

**Data sources**


* **Reservation and Ticketing System (internal): **REST API, no prebuilt connector with custom enterprise database.
* **Flight Status and Weather APIs (external)**: REST APIs with API keys.
* **Customer Support Knowledge Base: **SharePoint library with PDFs and policy documents. Loyalty Program Data: Stored in Dynamics 365 and Dataverse.
* **Travel Advisory Content:** Uses REST API with partner services.

**Integration mechanisms**

* Custom connectors must be used for internal APIs that lack prebuilt connectors. 
* HTTP request nodes may be used for lightweight external APIs.
* Knowledge sources must be used for unstructured content.
* Agent flows must be used to encapsulate reusable logic (e.g., rebooking).


**Business requirements**

**Omnichannel support**

Deploy the agent across web, mobile, and Teams with a consistent user experience. The Teams deployment must also support internal staff.

**Self-service capabilities** 

The agent must handle common inquiries such as:

- Flight status

- Booking and rebooking

- Loyalty program questions

- Travel policies and baggage rules

**Human escalation** 

If the agent cannot resolve an issue or the user requests help, it must:

- Escalate to a human agent.

- Transfer the conversation transcript and relevant context.

- Redact any sensitive personal data before escalation.

**Knowledge integration**

The agent must use scalable methods for knowledge integration and must not rely on manually authored Q&A topics for each document.

**Performance metrics**

* First-contact resolution: +25% 
* Tier-1 call deflection: ≥20% 
* Response time: 90% of queries answered within 30 seconds 
* Accuracy: ≥95% for known FAQs 
* CSAT: ≥85% for AI-handled interactions

**Technical requirements**

**Platform constraints**

* No custom code is permitted; only Copilot Studio's built-in tools may be used.
* All backend logic must be implemented using agent flows.
* Markdown must be used for formatting (e.g., bold, bullet points); HTML is not supported.

**Authentication** 

* Sign-in is required for personal data access. 
* Anonymous access is allowed for general inquiries.
* User identity must be used for data access; shared or builder credentials must not be used.

**Compliance and security**

* Power Platform DLP policies must be enforced to block unauthorized data flows.
* Responsible AI content moderation filters must be enabled.
* Prompt modifications must be added to enforce tone, disclaimers, and refusal behavior. 
* Disclaimers must be applied consistently across all generative responses. Manual edits to individual topics must be avoided.

**Monitoring and maintenance**

* All conversations and actions must be logged for auditing.
* Weekly reviews of transcripts and metrics must be conducted.
* Topics, flows, and knowledge sources must be updated as policies or systems evolve.

**Issues and constraints**

* **API rate limits:** External APIs (e.g., flight status) have usage limits. Agent flows must handle retries and caching to avoid exceeding quotas.

* **Knowledge base limits**: Copilot Studio has limits on the number and size of indexed documents. Large files must be split or summarized.

* **Generative answer risks**: Generative responses must be constrained to avoid policy violations. Prompt modifications and filters must be used to enforce tone, safety, and compliance.

* **User input variability**: Users phrase questions in diverse ways. Topics must include varied trigger phrases and fallback handling.

* **Authentication UX**: The agent must clearly explain when sign-in is required and handle transitions smoothly across channels.

**Problem statement** 

Blue Yonder Airlines must deploy a secure, scalable, and policy-compliant AI agent using Microsoft Copilot Studio. The agent must deliver accurate, helpful, and safe responses across multiple channels, integrate with enterprise systems, and support both anonymous and authenticated users. It must adhere to strict data protection and Responsible AI standards while improving customer service efficiency and satisfaction.


### QUESTION 1 

You need to implement tool usage in topics that meet the Blue Yonder design and governance requirements.

Which implementation method should you use for each requirement? To answer, move the appropriate implementation methods to the correct requirements. You may use each implementation method once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.



 Select and Place:

**Implementation methods (Options)**

* Add a tool node.
* Add an Adaptive Card.
* Enable generative orchestration.
* Display a static message instead of using a tool.
* Add a Question node for the user to choose the tool

**Tool usage in topics**

| Requirement | Implementation method |
| :--- | :--- |
| Let the agent decide when to run a tool based on user input. | [ 空白框 ] |
| Run a specific agent flow at a defined step in a topic. | [ 空白框 ] |
| Use a connector action to retrieve data during a conversation. | [ 空白框 ] |


----


正确答案如下：

| Requirement                                                    | Implementation method            |
| -------------------------------------------------------------- | -------------------------------- |
| Let the agent decide when to run a tool based on user input.   | Enable generative orchestration. |
| Run a specific agent flow at a defined step in a topic.        | Add a tool node.                 |
| Use a connector action to retrieve data during a conversation. | Add a tool node.                 |

解析：

- Generative orchestration：让 Agent 根据用户意图和上下文，动态决定何时调用适当的工具。
- Tool node：在 Topic 的指定步骤显式调用 Agent Flow 或 Connector Action，并将结果用于后续对话。

未使用的选项：

- Add an Adaptive Card.
- Display a static message instead of using a tool.
- Add a Question node for the user to choose the tool.

考试记忆： Agent 自主决定调用 → Generative orchestration；Topic 中显式调用 Flow / Connector → Tool node。

----

？？？ 

Explanation/Reference:

Explanation:

**Box 1: Add a Question node for the user to choose the tool.**

Let the agent decide when to run a tool based on user input.

**Box 2: Add an Adaptive card**

Run a specific agent flow at a defined step in a topic.

You can run a specific agent flow at a defined step in your topic by using an Ask with Adaptive card node to collect user input, and then triggering the flow using the submitted data.

**Box 3: Add a tool node**

Use a connector action to retrieve data during a conversation.

### QUESTION 2 

You need to determine how the agent in Copilot Studio should integrate with two different systems in the Blue Yonder environment, based on their characteristics and the tools available.

Which integration mechanism should you use for each system? To answer, move the appropriate integrations to the correct system or data sources. You may use each integration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Integrations (Options)**

* HTTP request
* Custom connector
* Dataverse connector
* Generative AI knowledge


**Copilot agent integration**

| System or data source | Integration |
| :--- | :--- |
| Internal Reservation | [ 空白框 ] |
| Flight Status and Weather Service | [ 空白框 ] |

---


**Box 1: Custom Connector**


A Custom Connector is preferable to a HTTP request in this enterprise environment.

Scenario:

Data sources Reservation and Ticketing System (internal): REST API, no prebuilt connector with custom enterprise database.

Custom connectors must be used for internal APIs that lack prebuilt connectors.

**Box 2: HTTP request** 

Flight Status and Weather Service

Scenario:

Flight Status and Weather APIs (external): REST APIs with API keys HTTP request nodes may be used for lightweight external APIs.


正确答案及解析如下：

**答案配置**

| System or data source | Integration |
| :--- | :--- |
| Internal Reservation | **Custom connector** |
| Flight Status and Weather Service | **HTTP request** |

---


| System or data source             | Integration      | 原因                                                                |
| --------------------------------- | ---------------- | ----------------------------------------------------------------- |
| Internal Reservation              | Custom connector | 内部预订系统通过 REST API 提供服务，且没有现成的连接器，因此应创建自定义连接器。                     |
| Flight Status and Weather Service | HTTP request     | 航班状态和天气属于外部 REST API，可通过 HTTP request 直接调用，并在请求中配置 API Key 等认证信息。 |

考试记忆要点：

- Custom connector：内部或第三方 API 没有现成连接器，需要封装成可复用的连接器。
- HTTP request：直接发送 HTTP 请求，适合轻量级 REST API 集成。
- Dataverse connector：访问 Dataverse 中的业务数据，例如 Loyalty 数据。
- Generative AI knowledge：检索和利用文档、知识库等内容生成回答，不适合执行预订系统的事务操作。


### QUESTION 3 

You need to determine an appropriate implementation related to the use of agent flows that is based on Blue Vender's design and compliance standards.

Which implementation method should you use for each scenario? To answer, move the appropriate implementation methods to the correct scenarios. You may use each implementation method once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Implementation methods (Options)**

* Use a tool node.
* Use a generative answers node.
* Use a Go to another topic node.
* Prompt the user for manual input.
* Manually rebuild the logic in the topic.


**Agent flow implementations**

| Scenario | Implementation method |
| :--- | :--- |
| A topic includes a series of steps that replicate logic already defined in another flow. | [ 空白框 ] |
| A topic provides a natural language explanation of a process but does not execute it. | [ 空白框 ] |
| A topic includes a step that triggers a reusable process to update booking details. | [ 空白框 ] |

----


结合 Blue Yonder Airlines 的设计要求，正确答案如下：

| Scenario                                                                                 | Implementation method          |
| ---------------------------------------------------------------------------------------- | ------------------------------ |
| A topic includes a series of steps that replicate logic already defined in another flow. | Use a tool node.               |
| A topic provides a natural language explanation of a process but does not execute it.    | Use a generative answers node. |
| A topic includes a step that triggers a reusable process to update booking details.      | Use a tool node.               |

解析

1. 复用已有 Flow → Use a tool node：调用已有的 agent flow，避免在 topic 中重复实现相同逻辑。
2. 只解释流程，不执行操作 → Use a generative answers node：根据知识来源生成自然语言说明。
3. 更新预订信息 → Use a tool node：调用可复用的 agent flow 执行预订更新等业务操作。

考试记忆： 复用业务逻辑或执行事务操作，选择 Tool node；只回答问题、解释流程，选择 Generative answers node。

----

**？？？？？？**

Explanation/Reference:

Explanation:

Scenario:

**Compliance and security** 

Disclaimers must be applied consistently across all generative responses. Manual edits to individual topics must be avoided.

**Box 1: Use a Go to another topic node** 

You can use a redirect node (often referred to as a Redirect to another topic node) in Microsoft Copilot Studio.

Eliminate Duplication: Grouping shared conversation messages or logic nodes into a single, dedicated topic prevents you from building the exact same steps multiple times.

Easier Maintenance: When you need to make a change, a single update to the target topic automatically reflects across all the topics that redirect to it.

Maintain Context: You can easily pass variable values or input/output parameters between the topics so the agent doesn't lose track of the conversation.

**Box 2: Use a generative answers node** 

You can use a generative answers node within your agent topic to summarize and deliver natural language explanations.

Generative answers are designed specifically for knowledge retrieval, FAQs, and providing informational summaries. They can instantly process enterprise data, documents, or company websites and convert them into plain-language guidance without you having to manually write branching logic for every scenario.

**Box 3: Use a tool node** 

In a Microsoft Copilot Studio agent environment, you use a Tool node (specifically an Action node linked to a reusable Agent flow or connector) to trigger an external process like updating booking details.

## Integrate and extend agents in Copilot Studio - Testlet 2 

Background Fabrikam Inc. is a Canada-based manufacturer with a growing service organization that supports field technicians and internal operations teams. Fabrikam Inc. plans to launch a new internal agent solution named Operations Concierge to reduce time spent searching policy content, retrieving operational metrics, and executing routine transactions.

The agent will be used by three groups:

* Service coordinators who triage incoming service requests 
* Field technicians who need guided procedures and parts availability 
* Operations managers who monitor KPIs and exceptions

The agent solution must work in real-world operational conditions. Users often ask questions mid-call with a customer or while coordinating parts shipments. The agents require quick, reliable outcomes. As a result, Fabrikam Inc. requires the solution to:

* Provide grounded answers with traceability when it provides guidance.

* Retrieve real-time metrics when users ask for operational status.

* Execute authenticated updates when users initiate a flow (such as creating a parts request).

Fabrikam Inc. also expects the solution to be maintained by multiple makers and developers across the year. The company has experienced duplicated logic and inconsistent behavior across different agents. This project emphasizes reuse, governance, and maintainability across teams.

**Current environment** 

Fabrikam Inc. runs three Microsoft Power Platform environments for agent development and release: Dev, Test, and Prod.

The team plans to build the agent and validate it in Dev and Test, then promote to Prod by using a controlled release process that supports repeatable deployments.

Fabrikam Inc. already has two assets the team wants to reuse:

* A partially completed Copilot Studio agent named Service Desk Agent, used by IT to create internal tickets and route requests 

* A Microsoft Foundry agent created by a central AI team that performs specialized summarization and classification for long-form text (for example, summarizing call transcripts into an incident narrative) 

Fabrikam Inc. also has operational and knowledge data sources:

* A curated policy library (internal SOPs, service warranty rules, escalation criteria, and standard operating procedures) 
* A set of indexed documents and procedures in an Azure AI Search service that supports vector search for the policy library 
* A Microsoft Fabric workspace that includes a semantic model used by operations leadership for reporting

**Business requirements** 

Fabrikam Inc. requires Operations Concierge to meet the following business requirements:

* **Traceability requirement**: When the agent provides policy guidance or procedural recommendations, users must be able to see where the answer came from.

* Metrics requirement: When users ask about service performance (backlog, SLA risk, parts shortages, dispatch delays), the solution must return up-to-date metrics in a structured format that operations managers can use in weekly reviews.

* Transaction requirement: The solution must support authenticated updates initiated during conversations, including creating a parts request and updating a service case status.

In addition, Fabrikam Inc. wants to avoid duplicating common assets across agents:

The team must reuse the same set of escalation topics, MCP tool definitions, and a standard safety disclaimer across three different agents.

Only the platform engineering group as allowed to edit shared assets. However, all agent authors must be able to use them.

**Technical requirements** 

The Fabrikam Inc. solution architecture uses a multi-agent approach so that specialist responsibilities are isolated and can evolve independently.

The Operations Concierge (primary agent) must coordinate the following specialist capabilities:

* **Policy and procedure Q&A**: Use an enterprise knowledge source that supports indexed retrieval across the curated policy library and service procedures.

* **Operational metrics**: Delegate metric queries to a Fabric Data Agent that reads governed business data through the Fabric semantic model.

* **Authenticated updates**: Use tools exposed by an existing internal Model Context Protocol (MCP) server that provides transactional operations for the service organization.

* **Specialized processing**: Delegate summarization and classification requests to an existing Microsoft Foundry agent.

Fabrikam Inc. will onboard two MCP servers as tools:

* **PartsOps MCP server:** exposes tools for parts availability checks and parts request creation. The server requires per-user authentication because actions must be traceable to the requesting user. 
* **WarrantyRules MCP server**: exposes a read-only tool for validating warranty coverage. The server uses an API key shared by the agent team.

Fabrikam Inc. has also defined a collaboration requirement with the existing Service Desk Agent:

* The primary agent must delegate IT-specific requests to the existing Service Desk Agent rather than reimplement ticket creation logic. Finally, Fabrikarn Inc. plans to support a partner integration:

* For shipment tracking inquiries, Fabrikam Inc. will delegate to a partner-provided agent that is only available through a standardized agent-to-agent endpoint.

**Issues and constraints**

During early testing, Fabrikam Inc. found three recurring problems:

* Makers are copying and modifying the same components across agents, resulting in inconsistent disclaimers and duplicated tools.

* Users can obtain a correct answer, but the response is not consistently traceable to a source when the agent uses knowledge.

* The primary agent can route some requests, but specialist capabilities are not consistently delegated (for example, some metric questions are answered generatively instead of being routed to the Fabric Data Agent).

You are part of the engineering team responsible for correcting the design and configuration to meet the preceding requirements and constraints.

### QUESTION 1 

You need to enable Operations Concierge to delegate shipment tracking inquiries according to Fabrikam Inc.'s defined architecture and technical requirements.

Which integration approach should you use?

A. Configure the partner capability as an enterprise knowledge source with indexed retrieval enabled.

B. Configure the partner capability as an MCP tool and invoke it as a transactional operation.

C. Configure the partner capability as an A2A integration and supply its endpoint information.

D. Configure the primary agent to handle shipment tracking through generative responses after publishing.

---


正确答案：C. Configure the partner capability as an A2A integration and supply its endpoint information.

**解析**

题目明确指出，合作伙伴提供的 Agent 只能通过标准化的 Agent-to-Agent (A2A) endpoint 访问。因此，应配置 A2A 集成，并提供对应的 endpoint 信息，让 Operations Concierge 能够将运输跟踪请求委派给合作伙伴 Agent。

| 选项 | 判断 | 原因                                                    |
| -- | -- | ----------------------------------------------------- |
| A  | ❌  | Enterprise knowledge source 用于检索文档和知识，不适合委派给外部 Agent。 |
| B  | ❌  | MCP 适合通过工具调用执行操作，但题目明确要求使用 A2A endpoint。              |
| C  | ✅  | A2A integration 支持通过标准化 Agent-to-Agent 接口委派任务。        |
| D  | ❌  | 生成式回答不能满足指定的专业 Agent 委派要求。                            |

考试记忆：

- A2A → 委派任务给其他 Agent。
- MCP → 调用工具或业务操作。
- Knowledge source → 检索企业知识并提供依据。
- Generative responses → 生成回答，不等于显式委派。

---

**Correct Answer: C**

Explanation/Reference:

Explanation:

In Microsoft Copilot Studio, when you need your primary agent to interact with a cross-platform, external agent owned by a partner organization, you use the standardized open Agent2Agent (A2A) protocol.

Scenario:

Fabrikarn Inc. plans to support a partner integration:

For shipment tracking inquiries, Fabrikam Inc. will delegate to a partner-provided agent that is only available through a standardized agent-to-agent endpoint.


### QUESTION 2 

You need to integrate Fabrikam Inc.'s existing Foundry agent so Operations Concierge can delegate summarization requests.

Which action should you perform for each requirement? To answer, move the appropriate actions to the correct requirements. You may use each action once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

 Select and Place:

**Actions (Options)**

* Add an external agent of type Microsoft Foundry.
* Publish the Copilot Studio agent to enable external calls.
* Add the Foundry output as an indexed knowledge source.
* Enter the Foundry project endpoint URL to create the connection.


**Foundry agent integrations**

| Requirement | Action |
| :--- | :--- |
| The main agent must be able to call an external Foundry agent. | [ 空白框 ] |
| The external Foundry agent must reference the correct Foundry project and agent. | [ 空白框 ] |


---

正确答案如下：

| Requirement                                                                      | Action                                                           |
| -------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| The main agent must be able to call an external Foundry agent.                   | Add an external agent of type Microsoft Foundry.                 |
| The external Foundry agent must reference the correct Foundry project and agent. | Enter the Foundry project endpoint URL to create the connection. |

解析

1. 添加外部 Foundry Agent：让 Operations Concierge 能够将摘要生成和文本分类任务委派给现有的 Microsoft Foundry agent。
2. 配置 Foundry project endpoint URL：建立与正确 Foundry 项目的连接，以便引用对应的 Agent。

考试记忆： 集成现有 Foundry agent，选择 Add an external agent of type Microsoft Foundry；配置连接目标，提供 Foundry project endpoint URL。

另外两个选项不适用：将输出添加为索引知识源不等于委派 Agent；发布主 Agent 也不是配置 Foundry 连接的核心步骤。


**Box 1: Add an external agent of type Microsoft Foundry.**

The main agent must be able to call an external Foundry agent.

The best action to take is to add an external agent of type Microsoft Foundry.

Add an external agent of type Microsoft Foundry: In multi-agent ecosystems (such as Microsoft Copilot Studio), connecting to specialized external agent frameworks—like Microsoft Foundry—is natively handled by registering or adding that specific system as an external agent type. This allows the orchestration layer of the main agent to properly discover, authenticate, and call the capabilities of the Foundry agent.

**Box 2: Enter the Foundry project endpoint URL to create the connection, **

The external Foundry agent must reference the correct Foundry project and agent.

### QUESTION 3 

You need to plan how Fabrikam Inc. will reuse shared components across multiple agents while limiting who can change the shared components.

Which approach should you use for each requirement? To answer, move the appropriate components to the correct requirements. You may use each component once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.

Select and Place:


Select and Place:

**Components (Options)**

* Restrict component collection to the primary agent.
* Create a component collection and move shared components into it.
* Export the primary agent as a solution and copy assets into other agents.
* Share the component collection with teammates while controlling edit access.


**Reusable components**

| Requirement | Component |
| :--- | :--- |
| Prevent shared assets from being modified by most builders. | [ 空白框 ] |
| Reuse the same set of components across multiple agents without copying. | [ 空白框 ] |
| Limit a shared set of components so it can be used only by its intended primary agent. | [ 空白框 ] |

---


正确答案如下：

| Requirement                                                                            | Component                                                                    |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| Prevent shared assets from being modified by most builders.                            | Share the component collection with teammates while controlling edit access. |
| Reuse the same set of components across multiple agents without copying.               | Create a component collection and move shared components into it.            |
| Limit a shared set of components so it can be used only by its intended primary agent. | Restrict component collection to the primary agent.                          |

 解析

1. 控制编辑权限：通过共享组件集合并限制编辑权限，让大多数 Builder 可以使用共享资产，但不能随意修改。
2. 跨 Agent 复用：创建组件集合，将通用的 escalation topics、MCP tool definitions 和标准安全免责声明放入集合中，供多个 Agent 复用，避免重复复制。
3. 限制使用范围：将组件集合限制为仅供指定的主 Agent 使用。

考试记忆： 权限控制选 Share + control edit access；跨 Agent 复用选 Component collection；限定单个 Agent 使用选 Restrict component collection。

Explanation/Reference:

Explanation:

**Box 1: Share the component collection with teammates while controlling edit access.**

Prevent shared assets from being modified by most builders.

The best action to take is to share the component collection with teammates while controlling edit access.

In Microsoft Copilot Studio, component collections are designed specifically to centralize and reuse assets (like topics, knowledge sources, and actions) across multiple separate agents. When configuring a component collection, administrators or collection owners can utilize built-in sharing permissions to explicitly assign roles to individual makers or groups:

**Box 2: Create a component collection and move shared components into it**

Reuse the same set of components across multiple agents without copying.

The best action to take is to create a component collection and move shared components into it.

In Microsoft Copilot Studio, Component Collections provide a central container to package and share topics, knowledge bases, actions, and entities across multiple agents without duplicating the assets. Once a collection is created, you can establish governance controls (such as managing it within a managed solution) so that makers on other agents can utilize the shared resources but cannot modify them.

**Box 3: Restrict component collection to the primary agent**

Limits a shared set of components so it can be used only be its intended primary agent.

The best action to take is to restrict component collection to the primary agent. In Microsoft Copilot Studio, you can restrict a shared set of components so that it can be used only by its intended agent. This feature helps teams modularize large or sensitive agents and prevents unauthorized reuse.

Reference:

### QUESTION 4 

You need to configure Operations Concierge so that prompt-driven summarization behavior aligns with Fabrikam Inc.'s architectural requirements.

Which two actions should you perform? Each correct answer presents part of the solution.

NOTE: Each correct selection is worth one point.

A. Configure Azure AI Search as the grounding source for summarization prompts. B. Publish the agent to ensure the selected model is enforced for summarization.

C. Select a model from the Foundry model catalog in the custom prompt configuration.

D. Enable citations to control how summarization output is generated.

E. Create a reusable custom prompt template and apply it where summarization responses are generated.

---

正确答案：C 和 E。

| 选项 | 判断 | 解析  |
| --- | --- | --- |
| A  | ❌  | Azure AI Search 适合检索和 grounding 知识，不是控制摘要模型和复用提示词的核心措施。                                                                                 |
| B  | ❌  | 发布 Agent 不是选择或配置摘要模型的主要步骤。                                                                                                              |
| C  | ✅  | Select a model from the Foundry model catalog in the custom prompt configuration. 在自定义提示词配置中选择符合架构要求的模型。                                |
| D  | ❌  | Citations 用于提供来源引用，不能控制摘要生成行为本身。                                                                                                        |
| E  | ✅  | Create a reusable custom prompt template and apply it where summarization responses are generated. 创建并复用统一的自定义提示词模板，确保不同 Agent 的摘要行为一致。 |

考试记忆：

- 模型治理 → C：选择 Foundry model catalog 中的模型。
- 提示词复用与行为一致性 → E：创建并应用可复用的 custom prompt template。


**Correct Answer: CE** 

Section: (none) Explanation/Reference:

Explanation:

Scenario: Specialized processing: Delegate summarization and classification requests to an existing Microsoft Foundry agent.

[C] Model Selection: Choosing a specific model from the Foundry catalog ensures that your classification and summarization requests are routed directly to the correct, optimized LLM backend within the Microsoft Foundry ecosystem.

[E] Custom Prompt Templates: Creating and applying a reusable template ensures consistent formatting, tone, and logic across all areas where your agent handles summarization and classification tasks.


### QUESTION 5

You need to connect Operations Concierge to Fabrikam Inc.'s Azure AI Search knowledge index while complying with security requirements.

Which configuration should you use for each requirement? To answer, move the appropriate configurations to the correct requirements. You may use each configuration once, more than once, or not at all. You may need to move the split bar between panes or scroll to view content.

NOTE: Each correct selection is worth one point.


Select and Place:

**Configurations (Options)**

* Enable citations for grounded answers.
* Enter the name of the Azure AI Search index.
* Select the service principal as the authentication type.
* Provide the Azure AI Search Endpoint URL in the connection details.

**Azure AI Search knowledge source connection**

| Requirement | Configuration |
| :--- | :--- |
| Ensure the Azure AI Search connection complies with the governance requirement for authenticated access. | [ 空白框 ] |
| Ensure policy and procedure Q&A uses the required curated, indexed enterprise knowledge source. | [ 空白框 ] |
| Ensure the connection targets the Azure AI Search service instance that stores the indexed policy documents. | [ 空白框 ] |

-----


正确答案如下：

| Requirement                                                                                                  | Configuration                                                       |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------- |
| Ensure the Azure AI Search connection complies with the governance requirement for authenticated access.     | Select the service principal as the authentication type.            |
| Ensure policy and procedure Q&A uses the required curated, indexed enterprise knowledge source.              | Enter the name of the Azure AI Search index.                        |
| Ensure the connection targets the Azure AI Search service instance that stores the indexed policy documents. | Provide the Azure AI Search Endpoint URL in the connection details. |

解析

1. Service principal：使用服务主体进行身份验证，满足受控的身份认证与访问治理要求。
2. Index name：指定存储已索引政策和操作流程文档的索引，让 Agent 检索正确的企业知识。
3. Endpoint URL：指定 Azure AI Search 服务实例的地址，确保连接到正确的服务。

未使用的选项： Enable citations for grounded answers。引用有助于满足答案可追溯性要求，但它不是配置 Search 连接身份验证、索引或服务端点的设置。

-----

？？？？


Explanation:

**Box 1: Select the service principal as the authentication type **

Ensure the Azure AI Search connection complies with the governance requirement for authenticated access.

Scenario:

A set of indexed documents and procedures in an Azure AI Search service that supports vector search for the policy library

**Box 2: Provide the Azure Search Endpoint URL in the connection details.**

Ensure policy and procedure Q&A uses the required curated, indexed enterprise knowledge source.

**Box 3: Provide the Azure Search Endpoint URL in the connection details.**

Ensure the connection targets the Azure AI Search service instance that stores the indexed policy documents.

The best action to take is to Provide the Azure Search Endpoint URL in the connection details.

When connecting a Copilot agent to an external knowledge source like Azure AI Search, establishing the connection requires identifying the specific service host. Providing the Azure AI Search Endpoint URL ensures that the underlying connection infrastructure explicitly targets and authenticates against your specific Azure AI Search service instance. Once this service-level connection is validated, you are prompted in the next step to select or enter the specific index containing your documents.