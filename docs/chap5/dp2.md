# **Explore fundamental relational data concepts**

## **Introduction**

The relational database model was designed to solve the problem of multiple arbitrary data structures. 


One of the key advantages of the relational database model is its use of tables, **which are an intuitive, efficient, and flexible way to store and access structured information.**

### **Understand relational data**

In a relational database, you model collections of entities from the real world as **tables**. 

An entity can be anything for which you want to record information; typically important objects and events

* Relational tables are a format for structured data, and each row in a table has the same columns
* **Each column stores data of a specific datatype**. 


### **Understand normalization**

Normalization is a term used by database professionals for a schema design process that minimizes data duplication and enforces data integrity.

While there are many complex rules that define the process of **refactoring data into various levels (or forms) of normalization**, a simple definition for practical purposes is:

* Separate **each entity** into its own table.
* Separate **each discrete attribute** into its own column.
* Uniquely identify each entity instance (row) ***using a primary key***.
* Use **foreign key** columns to link related entities.

Recording each instance of an entity as a row in an entity-specific table removes duplication of data.

The decomposition of attributes into individual columns ensures that each value is constrained to an appropriate data type 

the creation of individual columns provides a useful level of granularity in the data for querying


Instances of each entity are uniquely identified by an ID or other key value, known as a primary key; 

When one entity references another (for example, an order has an associated customer), **the primary key of the related entity** is stored as a **foreign key**.

**A relational database management system (RDBMS) can enforce referential integrity to ensure that a value entered into a foreign key field has an existing corresponding primary key in the related table** 

In some cases, a key (primary or foreign) can be defined as a **composite key based on a unique combination of multiple columns**. 


### **Explore SQL**

Microsoft SQL Server, and Azure database services that are based on the SQL Server database engine, use Transact-SQL. 

This implementation includes proprietary extensions for writing stored procedures and triggers (application code that can be stored in the database), and managing user accounts.

Some popular dialects of SQL include:

* Transact-SQL (T-SQL). This version of SQL is used by Microsoft SQL Server and Azure SQL services.
* pgSQL. This is the dialect, with extensions implemented in PostgreSQL.
* PL/SQL. This is the dialect used by Oracle. PL/SQL stands for Procedural Language/SQL.

### **SQL statement types**


SQL statements are grouped into three main logical groups:

* Data Definition Language (DDL)
* Data Control Language (DCL)
* Data Manipulation Language (DML)


* **DDL statements** CREATE / ALTER / DROP / RENAME
	* **RENAME**	Rename an existing object.

> Columns marked as NOT NULL are referred to as mandatory columns. If you omit the NOT NULL clause, you can create rows that don't contain a value in the column. An empty column in a row is said to have a NULL value.

```
CREATE TABLE Product
(
    ID INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Price DECIMAL NULL
);
```

Most database management systems support **numeric types such as INT (an integer, or whole number), DECIMAL (a decimal number), and string types such as VARCHAR (VARCHAR stands for variable length character data)**

**DCL statements**

Database administrators generally use DCL statements to manage access to objects in a database by granting, denying, or revoking permissions to specific users or groups.

**GRANT	/  DENY /  REVOKE**

```
GRANT SELECT, INSERT, UPDATE
ON Product
TO user1;
```

* **DML statements**

You use DML statements to manipulate the rows in tables. These statements enable you to retrieve (query) data, insert new rows, or modify existing rows. You can also delete rows if you don't need them anymore.

* SELECT	/ INSERT / UPDATE / DELETE	

```
SELECT o.OrderNo, o.OrderDate, c.Address, c.City
FROM Order AS o
JOIN Customer AS c
ON o.Customer = c.ID
```

## **Describe database objects**

**views, stored procedures, and indexes.**

### **view**


**A view is a virtual table based on the results of a SELECT query**. **You can think of a view as a window** on specified rows in one or more underlying tables. 

```
CREATE VIEW Deliveries
AS
SELECT o.OrderNo, o.OrderDate,
       c.FirstName, c.LastName, c.Address, c.City
FROM Order AS o JOIN Customer AS c
ON o.Customer = c.ID;
```

**You can query the view and filter the data in much the same way as a table**

### **stored procedure**

A stored procedure defines SQL statements that can be **run on command**. 

Stored procedures are used to encapsulate programmatic logic in a database for actions that applications need to perform when working with data.

You can define a stored procedure with parameters to create a flexible solution for common actions that might need to be applied to data based on a specific key or criteria. 

```
CREATE PROCEDURE RenameProduct
	@ProductID INT,
	@NewName VARCHAR(20)
AS
UPDATE Product
SET Name = @NewName
WHERE ID = @ProductID;
```

```
EXEC RenameProduct 201, 'Spanner';
```

### **What is an index?**

An index helps you search for data in a table.

When you create an index in a database, you specify a column from the table, and the index contains a copy of this data in a sorted order, with pointers to the corresponding rows in the table. 

When the user runs a query that specifies this column in the WHERE clause, the database management system can use this index to fetch the data more quickly than if it had to scan through the entire table row by row.

```
CREATE INDEX idx_ProductName
ON Product(Name);
```

**The index creates a tree-based structure that the database system's query optimizer** can use to quickly find rows in the Product table based on a specified Name.

![Alt Image Text](../images/chap5_2_1.png "Body image")

For a table containing few rows, using the index is probably not any more efficient than simply reading the entire table and finding the rows requested by the query (in which case the query optimizer will ignore the index). 

However, when a table has many rows, indexes can dramatically improve the performance of queries.

**You can create many indexes on a table**

**Indexes aren't free.** 

An index consumes storage space, and each time you insert, update, or delete data in a table, the indexes for that table must be maintained. 

**This additional work can slow down insert, update, and delete operations**. You must strike a balance between having indexes that speed up your queries versus the cost of performing other operations.

1.Which one of the following statements is a characteristic of a relational database?

> A row in a table represents a single instance of an entity
> 
> That's correct. Each row in a table represents an instance of an entity.

2.Which SQL statement is used to query tables and return data?

> SELECT
> 
> Use the SELECT statement to query one or more tables and return data.

3.What is an index?

> A structure that enables queries to locate rows in a table quickly
> 
>  **Indexes improve query performance by locating rows with indexed column values**.

## **Describe Azure SQL services and capabilities**

* **SQL Server on Azure Virtual Machines (VMs)** 
	* **A virtual machine running in Azure with an installation of SQL Server**. 
	* The use of a VM makes this option an infrastructure-as-a-service (IaaS) solution that virtualizes hardware infrastructure for compute, storage, and networking in Azure; 
	* Making it a great option for "lift and shift" migration of existing on-premises SQL Server installations to the cloud.


* **Azure SQL Managed Instance** 
	* A platform-as-a-service (PaaS) option that provides near-100% compatibility with on-premises SQL Server instances while abstracting the underlying hardware and operating system. 
	* The service includes automated software update management, backups, and other maintenance tasks, reducing the administrative burden of supporting a database server instance.
* **Azure SQL Database** 
	* A fully managed, highly scalable PaaS database service that is designed for the cloud. 
	* This service includes the core database-level capabilities of on-premises SQL Server, and is a good option when you need to create a new application in the cloud.
* **Azure SQL Edge** 
	* A SQL engine that is optimized for Internet-of-things (IoT) scenarios that need to work with streaming time-series data.


### **Compare Azure SQL services**

* **SQL Server on Azure VMs**
	* IaaS
	* SQL Server instances are installed in a virtual machine. Each instance can support multiple databases.
	* You must manage all aspects of the server, including operating system and SQL Server updates, configuration, backups, and other maintenance tasks. 
	* **Use this option when you need to migrate or extend an on-premises SQL Server solution** and retain full control over all aspects of server and database configuration.


* **Azure SQL Managed Instance**
	* PaaS
	* Near-100% compatibility with SQL Server. Most on-premises databases can be migrated with minimal code changes by using the **Azure Database Migration service**
	* Each managed instance can support multiple databases. Additionally, **instance pools can be used to share resources efficiently across smaller instances**.
	* **Fully automated updates, backups, and recovery**.
	* Use this option for most cloud migration scenarios, particularly when you need minimal changes to existing applications.

* Azure SQL Database
	* PaaS
	* Supports most core database-level capabilities of SQL Server. Some features depended on by an on-premises application may not be available.
	* You can provision a single database in a dedicated, managed (logical) server; 
		* or you can use an elastic pool to share resources across multiple databases and take advantage of on-demand scalability.
	* Fully automated updates, backups, and recovery.
	* Use this option for new cloud solutions, or to migrate applications that have minimal instance-level dependencies.

### **SQL Server on Azure Virtual Machines**

This approach is **suitable for migrations and applications requiring access to operating system** features that might be unsupported at the PaaS level. 

SQL virtual machines are **lift-and-shift ready for existing applications** that require fast migration to the cloud with minimal changes. 

You can also use **SQL Server on Azure VMs to extend existing on-premises applications** to the cloud in hybrid deployments.

You can use SQL Server in a virtual machine to develop and test traditional SQL Server applications. 

With a virtual machine, you have the **full administrative rights over the DBMS and operating system.** It's a perfect choice when an organization already has IT resources available to maintain the virtual machines.

* Create rapid development and test scenarios when you don't want to buy on-premises non-production SQL Server hardware.
* Become lift-and-shift ready for existing applications that require fast migration to the cloud with minimal changes or no changes.
* **Scale up the platform on which SQL Server is running**, by allocating more memory, CPU power, and disk space to the virtual machine. Y**ou can quickly resize an Azure virtual machine without the requirement that you reinstall the software that is running on it**.

**Business benefits**

* It's not always easy for businesses to switch their DBMS to a fully managed service
* Using virtual machines can offer a solution, **but using them doesn't eliminate the need to administer your DBMS as carefully as you would on-premises.**

### **Azure SQL Database Managed Instance**

Azure SQL Managed instance effectively runs a fully controllable instance of SQL Server in the cloud. 

You can install multiple databases on the same instance. You have complete control over this instance, much as you would for an on-premises server. 

SQL Managed Instance automates backups, software patching, database monitoring, and other general tasks, but you have full control over security and resource allocation for your databases. 


Managed instances depend on other Azure services such as 

* Azure Storage for backups, 
* Azure Event Hubs for telemetry,
* Azure Active Directory for authentication, 
* Azure Key Vault for Transparent Data Encryption (TDE) 

A couple of Azure platform services that provide security and supportability features. The managed instances make connections to these services.

* **Use cases**

Azure SQL Managed Instance provides features not available in Azure SQL Database. 

If your system uses features such as **linked servers, Service Broker (a message processing system that can be used to distribute work across servers), or Database Mail (which enables your database to send email messages to users), then you should use managed instance**
 
* Business benefits

Azure SQL Managed Instance supports SQL Server Database engine logins and logins integrated with Azure Active Directory (AD). 

SQL Server Database engine logins include a username and a password. You must enter your credentials each time you connect to the server. **Azure AD logins use the credentials associated with your current computer sign-in, and you don't need to provide them each time you connect to the server**.

### **Azure SQL Database**

Azure SQL Database is a PaaS offering from Microsoft. **You create a managed database server in the cloud**, and then deploy your databases on this server.

> A SQL Database server is a logical construct that acts as a central administrative point for multiple single or pooled databases, logins, firewall rules, auditing rules, threat detection policies, and failover groups.


Azure SQL Database is available as a **Single Database or an Elastic Pool**.


**Single Database**

This option enables you to quickly set up and run a single SQL Server database. You create and run a database server in the cloud, and you access your database through this server. 


**Elastic Pool**

This option is similar to Single Database, **except that by default multiple databases can share the same resources, such as memory, data storage space, and processing power through multiple-tenancy.**


The resources are referred to as a pool. You create the pool, and only your databases can use the pool. T**his model is useful if you have databases with resource requirements that vary over time, and can help you to reduce costs**. 

For example, your payroll database might require plenty of CPU power at the end of each month as you handle payroll processing, but at other times the database might become much less active.


You might have another database that is used for running reports. This database might become active for several days in the middle of the month as management reports are generated, but with a lighter load at other times. 


Elastic Pool enables you to use the resources available in the pool, and then release the resources once processing has completed.

Azure SQL Database is often used for:

* Modern cloud applications that need to use the latest stable SQL Server features.
* Applications that require high availability.
* **Systems with a variable load that need the database server to scale up and down quickly**.

### **Business benefits**

Azure SQL Database automatically updates and patches the SQL Server software to ensure that you're always running the latest and most secure version of the service.


* The service provides high availability guarantees, to ensure that your databases are available at least 99.995% of the time. 
* Azure SQL Database supports **point-in-time restore, enabling you to recover a database to the state** it was in at any point in the past. Databases can be replicated to different regions to provide more resiliency and disaster recovery.
* Advanced threat protection provides advanced security capabilities, such as **vulnerability assessments, to help detect and remediate potential security problems **with your databases. 
* **Threat protection also detects anomalous activities** that indicate unusual and potentially harmful attempts to access or exploit your database. 
* **It continuously monitors your database for suspicious activities, and provides immediate security alerts on potential vulnerabilities**, **SQL injection attacks**, and anomalous database access patterns. Threat detection alerts provide details of the suspicious activity, and recommend action on how to investigate and mitigate the threat.
* Auditing tracks database events and writes them to an audit log in your Azure storage account. Auditing can help you maintain regulatory compliance, understand database activity, and gain insight into discrepancies and anomalies that might indicate business concerns or suspected security violations.

SQL Database helps secure your data by **providing encryption that protects data that is stored in the database (at rest) and while it is being transferred across the network (in motion)**.

# DP900

## Describe Azure services for open-source databases

### What are MySQL, MariaDB, and PostgreSQL?

**MySQL**

It's available in several editions; **Community, Standard, and Enterprise**.

* The Community edition is available free-of-charge, and has historically been popular as a database management system for web applications, **running under Linux**.
* Enterprise edition provides a comprehensive set of tools and features, including enhanced 
  * security, availability, and scalability. 
* The Standard and Enterprise editions are the versions most frequently used by commercial organizations, although these versions of the software aren't free.

**MariaDB** 

MariaDB is a newer database management system, created by the **original developers of MySQL**. 

The database engine has since been rewritten and optimized to improve performance. MariaDB offers compatibility with Oracle Database (another popular commercial database management system). 

**One notable feature of MariaDB is its built-in support for temporal data. A table can hold several versions of data, enabling an application to query the data as it appeared at some point in the past**.

**PostgreSQL**

PostgreSQL is a hybrid relational-object database. You can store data in relational tables, but a PostgreSQL database also enables you to store custom data types, with their own non-relational properties. 


* The database management system is extensible; 
* **You can add code modules to the database, which can be run by queries**. 
* Another key feature is the ability to **store and manipulate geometric data, such as lines, circles, and polygons**.

PostgreSQL has its own query language called pgsql. This language is a variant of the standard relational query language, SQL, with features that enable you to write stored procedures that run inside the database.

### Azure Database for MySQL

Azure Database for MySQL is a PaaS implementation of MySQL in the Azure cloud, based on the MySQL Community Edition.

* The Azure Database for MySQL service includes high availability at no additional cost, and scalability as required. 
* You only pay for what you use. Automatic backups are provided, with point-in-time restore.

The server provides connection security to enforce firewall rules and, optionally, require SSL connections. Many server parameters enable you to configure server settings such as lock modes, maximum number of connections, and timeouts.

Azure Database for MySQL provides a global database system that scales up to large databases without the need to manage hardware, network components, virtual servers, software patches, and other underlying components.

Certain operations aren't available with Azure Database for MySQL. These functions are primarily concerned with security and administration. Azure manages these aspects of the database server itself.

### **Benefits of Azure Database for MySQL**

You get the following features with Azure Database for MySQL:

* High availability features built-in.
* Predictable performance.
* Easy scaling that responds quickly to demand.
* Secure data, both at rest and in motion.
* Automatic backups and point-in-time restore for the last 35 days.
* Enterprise-level security and compliance with legislation.

The system uses pay-as-you-go pricing so you only pay for what you use.

Azure Database for MySQL servers provides monitoring functionality to add alerts, and to view metrics and logs.

### **Azure Database for MariaDB**

It's based on the MariaDB Community Edition.

### **Benefits of Azure Database for MariaDB**

Azure Database for MariaDB delivers:

* Built-in high availability with no additional cost.
* Predictable performance, using inclusive pay-as-you-go pricing.
* Scaling as needed within seconds.
* Secured protection of sensitive data at rest and in motion.
* Automatic backups and point-in-time-restore for up to 35 days.
* Enterprise-grade security and compliance.

### **Benefits of Azure Database for MariaDB**

Azure Database for MariaDB delivers:

* Built-in high availability with no additional cost.
* Predictable performance, using inclusive pay-as-you-go pricing.
* Scaling as needed within seconds.
* Secured protection of sensitive data at rest and in motion.
* Automatic backups and point-in-time-restore for up to 35 days.
* Enterprise-grade security and compliance.


### **Azure Database for PostgreSQL**

**Azure Database for PostgreSQL Flexible Server**

The flexible-server deployment option for PostgreSQL is a fully managed database service. It provides a high level of control and server configuration customizations, and provides cost optimization controls.

### **Benefits of Azure Database for PostgreSQL**

Azure Database for PostgreSQL is a highly available service. It contains built-in failure detection and failover mechanisms.

Users of PostgreSQL will be familiar with the pgAdmin tool, which you can use to manage and monitor a PostgreSQL database. You can continue to use this tool to connect to Azure Database for PostgreSQL. However, some server-focused functionality, such as performing server backup and restore, aren't available because the server is managed and maintained by Microsoft.

Azure Database for PostgreSQL records information about queries run against databases on the server, and saves them in a database named `azure_sys`. 


You query the `query_store.qs_view` view to see this information, and use it to monitor the queries that users are running. This information can prove invaluable if you need to fine-tune the queries performed by your applications.

1. Which deployment option offers the best compatibility when migrating an existing SQL Server on-premises solution?
  * Azure SQL Managed Instance
  * Correct. Azure SQL Managed Instance offers near 100% compatibility with SQL Server.

2. Which of the following statements is true about Azure SQL Database?  
  * Most database maintenance tasks are automated
  * Correct. Azure SQL Database automates most maintenance tasks.

3. Which database service is the simplest option for migrating a LAMP application to Azure?
  * Azure Database for MySQL
  * Correct. LAMP standard for Linux, Apache, MySQL, and PHP.
