# **L6 Azure Review 103**

## **Manage Subscriptions and Resources**

### **Assign administrator roles overview**

* **Classic**: Account Administrator / Service Administrator / Co-Administrator
* **Role-Based Access Control** 
	* Owner: **Full access to all resources / Delegate access**
	* Contributor: Cannot delegate / Create and manage resources
	* Reader
	* **User Access Administrator: Special account / Privilege at the root scope (/) / Temporary**
	* Azure AD Administrators
		* Manage Azure AD resources
		* Several Azure AD roles


### Configure cost center quotas and tagging

* **Azure Spending Limit**
* Resource Tags: 15 tags

### **Azure Policy overview**

* Azure Policies: compliance / Scans & reporting / **ensure SLAs and corporate policies**
* Azure Policy Assignment Options: **Policy / Initiative**
* initiative Definition: **<mark>Grouping of policies</mark> / Assign the definition to a resource**

## Analyze Resource Utilization and Consumption

### Azure log overview

* **Application Logs**: Application Logs / Web server diagnostics / Application diagnostics
* **Guest OS Diagnostic Logs** virtual machine / operating system / applications
* **Diagnostic logs**: 
	* **Tenant log:  Azure Active Directory**
	* **Resource: Azure subscription** 
* **Compute Resource Logs**
	*  **Activity Logs:  Azure Infrastruture**
	*  Diagnostic logs: Resource

###  Configure diagnostic settings

**Diagnostic logs**  -> Export -> **MOS Log Analytics / Event Hubs / Azure Storage**

### Baseline for resources

**Process / Configuration / Update / Shared**

* **Configuration Management:  DSC(DSC Configuration Script)**

### **Azure Alerts**

**target, criteria, action**

* Signal Types:  **Metrics (PC) /  Events (Storage Logs) / Status(Health) / Notifications (Query)**
* Action: **Logic app / notification / automation runbook**
 

### Azure Monitor: performance counters

### Azure Advisor cost

* Eliminate unprovisioned ExpressRoute circuits
* Delete or reconfigure unused virtual network gateways
* Switch to reserved virtual machine instances
* **<mark>Optimize Virtual Machine Spend</mark>**

###  Manage and report on spend: 

* Online pricing calculator
* Using billing alert
* Spending Limit
* Cost Analysis
* **Azure Advisor:**  
	* idle and underutilized resources
	* Use virtual machine reserved instances


## Manage Resource Groups

### **Configure and apply resource locks**

* Prevents accidental deletion or modification of resources
* **CanNotDelete / ReadOnly**
* Lock Hierarchy

### Moving resource

* Move resources to a new subscription
* **Considerations**:   Resources are locked during the move
* **Subscription Requirements**: Subscription Requirements

### **Move resources across resource groups**

* Permissions Required to Move Resources
* Subscription Quotas
* Chunk Down Resources
* Validate the Move Request
* Virtual Machine Limitations
	*  Cannot move virtual machine scale sets
* Managed Disks Are Now Move Supported
* Virtual Network Considerations
	* **All resources dependent on the VNet must be moved**
	* Peered networks must first be un-peered, moved, and re-peered again

## Manage Role-Based Access Control (RBAC)

### Azure AD Admin Roles vs. RBAC (difference)

* **RBAC roles provide access management to Azure resources**
* Azure AD roles used to **manage Azure AD resources**

### Type of RBAC Roles:

Owner / Contributor / Reader / User Access Administrator / Built-in roles Custom roles

### RBAC Required Permissions:

User Access / Administrator Owner

### RBAC Role Assignments:


* **Security principal (User / Group / Service principal / Identity for an application)**

* Role definition(Collection of permissions) 

* **Scope: Management group / Subscription / Resource group / Resource**

 
## Implement and Manage Storage

### Azure Storage overview

 
**Azure Files / Azure Blob / Azure Queue / Azure Table / Azure Data Lake Storage Gen2**

* Azure Blob： **Unstructured data** / streaming / Access from anywhere
* Azure Blob for VHDs: Used for virtual machine disks / **Persistent storage**
* Azure Files: **Shared folder / Net use / Access files via SMB**
* Azure Queue Storage: **Stores messages / Can be accessed via HTTP or HTTPS /
Up to a million message**
* Azure Tables: **Structured NoSQL /  Key attribute store /  Schemaless / Azure Cosmos DB**

### Manage storage access keys

* Store the access keys in a secure location **Azure Key Vault**
* Use a shared access signature

**Types of Shared Access Signatures**

* **Service SAS**: Allows access to only **one storage service**
* **Account SAS**: Allows access to any of the storage services

### Monitor activity logs using Log Analytics

* Also known as **audit logs or operational logs**
* Logs are kept for 90 days

**Data Sources:  Virtual machines / Storage account / Azure Activity Logs / Scope / Configurations (preview) / Azure resources / System Center Operations Manager**

### Implement Azure Storage replication

* **Locally redundant storage (LRS)**
	* **Copy of the data in the same data center**
	* Three copies
* Zone-redundant storage (ZRS)
	* **Data is replicated to a data center in a secondary region**
	* Six copies of the data
* Geo-redundant storage (GRS)
	*  **Data is replicated to a data center in a secondary region**
	*  **Data can be read from the replica without Microsoft initiating a failover**
* Read-access geo-redundant storage (RA-GRS)
	* **Data is replicated synchronously across three storage clusters in the same region**
	* Each cluster is isolated in an availability zone
	* Only support on standard and GPv2 storage accounts

###  Import and Export Data to Azure

Import and export data to and from Azure Storage
 
 * Azure Data Box
 * Azure Import: Prepare the Disks
 * WAImporatExport Tool

### Blobs

* **Unstructured data**： **Files for distributed access /  Log files / Backups /  Archives / Data for analysis**
* Access objects via HTTP or HTTPS

```
https://youraccount.blob.core.windows.net/movies1/movie1.avi
```

**Container Access:**

* Allow access **without sharing access keys or shared access signature**
* **Stored access policy for fine-grained access**
* Public access level
	* **Private:   No Anonymous Access**
	* **Blob： Anonymous Read Access for Blobs Only**
	* **Container: Anonymous Read Access for Containers and Blobs**


* **Stored Access Policy**  
	* Fine-grained access control
	* Change start and expiry  / Modify the permissions
	* Easier to revoke access to the object

* **Immutable Blob Storage**
	* Write once, read many (WORM)
	* Data cannot be deleted or modified
	* New containers and data can still be added
	* **Time-based retention**

### **Configure and use Azure Blob Storage using the portal**

**Create container / Add Stored Access Policy /  Add Immutable Blob Storage**

### **Azure Content Delivery Network (CDN)**

* CDN Products： Premium Verizon / Standard Verizon / Standard Akamal / Standard Microsoft
* **Delivery of large files and media via general web delivery is supported on Microsoft and Verizon only**
* **CDN POP Configuration**: Microsoft recommends **creating POP locations based on features, not location**

## Configure Azure Files

* Company share hosted in the cloud
* File share via SMB 3.0
* **Mount on local systems**

**Mount the file share to our systems that are actually on premises or our virtual machines that are in Azure**

### Azure File Sync overview

* Components: **Storage Sync Service / Sync group / Registered server / Azure File Sync agent**
* **Sync Group: Cloud endpoint / Server endpoint**
* **Registered Server**
	* The server that contains the share to be synced
	* Must have the agent installed
* **Cloud Tiering**
	* **Frequently accessed (hot) files are cached locally**
	* Free space is the amount of space reserved on the local system for cached files 
* **Backup**
	* Microsoft recommends backing up the cloud share
	* **If backing up the on-premises server, cloud tiering should be disabled**
* Encryption
	* **Azure File Sync supports**
		* BitLocker encryption / Azure Information Protection (AIP) / Azure Rights Management (RMS) services / Active Directory RMS
	
### Create an Azure File Sync service and sync group
		
Create sync group / Add server endpoint /  Check registered Sync Server

## Implement Azure Backup

### **Components**

* **Recovery Services vault**
* **Backup policy**

### **Create and configure a Recovery Services Vault**

**Recovery Services Vault => Backup Infrastructure(Manage) => Backup Configuration(General) => Locally-redundant(Backup configuration)**

### **Create an Azure virtual machine backup**

* Backup frequency
* Retention Range
* Retention of daily backup point

**Backup reports**： 

### Restore an Azure virtual machine
  
* **Restore Azure Virtual Machine Options**: 
	* Create a new virtual machine 
	* Restore disks only 
	* Replace disks

## Deploy and Manage Virtual Machines

### Availability set overview

**Outage Types**

* Planned： **Patching / Hardware / Maintenance**
* Unplanned: **Local network failure / Hard disk**

**Availability Sets**

* **VMs are spread across fault and update domains**
* **Virtual machines must be created within the availability set**

**Fault Domain**

* Servers that share networking and power resources
* Availability sets are spread across fault domains

**Update Domain**

* Default is 5 update domains up to 20
* **All the virtual machines in an update domain will be rebooted together**

**Managed Disks**

* Microsoft recommends using managed disks
* Provides better isolation when combined with availability sets


**Unmanaged Disks**

* Keep virtual machine OS and data disks in the same storage account

### **Virtual machine networking overview**

 Virtual machine networking overview

* **Bits and Pieces**: Network interface / Subnets / IP addresses / Network security groups /Network load balancer

* **Network Interfaces** : **Each virtual machine must have at least one NIC**

* Subnets: Control traffic flow to and from the resources in the subnet
* IP Addresses: 
	* Dynamic: IP address can change / released when the virtual machine is stopped
	* **Static: IP address is assigned immediately and does not change**

* Network Security Groups(NSG):  **Provides network isolation / Rules that deny or allow traffic**
	*  Source IP, source port / Destination IP, destination port	
* Network Load Balancer
	*  Internal Load Balancer: Balances traffic between virtual machines in a VNet
	*  External Load Balancer: **Balances traffic from the Internet to virtual machines**

### Configure storage

* **Operating System Disk /  Temporary Disks /  Temporary Disks /  Data Disks**

### **Deploy and configure scale sets**

> An application gateway is used for web-based traffic, so it's HTTP, HTTPS, or WebSocket only
> 
> A load balancer will be used for stream-based traffic and any of protocols are supported
 
* Scale based on a metrics
* Scale rules
* Instance limit: min, max, default
 
**Configure diagnostic settings**:   **Tenant logs / Resource logs**

**You are deploying Azure Scale Sets and you need to allow web-based traffic to the instances. Which load-balancing option should you choose?: Application Gateway**

###  **Automate Deployment of Virtual Machines**
 
*  Configure location using custom deployment
*   Deploy from a template using PowerShell

## Manage Virtual Machine Backups

### Azure virtual machine backup

* Components: **Recovery Services vault / Backup policy**

* **Recovery Services vault**
	* Geo-replication by default
	* Backup of multiple virtual machines at once
	* Must be in the same location as the virtual machines


# **Implement and Manage Virtual Networking**

### **Virtual Network Overview**

* Isolation and segmentation from other virtual networks
	* Multiple VNets per region and subscription
	* **traffic is routed between all subnets in a VNet Network Security Groups & Network Virtual Appliances**

* Communication between the resources in the network
	* Subnets can not overlap
	* Use a **service endpoint** to restrict **access to a resource, such as Azure storage**

* Allows for external communication
	* **Outbound access is allowed by default / Inbound requires public IP** 
* Filter and Route traffic
	* **Network Routes / Network Security Groups / Network Virtual Appliances**

* **Connect virtual networks**
	*  Same or different regions / Different subscriptions

* **Virutal Network Subnet**
	* **Connect VNets in different region and subscriptions  /  <mark>Requires a VNet Gateway</mark>  /   Provides a secure tunnel**
	* <mark>Requires a VNet Gateway</mark>


### Azure IP addressing overview

#### **Public IP**

*  **Public IP： Connect to the Internet  / Connect to other Azure public-facing (Services SQL Databases)**
*  Public IP Assignments: **Virtual machines (Assigned to the primary NIC) / VPN Gateways / Application Gateways / Internet-facing load balancers**
* Best Practice
	 * **Microsoft recommends not applying the static IP to the OS of the virtual machine**


#### **Private IPs**

* Connect to an on-premise environment： **VPN Gateway / ExpressRoute /  Not accessible to the Internet**
* Private IP - Dynamic： May change from reboot to reboot
* Private IP - Static： **Assigned when the virtual machine is provisioned / Never released**
* **Private Static IP Uses： Domain controllers / DNS servers**

## Create Connectivity between Virtual Networks

Azure virtual network connectivity options:

* VNet Peering Global VNet Peering spans regions
* VNet to VNet Overview
	* **VPN Gateway is required**
	* Traffic between the networks is **private**, never exposed to the Internet
	* You can across subscriptions

## Configure Name Resolution

**Azure provided name resolution / Bring your own DNS / Azure DNS Azure DNS Private Zones (Preview)**

### **Azure DNS**

* Provides name resolution within a Azure network
* Replaces managing a DNS server
* Span virtual networks, regions and subscriptions
* Support split-horizon

### Create and Configure a Network Security Group

* List of Rules /  Allow or Deny Traffic
* Applied to
	*  **Subnet — affects all the virtual machines in the subnet**
	*  **Network Interface — affects the virtual machine**

* Default Inbound Security Rules
	* **AllowVNetInBound / AllowAzureLoadBalancerInBound  / DenyAllInBound**

* Default Outbound Security Rules
	* **AllowVnetOutbound  /  AllowInternetOutBound  / DenyAllOutBound**

* Security rules are processed in which order?  **lowest to highest**


## Load Balancers and Application Gateways

### Implementing Azure Load Balancers
 
Azure resource / Distribute inbound requests to pools of systems / Check for service health

* How Do Load Balancers Work
	* Layer 4 (transport) rules
	* Network Address Translation (NAT) rules
	* **TCP, HTTP, and HTTPS health probes**
	* **The front end:   Public IP  / private load balancer.**
	* **The back end: Pool of servers /  App services  /  Scale sets**

### Implementing Azure Application Gateways
 
* What Is an Application Gateway : Web traffic load balancer 
* **Operates on OSI Layer 7 (application)**
* Route requests based on URI path and host headers

### Some Application Gateway Features
  
* Redirection, multihosting, and URL-based routing
* SSL/TLS termination
* Autoscaling and zone redundancy (Prevent downtime in the case an actual data center fails)
* Session affinity (attach a client to a specific server in the back end)

### Web application firewall 

**Special version of an application gateway  /  Prevents common exploits of web applications / Detection and prevention modes**

## Manage Identities

*  Microsoft Services Using AD
	 *	 Single Sign-On for Cloud Apps
	 *	 **Integrates with On-Premises Server Active Directory**  
	 	* Synchronize accounts between Server AD and Azure AD
	 	* Password synchronization
	 	* **Single sign-on (SSO) via Active Directory Federation Services (AD FS)**

* Identity Management
* Azure AD Join overview  
	*  Device Management Options: **Registering / Joining / Hybrid Azure AD joined**





 





 
 












































 














 


























 

















