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


**Box 1: Disable the flow **

The most appropriate action to address this specific issue is to disable the flow. Immediate Stop: Turning off or disabling the flow completely prevents any new instances from triggering. This satisfies your urgent requirement to halt additional failed executions immediately while you troubleshoot.

Safe Troubleshooting: It pauses all activity without deleting or altering the internal logic of your automation, allowing you to safely fix the authentication token or connection issues.

**Box 2: Resubmit the run** 

The best action to address this specific issue is to resubmit the run.

Efficiency: Resubmitting a failed run starts the cloud flow again from the exact same trigger point using the original data.

No Data Loss: It eliminates the need for the user or the Copilot Studio agent to manually recreate the request.

Targeted Fix: Since the root cause was a temporary authentication error that is now resolved, the original payload is valid and will now process successfully.

**Box 3: Review the Activity history **

In Microsoft Copilot Studio, the Activity history (specifically within the integrated Power Automate cloud flow management or the Copilot's topic run history) allows you to see the real-time execution status of individual runs. This is the only option that lets you immediately validate if the most recent executions succeeded right after resolving the authentication error.