# **Azure900 面试名词解释面试** 

### 1. Benefits of cloud computing

* It's cost-effective 
* It's scalable
	* **Vertical scaling, also known as "scaling up", is the process of adding resources to increase the power of an existing server**
	* Horizontal scaling, also known as "scaling out", is the process of adding more servers that function together as one unit.
* **elastic / current / reliable / global / secure**

### 2 Compliance terms and requirements

**Provider need help you comply with regulations and standards**

### 3 Capital expenditure (CapEx) versus operational expenditure (OpEx)

* Capital Expenditure (CapEx): CapEx is the spending of money **on physical infrastructure up front**
* **Operational Expenditure (OpEx): OpEx is spending money on services or products now and being billed for them now**

### **4 Azure subscription**

* An Azure subscription is a **logical container used to provision resources in Azure**.
* It holds the details of all your resources like virtual machines (VMs), databases, and more. **When you create an Azure resource like a VM, you identify the subscription it belongs to**

### **5 Tour of Azure services**

* Azure Virtual Machines / Virtual Machine Scale Sets / Kubernetes Service / **Service Fabric (Distributed systems platform. Runs in Azure or on-premises)** /  **Batch （Managed service for parallel and high-performance computing applications）** / Azure Container Instances  / Azure Functions: An event-driven, serverless compute service

### **6 Networking**

* Azure Virtual Network / Azure Load Balancer / 
* Azure Application Gateway: Optimizes app server farm delivery while increasing application security
* Azure VPN Gateway / Azure DNS / Azure Content Delivery Network / Azure DDoS Protection / Azure Traffic Manager / Azure ExpressRoute / Azure Network Watcher / Azure Firewall / Azure Virtual WAN

### **7 Storage**

Azure Blob storage / Azure File storage / Azure Queue storage / Azure Table storage:

### **8 Databases**

Azure Cosmos DB / Azure SQL Databas / Azure Database for MySQL / Azure Database for PostgreSQL / SQL Server on VMs / Azure Synapse Analytics / Azure Database Migration Service / Azure Cache for Redis / Azure Database for MariaDB

### 9 Web

Azure App Service / Azure Notification Hubs / Azure API Management / Azure Cognitive Search / Web Apps feature of Azure App Servic

### 10 Internet of Things

IoT Central / Azure IoT Hub / IoT Edge

### 11 Big Data

Azure Synapse Analytics / Azure HDInsight(Hadoop clusters in the cloud) / Azure Databricks (Collaborative Apache Spark–based)

### 12 DevOps

* Azure DevOps: high-performance pipelines, free private Git repositories, configurable Kanban boards, and extensive automated and cloud-based load testing
* Azure DevTest Labs: u can use to test or demo your applications directly from your deployment pipelines

### **13 What is scale?**

**Scale refers to adding network bandwidth, memory, storage, or compute power to achieve better performance.**

* **Scaling up, or vertical scaling means to increase the memory, storage, or compute power on an existing virtual machine.**
* **Scaling out, or horizontal scaling means to add extra virtual machines to power your application.**

### **14 region**

* Some services or virtual machine features are only available in certain regions, 
* There are also some global Azure services that **do not require you to select a region, such as Microsoft Azure Active Directory, Microsoft Azure Traffic Manager, or Azure DNS.**
* Special Azure regions:
	* **US DoD Central, US Gov Virginia, US Gov Iowa and more**
	* China East, China North and more:

### **15 Availability Zones in Azure**

* Each Availability Zone is made up of one or more datacenters  
* isolation boundary / Availability Zones are connected through high-speed, private fiber-optic networks.


* **Zonal services**: virtual machines, managed disks, IP addresses
* **Zone-redundant services**– platform replicates automatically across zones (for example, zone-redundant storage, SQL Database).

### **16 region pair**

* Each Azure region is always paired with another region within the same geography
* This approach allows for the replication of resources
* If a region in a pair was affected by a natural disaster

### **17 Service-Level Agreements for Azure**

**Performance Targets / Uptime and Connectivity Guarantees / Service credits** 


### **18 What is Azure App Service?**

Azure App Service is a platform-as-a-service (PaaS) offering in Azure that is designed to host enterprise-grade web-oriented applications.

### **19 Scaling VMs in Azure**

**Availability sets / Virtual Machine Scale Sets / Azure Batch**

### **20 availability sets**

* **A planned maintenance event**: is when the underlying Azure fabric that hosts VMs is updated by Microsoft.
* **Unplanned maintenance events** involve a hardware failure in the data center, such as a power outage or disk failure.

**Up to 3 fault domains  / 5 logical update domains which then can be increased to a maximum of 20**

### **21 virtual machine scale sets**

Azure Virtual Machine Scale Sets let you create and manage a group of identical, load balanced VMs.

### **22 Azure Batch**

Azure Batch enables large-scale job scheduling and compute management with the ability to scale to tens, hundreds, or thousands of VMs.

### **23 Containers in Azure**

**Azure Container Instances (ACI) / Azure Kubernetes Service (AKS)**

### **24 Explore Serverless computing in Azure**

* Serverless computing ideas:

**Abstraction of servers / Event-driven / scale micro-billing**

* **Two implementations** 
	* Azure Functions, which can execute code in almost any modern language.
	* Azure Logic Apps, which are designed in a web-based designer and can execute logic triggered by Azure services without writing any code.

### **25 Benefits of using Azure to store data**

**Automated backup and recovery / Replication across the globe / data analytics / Encryption / Multiple data types  / Data storage in virtual disks / Storage tiers**

### **26 Azure data storage can meet your business storage needs**

Azure SQL Database / Azure Cosmos DB / Azure Blob storage:

### **27 Azure Files**

Azure Files offers fully managed file shares in the cloud that are accessible via the industry **standard Server Message Block (SMB) protocol**

**Any number of Azure virtual machines or roles can mount and access the file storage share simultaneously.**

### **28 Storage tiers**

**Hot storage tier / Cool storage tier / Archive storage tier**

### **29 Encryption and replication**

* **Encryption for storage services: Azure Storage Service Encryption (SSE) /  Client-side encryption**
 
### **30 Azure data storage benefit**
 
**Cost effectiveness / Reliability /Storage types / Agility**

### **31 What's a network security group**

Network security group, or NSG, allows or denies inbound network traffic to your Azure resources.

### **32 What is Azure Load Balancer?**

**Load Balancer supports inbound and outbound scenarios**, provides low latency and high throughput, and scales up to millions of flows for all (TCP) and (UDP) applications

### **33 Azure Application Gateway**

If all your traffic is HTTP, a potentially better option is to use Azure Application Gateway. **Application Gateway is a load balancer designed for web applications.**

benefits of using Azure Application Gateway over a simple load balancer: 

**Cookie affinity / SSL termination / Web application firewall / URL rule-based routes / Rewrite HTTP headers**

### **34 Reduce latency with Azure Traffic Manager**

**Scale out to different regions / Use Traffic Manager to route users to the closest endpoint**

### **35 Get tips from Azure Security Center**

* Provide security recommendations
* Use Security Center for incident response（ Detect / Assess / Diagnose)
* Use Security Center recommendations to enhance security.

### **36 What is Azure Active Directory?**

Azure AD is a cloud-based identity service. **It has built in support for synchronizing with your existing on-premises Active Directory or can be used stand-alone.**

**Authentication / SSO / Application management / Device Management.**

### **37 Encryption**

* Symmetric encryption uses the same key to encrypt and decrypt the data. 
* Asymmetric encryption uses a public key and private key pair\
* **Encryption at rest / Encryption in transit**

### **38 Encryption on Azure**

**Azure Storage Service Encryption / Azure Disk Encryption / Encrypt databases**

### **39 Transparent data encryption (TDE)**

helps protect Azure SQL Database and Azure Data Warehouse against the threat of malicious activity.

**TDE encrypts the storage of an entire database by using a symmetric key called the database encryption key**

### **40 Azure Key Vault**

Azure Key Vault is a centralized cloud service for storing your application secrets.

**Secrets management / Key management / Certificate management / Store secrets backed by hardware security modules (HSMs)**


The benefits of using Key Vault include:

**Centralized application secrets / Monitor access and use.**

### **41 Azure certificates**

* Service certificates are used for cloud services
* Management certificates are used for authenticating with the management API

### **42 Azure Firewall**

* Azure Firewall provides **inbound** protection for non-HTTP/S protocols. 
* It also provides outbound, network-level protection for all ports and protocols, and application-level protection for outbound HTTP/S.

### **43 Azure Application Gateway**

is a load balancer that includes a **Web Application Firewall (WAF)**

### **44 Controlling the traffic inside your virtual network**


NSG can contain multiple inbound and outbound security rules that enable you to filter traffic to and from resources by source and destination IP address, port, and protocol

### **45 Protect your shared documents**

Azure Information Protection: b**y protecting sensitive information such as emails and documents with encryption, restricted access and rights, and integrated security in Office apps**

Microsoft Azure Information Protection (sometimes referred to as AIP) **ss a cloud-based solution that helps organizations classify and optionally protect documents and emails by applying labels**.

### **46 Azure Advanced Threat Protection**

Azure Advanced Threat Protection (Azure ATP) is a **cloud-based security solution that identifies, detects, and helps you investigate advanced threats**, compromised identities, and malicious insider actions directed at your organization.

### **47 Application Lifecycle Management Solutions**

The Microsoft Security Development Lifecycle (SDL) introduces security and privacy considerations throughout all phases of the development process

### **48 Azure Policy**

These policies enforce different rules and effects over your resources so that those resources stay compliant with your corporate standards and service level agreements.


### **49 Monitor your service health**

**Azure Monitor / Azure Service Health**

Azure Monitor can collect data from a variety of sources

* Application monitoring data
* Guest OS monitoring data
* Azure resource monitoring data
* Azure subscription monitoring data
* Azure tenant monitoring data

### **50 Diagnostic settings**

Activity Logs record when resources are created or modified and Metrics tell you how the resource is performing and the resources that it's consuming.

### **51 Getting more data from your apps**

**Application Insights / Azure Monitor for containers / Azure Monitor for VMs**

* Responding to alert conditions: **Alerts / Autoscale**

### **52 Azure Service Health**

Azure Service Health is a suite of experiences that provide personalized guidance and support when issues with Azure services affect you

Azure Service Health is composed of the following views.

**Azure Status / Service Health / Resource Health**

### **53 What are resource groups**

* A resource group is a logical container for resources deployed on Azure.
* Logical grouping / Life cycle / Authorization
* You can manage and apply the following resources at resource group level
	*  Metering and billing / Policies / Monitoring and alerts / Quotas / Access control


### **54 resource locks**

* Resource locks can set to either **Delete** or **Read-only**.
* Resource locks can be applied to
	* **subscriptions / resource groups / individual resources**,

**Even if you are an owner of the resource, you must still remove the lock before you'll actually be able to perform the blocked activity.**

### **55 Predict costs and optimize spending for Azure**

* Purchase Azure products and services
* Azure billing zones
* Estimate costs with the Azure pricing calculator
* Predict and optimize with Cost Management and Azure Advisor
* Estimate the Total Cost of Ownership with the Azure TCO calculator





 



