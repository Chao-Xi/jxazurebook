# 1 Azure DevOps Engineer Expert Certification (AZ-400) 

### Exam Guide - Response Types


There are ~50-55 Questions

You can afford to get roughly 12-14 questions wrong


**Format of Questions**

- Multiple Choice
- Multiple Answer
- Drag and Drop
- Yes and No
- 1 Lab with about 8 questions

## 1 Introduction to DevOps


DevOps is an approach that brings together software development (Dev) and IT operations (Ops) with the goal to enhance the speed and reliability of software delivery. 

**It focuses on continuous improvement, automation, and collaboration between teams that were once siloed, aiming to shorten the time from development to operation.**


The process includes frequent code versions, which allows for incremental improvements to applications and systems.


The ultimate goal of DevOps is to create a culture and environment where **building, testing, and releasing software can happen rapidly, frequently, and more reliably.**

#### Why DevOps?


DevOps eliminates the inefficiencies, miscommunications, and delays that arise from the traditional gap between development and operations teams.

It creates a collaborative culture that accelerates and improves software delivery.

**Key Challenges Addressed by DevOps:**


- Miscommunication and Collaboration Gaps: Enhances communication and collaboration, reducing misunderstandings and accelerating the release process.
- **Conflicting Goals**: Aligns the goals of Dev and Ops teams towards quick, reliable, and high-quality software delivery.
- **Manual Processes and Bottlenecks**: Advocates for automation to decrease manual effort, errors, and delays.
- **Streamlined Processes**: Automation leads to fewer errors, shorter deployment times, and improved software quality.

The Role of a DevOps Engineer:

**A DevOps engineer facilitates this collaboration and automation,** focusing on:


**Continuous Integration and Continuous Delivery (CI/CD)**: Establishing pipelines that automate code integration, testing, and deployment, ensuring rapid, reliable software releases.


**Infrastructure as Code (laC):** Managing and provisioning infrastructure through code to increase efficiency and consistency.

**Monitoring and Operations**: Implementing monitoring solutions to track application and infrastructure performance, **ensuring high availability and reliability.**

**Transition to Cloud Infrastructure**: Many organizations are transitioning to cloud infrastructure (AWS, Google Cloud, Azure) to cut costs and improve manageability, offering intuitive tools for network and security settings but necessitating knowledge of platform-specific features.

#### Tools and Technologies:


**Version Control (e.g., Git):** Essential for managing code changes and facilitating team collaboration.

**Use Agile and Lean Techniques:** For planning, sprint isolation, and capacity management.

**Containerization (e.g., Docker):** Enables scalable deployments with lightweight containers that are faster and simpler to configure than traditional virtual machines.

**Orchestration (e.g., Kubernetes):** Efficiently manages containerized applications at scale

CI/CD Tools (e.g., Jenkins, GitLab CI): Automate the software delivery process, from code integration to deployment.

**laC Tools (e.g., Terraform, Ansible):** Automate the provisioning and management of infrastructure.

**Monitoring and Logging (e.g., Prometheus):** Provides insights into application performance and operational health.

**Public and Hybrid Clouds streamline operations**, offering scalable infrastructure with laas for seamless app migration and PaaS to enhance productivity through sophisticated tools.

Examples of DevOps technologies across different DevOps stages include:

**Planning:**

Azure Boards, GitHub, Atlassian Jira

**Continuous Integration:** **Azure Repos, GitHub Repos, SonarQube**, Selenium, OWASP ZA, NuGet,

**Continuous Delivery: Azure Pipelines, GitHub Actions, Bicep, Terraform**, Jenkins, RedHat Ansible, Chef, Puppet

**Operations: Azure Monitor, Azure Automation,** Microsoft Power BI

**Collaboration and feedback: Azure DevOps Wikis, GitHub Wikis**, GitHub Discussions, Microsoft Teams,

![Alt Image Text](../images/az400_1_1.png "Body image")

### DevOps vs Traditional IT

#### **Time**

* **DevOps teams spend one-third more time** **improving systems** to avoid tech issues than **traditional IT.**
* Less time is needed for administrative tasks because **DevOps uses more automated tools and helpful scripts**.
* This saved time allows for a **33% increase** in enhancing their tech infrastructure.
* They also have **15%** more time for learning and training, boosting their

#### Speed and data

- DevOps groups are typically **small and adaptable,** driven by creativity and speed.
- One of the main goal of DevOps is agility, aiming for swift completion of tasks.
- **Traditional IT** operations typically have less feedback data, focusing only on the immediate task.
- IT operations often have to handle unexpected downstream issues they didn't see coming.
- Cloud DevOps is more effective in **delivering business applications** due to its quick pace.
- Traditional IT must strive to keep up with the rapid changes and demands of the business world.

#### Recuperation and crunch time

DevOps teams focus on **readiness for failures** and have strategies like ongoing testing and real-time alerts.

These strategies mean they can **address issues quickly and keep systems running smoothly**.

Traditional IT may need more time to recover from setbacks because they might not have these proactive measures in place.

Fast recovery in DevOps is often helped using automated systems and flexible infrastructure setups.

**Software distribution**

- DevOps teams take roughly **37 minutes to deploy software**.
- Traditional IT operations typically need about **85 minutes for the same task.**
- This indicates DevOps teams can release software more than **twice** as quickly as traditional IT teams.

| Aspect | DevOps Advantage |
|:----|:---:|
| Product Reliability | Reduced likelihood of failure| 
| Adaptability | Enhanced flexibility and support |
| Market Responsiveness | Decreased time to market |
| Team Productivity | Greater efficiency in teams |
| Vision Clarity | More defined product vision within teams |


## 2 Agile

**Agile** is a philosophy in software development that emphasizes **incremental progress, collaboration, and flexibility**. It revolves around the idea of breaking down large projects into smaller, manageable sections called **iterations or sprints.**

Teams work in these short bursts to produce tangible results regularly, allowing for frequent reassessment and adjustment.

This approach enables a quick response to change and promotes continuous improvement, both in the product and the process used to create it.

The term "**agile methodology"** refers to the specific frameworks and practices that embody the Agile philosophy, **such as Scrum, and Kanban**.

These methodologies provide the structure and tools for teams to execute Agile principles effectively.

They include techniques for planning and tracking progress, **such as stand-up meetings, sprints, and visual boards, all designed to enhance team coordination and project transparency.**

![Alt Image Text](../images/az400_1_2.png "Body image")

### Agile Development

**Diligent Backlog Refinement**: This means organizing the list of upcoming work, **prioritizing the most important tasks, and clarifying them**. 

Product owners are key in preparing for future sprints by providing **clear goals.**

**Integrating Early and Often:** By using Continuous Integration/Continuous Delivery (Cl/CD), teams automate their workflows, which speeds up coding, testing, and deployment. **This helps catch and fix problems early.**

**Minimizing Technical Debt**: Just like unwanted financial debt, technical debt happens when taking shortcuts, which may later require code fixes.

It's important to find a good mix of adding **new features and fixing these issues, needing careful planning and fixing these issues, needing careful planning and discipline.**


**Agile Development encompasses various methods** that follow the **Agile Manifesto's core ideas.**

It's about teams working together, managing themselves, and using practices that best suit their project's needs to gradually improve their software.

In agile development, teams aim to produce fully working and high-quality parts of the software at the end of every sprint.

This means they **<mark>must write code, test it, and make sure everything is of good quality</mark>** within each sprint's short timeframe.

The key success factors for Agile development teams:

- **Diligent backlog refinement**
- **Integrating early and often**
- **Minimizing technical debt**

![Alt Image Text](../images/az400_1_3.png "Body image")

### Scrum

Scrum is an Agile framework designed for managing complex projects by breaking them down into **small, manageable tasks** completed in short phases called **sprints**.

**Key roles in Scrum:**

#### **Key roles in Scrum:**

- **Product Owner**: Guides what and why the team builds, prioritizes the **work backlog**.
- **Scrum Master**: Facilitates Scrum processes, supports team improvement, and removes obstacles.
- **Development Team**: Engineers the product, ensuring its quality.


In Scrum, a team self-manages its sprint tasks with daily stand-up meetings to ensure progress and address impediments. They track work using a **task board and a sprint burndown chart**, and at the sprint's end, they showcase their increment in a **review and identify improvements in a retrospective.**

Scrum's short, repeatable cycles facilitate continuous learning and adaptation, making it a practical framework for teams adopting Agile principles.

![Alt Image Text](../images/az400_1_4.png "Body image")

### Kanban

Kanban is an Agile methodology focused on **visualizing work, limiting work in progress, and maximizing efficiency (or flow)**.

**Kanban boards** are used to display work at **various stages of → the process using cards to represents tasks and their stages**, highlighting work in progress and facilitating team flexibility.


**Cumulative Flow Diagrams (CFDs)** visually **track a project's workflow over time**, showing task distribution across stages. **The horizontal axis represents time, and the vertical axis represents task volume, with each color marking a different work stage.**

**CFDs highlight trends, progress, and bottlenecks.**

Parallel colored areas indicate balanced workflow; bulges suggest **bottlenecks** needing attention for smooth project continuation.

![Alt Image Text](../images/az400_1_5.png "Body image")

### Scrum vs Kanban

**Scrum and Kanban in Agile development**

While broadly fitting under the umbrella of Agile development, Scrum and Kanban are quite different.

- Scrum focuses on fixed **length sprints, while Kanban is a continuous flow model**.
- Scrum has **defined roles, while Kanban doesn't define any team roles**.
- Scrum uses **velocity** as a key metric, while Kanban uses **cycle time.**

Teams often blend Scrum and Kanban features to optimize their workflow.

They continuously refine their approach to find the best fit, focusing on simplicity and regular value delivery to users.


### Flow Metrics

#### Velocity

**Velocity** in Azure DevOps is a **metric that tracks the amount of work a team completes during a sprint, helping teams estimate how much work they** can handle in future sprints.

It's represented in a chart that visualizes work items completed over several sprints, offering insights into the team's work patterns, efficiency, and consistency.

By analyzing velocity, teams can adjust their planning for **better predictability and productivity.**

Consistent velocity metrics can help in identifying the impact of **process changes and guiding strategic decisions to enhance overall team performance**.

![Alt Image Text](../images/az400_1_6.png "Body image")

#### Sprint burn down

**Sprint burndown chart**

The sprint burndown is a graph that plots the **<mark>daily total of remaining work, typically shown in hours</mark>** 

The burndown chart provides a visual way of **showing whether the team is on track to complete all the work by the end of the sprint.**

It also helps in identifying any **bottlenecks or issues in the workflow that may need attention before the sprint’s end.**

![Alt Image Text](../images/az400_1_7.png "Body image")

#### Lead time and Cycle time

The Lead Time and Cycle Time widgets indicate how long it takes for work to flow through your development pipeline.

- **Lead time** measures the **total time elapsed from the creation of work items to their completion**.
- **Cycle time** measures the **time it takes for your team to complete work items once they begin actively working on**

---

- The following diagram illustrates how lead time differs from cycle time.
- **Lead time** is calculated from work item creation to entering a completed state.
- **Cycle time** is calculated from first entering an In Progress or Resolved state category to entering a Completed state category.


> These measures help teams plan, spot variations in efficiency, and identify potential process issues.
The lower the lead and cycle times, the faster the throughput your team has.

![Alt Image Text](../images/az400_1_8.png "Body image")


### Azure Boards

**Azure Boards** is a **web-based service designed for planning, tracking, and discussing work** throughout the development process, supporting agile methodologies for a customizable and efficient workflow.

#### **Key Hubs in Azure Boards**

Azure Boards includes several key hubs, each serving distinct project management needs:

Work Items Hub: Manage work items based on specific criteria.

* **Boards Hub**: Visualize workflow using cards, ideal for Kanban.
* **Backlogs Hub**: Plan and organize work items, including backlogs for project and portfolio management.
* **Sprints Hub**: Handle sprint-specific work items, incorporating backlogs for project and portfolio management.
* Queries Hub: Generate **custom** work item lists and perform bulk
* Delivery Plans Hub: Track cross-team deliverables and dependencies in a calendar view.
* Analytics Views Hub: Create **Power BI** reports for detailed project analysis.

![Alt Image Text](../images/az400_1_9.png "Body image")

#### **Key benefits of Azure Boards**

- **Scalable Simplicity**: Easy to start with predefined work item types, scalable for growing teams.
- **Visual Tools**: Visualize progress with **Kanban boards, scrum boards**, and delivery plans.
- **Customization**: Configure **boards, taskboards, and plans, including custom fields**.
- **Built-in Communication**: Capture **real-time** communication and decisions within work item forms.
- **Cloud Storage**: Support for rich text, inline images, attachments, and comprehensive change history.
- **Efficient Search and Notifications**: Tools for quick work item searching and customizable **alerts**.
- **Dashboards and Analytics**: **Access to dashboards and Analytics service for reporting.**


**Integration and Support**

- **GitHub and Office Integration:** Connects with GitHub repositories and supports import/export with Microsoft Office.
- **Autonomous Teams Support**: Tailors to independent teams, **integrates with Microsoft Teams and Slack**, and offers a variety of marketplace extensions.

![Alt Image Text](../images/az400_1_10.png "Body image")

### Traceability

**Traceability allows tracking connections and dependencies** among different parts of a software system. It helps teams grasp the effects of **changes, handle risks, and comply with regulations.**


**Defining and managing requirements**

- A key part of traceability is documenting and overseeing requirements effectively.
- Azure DevOps has tools like Azure Boards for handling requirements and tracking their progress, linking requirements to related items like tasks or bugs.
- This tracking clarifies each requirement's progress and its influence on the project.

**Version control and change management**

For traceability, a solid version control system to monitor modifications to code and files is essential. Azure DevOps's Git repositories let developers manage their work efficiently.

By using branches for features or releases, you can track changes and understand their role in the project's bigger picture.

#### Building and release management

Traceability must include build and release processes. **Azure Pipelines facilitates building, testing, and deploying apps**, linking build artifacts and code changes to specific tasks, showing what changes made it into each


#### Test management and quality assurance


For software quality, traceability is crucial. Tools like **Azure Test Plans support detailed test management.** Linking test cases to requirements or user stories shows how well the testing process covers the initial needs, ensuring thorough validation.

#### Auditing and compliance

- Traceability also supports meeting standards and regulations.
- Azure DevOps's auditing features track and log changes, providing details on who changed what and when, supporting accountability and regulatory compliance.