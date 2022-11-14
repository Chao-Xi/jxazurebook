# DP900 Exam Point


### Explore core data concepts

* **Structured data**

Structured data is data that adheres to a fixed schema, so all of the data has the same fields or properties.

* **Semi-structured data**

Semi-structured data is information that has some structure, but which allows for some variation between entity instances.

* **Unstructured data**

    * File stores
    * Databases

* **Delimited text files**
    * comma-separated values (CSV)
    * tab-separated values (TSV)
    * space-delimited (in which tabs or spaces are used to separate fields)
    * JavaScript Object Notation (JSON)
    * Extensible Markup Language (XML)
    * Binary Large Object (BLOB)
* **Optimized file formats**
    * Avro is a row-based format. It was created by Apache.
        *  Each record contains a header that describes the structure of    the data in the record.
        * This header is stored as JSON.
        * The data is stored as binary information.
        * Avro is a good format for compressing data and minimizing storage and network bandwidth requirements

* ORC (Optimized Row Columnar format) organizes data into columns rather than rows.
    * It was developed by HortonWorks for optimizing read and write operations in Apache Hive
    * (Hive is a data warehouse system that supports fast data summarization and querying over large datasets).
    * An ORC file contains stripes of data.
    * Each stripe holds the data for a column or set of columns.
* Parquet is another columnar data format.
    * **Parquet file contains row groups.**
    * **Data for each column is stored together in the same row group**.
    * Each row group contains one or more chunks of data.
    * A Parquet file includes metadata that describes the set of rows found in each chunk
    * Parquet specializes in storing and processing nested data types efficiently.
    * It supports very efficient compression and encoding schemes.

### **Explore databases**

* Relational databases / Non-relational databases 
* **Document databases**, which are a specific form of key-value database in which the value is a JSON document (which the system is optimized to parse and query)
* **Column family databases**, which store tabular data comprising rows and columns, but you can divide the columns into groups known as **column-families**. Each column family holds a set of columns that are
logically related together.
* **Graph databases**, which store entities as nodes with links to define relationships between them

### **Explore transactional data processing**

* **Data warehouses** are an established way to **store data in a relational schema that is optimized for read operations** – **primarily queries to support reporting and data visualization**

> A data warehouse is a relational database in which the schema is optimized for queries that read data

* Data lakes are common in large-scale data analytical processing scenarios, where a large volume of **file-based data must be collected and analyzed**

* **Data aggregations** are across dimensions at different levels, enabling you to **drill up/down to view aggregations at multiple hierarchical levels**;

**数据仓库**

* 通常情况下，事务性存储中的数据在架构中不规范，其中的数值存储在中⼼的“fact”表中，这些表与⼀个或多个“dimension”表相关，表示可聚合数据的实体。
* 这类“fact”和“dimension”表架构称为“星型架构”；
* 虽然它通常通过添加与“dimension”表相关的其他表来扩展到“雪花型”架构，以表示维度层次结构（例如，product 可能与产品类别相关）。

**Data Lake**

* 数据湖是⼀种⽂件存储，通常位于可⽤于⾼性能数据访问的分布式⽂件系统上。
* Spark 或 Hadoop 等技术通常⽤于处理对存储⽂件的查询，并返回数据以进⾏报告和分析。
* 数据湖⾮常适合⽤于⽀持混合使⽤结构化、半结构化、甚⾄⾮结构化的数据，在将数据写⼊存储时⽆需强制执⾏架构即可进⾏分析。

**混合⽅法**

* Azure Synapse Analytics 中的 SQL 池包含“PolyBase”，这使你可以基于数据湖中的⽂件（和其他源）定义外部表，并使⽤ SQL 查询它们
* 数据湖仓库是基于 Spark 系统中的⼀种相对较新的⽅法，通过“增量湖”等技术启⽤；


### **Azure Synapse Analytics 是统⼀的、端到端的⼤规模数据分析解决⽅案**

* ⾼性能基于 SQL Server 的关系数据仓库的数据完整性和可靠性与数据湖和开源 Apache Spark 的灵活性结合起来
* Azure Synapse 数据资源管理器池对⽇志和遥测分析的本机⽀持，以及⽤于数据引⼊和转换的内置数据管道。
* Azure Synapse Studio 的单个交互式⽤户界⾯来管理
    * 预配 Azure Synapse Analytics ⼯作
        * 引⼊数据
        * 使⽤ SQL 池来分析数据
        * 使⽤ Spark 池来分析数据 
    * 可使⽤哪些 Azure 服务创建⽤于数据引⼊和处理的管道？  ： **Azure Synapse Analytics 和 Azure Data factory**
    * Azure Synapse Analytics 包含哪些开源分布式处理引擎   Apache Spark

### **数据引⼊管道**

在 Azure 上，通过创建协调 ETL 进程的“管道”，可以最好地实施⼤规模数据引⼊。 

* **可以使⽤ Azure Data factory 创建和运⾏管道**
* **如果要在统⼀⼯作区中管理数据仓库解决⽅案的所有组件，也可以在 Azure Synapse Analytics 中使⽤相同的管道引擎**

1. 可以使⽤ Azure Blob 存储链接服务来导⼊输⼊数据集，
2. 然后在 Azure Databricks 或 Azure HDInsight 上运⾏数据处理任务之前，使⽤ Azure SQL 数据库等服务运⾏查找相关数据值的存储过程，或
使⽤ Azure 函数应⽤⾃定义逻辑。 
3. 最后，可以将输出数据集保存在链接服务中，例如Azure Synapse Analytics。 
4. 管道还可以包括⼀些不需要链接服务的内置活动

### **Azure Databricks**

* Databricks 是⼀种基于 Apache Spark 构建的综合性数据分析解决⽅案，提供了本机 SQL 功能，以及⽤于数据分析和数据科学的负载优化 Spark 群集。
* Databricks 提供了⼀个交互式⽤户界⾯，通过该界⾯可以管理系统，并且可以在交互式笔记本中查看数据。

### **Azure HDInsight 是⽀持多种开源数据分析群集类型的 Azure 服务**

* 分析解决⽅案依赖于多个开源框架或需要将现有的基于 hadoop 的解决⽅案迁移到云，它可能是⼀个合适的选择。

## **Identify data services**

### Azure SQL

* Azure SQL Database – a fully managed platform-as-a-service (PaaS) database hosted in Azure
* Azure SQL Managed Instance – a hosted instance of SQL Server with automated maintenance, which allows more flexible configuration than Azure SQL DB but with more administrative responsibility for the owner.
* Azure SQL VM – a virtual machine with an installation of SQL Server, allowing maximum configurability with full management responsibility.

### **Azure Cosmos**

Azure Cosmos DB is a global-scale non-relational (NoSQL) database system that supports multiple application programming interfaces (APIs), enabling you to store and manage data as JSON documents, key-value pairs, column-families, and graphs.

### **Azure Data Factory**

* Azure Data Factory is an Azure service that enables you to define and schedule data pipelines to transfer and transform data.
* Azure Data Factory is used by data engineers to build extract, transform, and load (ETL) solutions that populate analytical data stores with data from transactional systems across the organization.

### **Azure Synapse Analytics**

* Pipelines - based on the same technology as Azure Data Factory.
* SQL - a highly scalable SQL database engine, optimized for data warehouse workloads.
* Apache Spark - an open-source distributed data processing system that supports multiple programming languages and APIs, including Java, Scala, Python, and SQL.
* **Azure Synapse Data Explorer - a high-performance data analytics solution that is optimized for real-time querying of log and telemetry data using Kusto Query Language (KQL).**

**Which single service would you use to implement data pipelines, SQL analytics, and Spark analytics?     Azure Synapse Analytics**

### **Azure Databricks**

* **Combines the Apache Spark data processing platform with SQL database semantics and an integrated management interface to enable large-scale data analytics**.

### **Azure HDInsight**

* Apache Spark - a distributed data processing system that supports multiple programming languages and APIs, including Java, Scala, Python, and SQL.
* Apache Hadoop - a distributed system that uses MapReduce jobs to process large volumes of data efficiently across multiple cluster nodes. MapReduce jobs can be written in Java or abstracted by interfaces such as Apache Hive - a SQL-based API that runs on Hadoop.
* Apache HBase - an open-source system for large-scale NoSQL data storage and querying.
* Apache Kafka - a message broker for data stream processing.
* Apache Storm - an open-source system for real-time data processing through a topology of spouts and bolts.

### Azure Data Explorer

querying of log and telemetry data as the Azure Synapse Data Explorer runtime in Azure Synapse Analytics.

### Microsoft Purview

* Microsoft Purview provides a solution for enterprise-wide data governance and discoverability.
* Microsoft Purview to create a map of your data and track data lineage across multiple data sources and systems, enabling you to find trustworthy data for analysis and reporting.

## Explore fundamental relational data concepts

* Separate **each entity** into its own table.
* Separate **each discrete attribute** into its own column.
* Uniquely identify each entity instance (row) **using a primary key**.
* Use **foreign key** columns to link related entities

**SQL statement types**

* Data Definition Language (DDL)
    * CREATE / ALTER / DROP / RENAME
* Data Control Language (DCL)
    * GRANT / DENY / REVOKE
* Data Manipulation Language (DML)
    * SELECT / INSERT / UPDATE / DELETE

### **view**

* A view is a virtual table based on the results of a SELECT query.
* You can query the view and filter the data in much the same way as a table

### **stored procedure**

* A stored procedure defines SQL statements that can be run on command.
* Stored procedures are used to encapsulate programmatic logic in a database for actions that applications need to perform when working with data.

### **Index**

* **The index creates a tree-based structure that the database system’s query optimizer** can use to quickly find rows in the Product table based on a specified Name.
* A structure that enables queries to locate rows in a table quickly
* Indexes improve query performance by locating rows with indexed column values.)

### SQL Server on Azure Virtual Machines (VMs)

Making it a great option for “lift and shift” migration of existing on-premises SQL Server
installations to the cloud.

* You must manage all aspects of the server, including operating system and SQL Server updates, configuration, backups, and other maintenance tasks.
* **Use this option when you need to migrate or extend an on-premises SQL Server solution
and retain full control over all aspects of server and database configuration**.


### Azure SQL Managed Instance

* A platform-as-a-service (PaaS) option that provides near-100% compatibility with on-premises SQL Server instances while abstracting the underlying hardware and operating system.
* Near-100% compatibility with SQL Server. Most on-premises databases **can be migrated with minimal code changes by using the Azure Database Migration service**
* Each managed instance can support multiple databases. Additionally, **instance pools can be used to share resources efficiently across smaller instances**
* Use this option for most cloud migration scenarios, particularly when you need minimal changes to existing applications.

**Managed instances depend on other Azure services such as**

* Azure Storage for backups,
* Azure Event Hubs for telemetry,
* Azure Active Directory for authentication,
* Azure Key Vault for Transparent Data Encryption (TDE)

If your system uses features such as linked servers, Service Broker (a message processing system that can be used to distribute work across servers), or Database Mail (which enables your database to send email messages to users), then you should use managed instance

### Azure SQL Database

* A fully managed, highly scalable PaaS database service that is designed for the cloud.
* This service includes the core database-level capabilities of on-premises SQL Server, and is a good option when you need to create a new application in the cloud.
* You can provision a single database in a dedicated, managed (logical) server
* you can use an elastic pool to share resources across multiple databases and take
advantage of on-demand scalability.
* Use this option for new cloud solutions, or to migrate applications that have minimal instance-level dependencies.

**Elastic Pool** : 

* By default multiple databases can share the same resources, such as memory, data storage space, and processing power through multiple-tenancy.
* You create the pool, and only your databases can use the pool. **This model is useful if you have databases with resource requirements that vary over time**, and **can help you to reduce costs**.

**Azure SQL Database is often used for**

* Modern cloud applications that need to use the latest stable SQL Server features.
* Applications that require high availability.
* **Systems with a variable load that need the database server to scale up and down quickly.**

**Business benefits**

* The service provides high availability guarantees
* Azure SQL Database **supports point-in-time restore, enabling you to recover a database to the state it was in at any point in the past**.
* Advanced threat protection provides advanced security capabilities
* Threat protection also detects anomalous activities
* It continuously monitors your database for suspicious activities, and provides immediate
security alerts on potential vulnerabilities, SQL injection attacks,
* Auditing tracks database events and writes them to an audit log in your Azure storage account

### Azure SQL Edge

A SQL engine that is optimized for Internet-of-things (IoT) scenarios that need to work with streaming time-series data.

Azure SQL Database is available as a **Single Database or an Elastic Pool**.

## Non-relational data in Azure

### Explore Azure blob storage

* In an Azure storage account, you **store blobs in containers**. 
* A container provides a convenient way of grouping related blobs together.
* You control who can **read and write blobs inside a container at the container level**.
* Within a container, you can organize blobs in a hierarchy of virtual folders, similar to files in a file system on disk.
* These folders are simply a way of using a “/” character in a blob name to
organize the blobs into namespaces
* The folders are purely virtual, and you can’t perform folder-level operations to control access or perform bulk operations.

**Three different types of blob:**

* **Block blobs**.
    *  block blob is handled as a set of blocks. **Each block can vary in size, up to 100MB**.
    * A block blob can contain up to 50,000 blocks, giving a maximum size of over 4.7 TB.
    * Block blobs are best used to store discrete, large, binary objects that change infrequently

* **Page blobs**
    * A page blob is organized as a collection of fixed size 512-byte pages.
    * A page blob is optimized to support random read and write operations;
    * you can fetch and store data for a single page if necessary.
    * **A page blob can hold up to 8 TB of data**.
    * Azure uses page blobs to implement virtual disk storage for virtual machines

* **Append blobs.**
    * An append blob is a block blob optimized to support append operations.
    * **You can only add blocks to the end of an append blob**;
    * updating or deleting existing blocks isn’t supported.
    * **Each block can vary in size, up to 4 MB. The maximum size of an append blob is just over 195 GB.**

* The Hot tier is the default.
* The Cool tier 
    * you can create the blob in the Hot tier, but migrate it to the Cool tier later.
    * You can migrate a blob from the Cool tier back to the Hot tier.
* The Archive tier provides the lowest storage cost, but with increased latency.

You can create lifecycle management policies for blobs in a storage account. A lifecycle management policy can automatically move a blob from Hot to Cool, and then to the Archive tier

### **Explore Azure DataLake Storage Gen2**

* Azure Data Lake Storage Gen2 is a newer version of this service that is integrated into Azure Storage;
* Combined with the hierarchical file system capabilities and compatibility with major analytics systems of Azure Data Lake Store.
* **Systems like Hadoop** in Azure HDInsight, Azure Databricks, and Azure Synapse Analytics can mount a distributed file system hosted in Azure Data Lake Store Gen2 and use it to process huge volumes of data.
* To create an Azure Data Lake Store Gen2 files system, you must **enable the Hierarchical Namespace option of an Azure Storage account**.
* You can’t revert it to a flat namespace

### **Explore Azure Files**

* You create Azure File storage in a storage account.
* Azure Files enables you to share up to 100 TB of data in a single storage account.
* This data can be distributed across any number of file shares in the account.
* The maximum size of a single file is 1 TB, but you can set quotas to limit the size of each share below this
figure.
* **Currently, Azure File Storage supports up to 2000 concurrent connections per shared file.**
* Upload files to Azure File Storage using the **Azure portal, or tools such as the AzCopy utility**
* **Azure File Sync service to synchronize locally cached copies of shared files with the data in Azure File Storage**.
* **Azure File Storage offers two performance tiers.**
    * **Standard tier uses hard disk-based hardware /  Premium tier uses solid-state disks.**
* Azure Files supports two common network file sharing protocols:
    * **Server Message Block (SMB) file sharing is commonly used across multiple operating systems (Windows, Linux, macOS)**.  
    * **Network File System (NFS) shares are used by some Linux and macOS versions**.

### Azure Tables

* Azure Table Storage splits a table into partitions. Partitioning is a mechanism for grouping related rows,
based on a common property or partition key.
* Rows that share the same partition key will be stored together.
* **Partitioning not only helps to organize data, it can also improve scalability and performance**
* Partitions are independent from each other, and can grow or shrink as rows are added to, or removed from, a partition. A table can contain any number of partitions.
* When you search for data, you can include the partition key in the search criteria. This helps to
narrow down the volume of data to be examined,

**The key in an Azure Table Storage table comprises two elements**

* The partition key that identifies the partition containing the row, 
* A row key that is unique to each row in the same partition.
* Items in the same partition are stored in row key order.
* If an application adds a new row to a table, Azure ensures that the row is placed in the correct position in the table

**What are the elements of an Azure Table storage key?**

* Partition key and row key
* The partition key identifies the partition in which a row is located, and the rows in each partition are stored in row key order.

**Azure Storage account in order to support a data lake for Azure Synapse Analytics**

* Upgrade the account to enable hierarchical namespace and create a blob container

**Azure File storage**

* To share files with remote users, you create a file share using Azure File storage, and upload the file to the file share.
* To enable users at different sites to share files.

### **Azure Cosmos DB**

**Documents / key-value tables / graph / column-family store**

**Cosmos DB uses indexes and partitioning to provide fast read and write performance and can scale to massive volumes of data**

You can enable **multi-region writes, adding the Azure regions of your choice to your Cosmos DB
account so that globally distributed users can each work with data in their local replica**.

Cosmos DB automatically allocates space in a container for your partitions, and each partition can grow up to 10 GB in size.

**Azure Cosmos DB APIs**

* **Core (SQL) API**： The native API in Cosmos DB manages data in JSON document format, and despite being a NoSQL data storage solution, uses SQL syntax to work with the data.
* The native API in Cosmos DB manages data in JSON document format, and despite being a NoSQL data
storage solution, uses SQL syntax to work with the data. 

**Table API**

* The Table API is used to work with data in key-value tables, similar to Azure Table Storage.
* The Azure Cosmos DB Table API offers greater scalability and performance than Azure Table Storage.
* Cosmos DB Table API through one of the language-specific SDKs to make calls to your service endpoint to retrieve data from the table.

**Cassandra API**

The Cassandra API is compatible with Apache Cassandra, which is a popular open source database that
uses a **column-family storage structure.**

Cassandra supports a syntax based on SQL

**Gremlin API**

* The Gremlin API is used with data in a graph structure; 
* In which entities are defined as vertices that form nodes in connected graph. 
* **Nodes are connected by edges that represent relationships**
* Gremlin syntax includes functions to operate on vertices and edges, enabling you to insert, update, delete, and query data in the graph.

```
g.addV('employee').property('id', '3').property('firstName', 'Alice')
g.V('3').addE('reports to').to(g.V('1'))
```

> query JSON documents in Azure Cosmos DB: Core (SQL) API
>
> Azure Cosmos DB API should you use to work with data in which entities and their relationships
to one another are represented in a graph using vertices and edges?    **Gremlin API**
> 
> How can you enable globally distributed users to work with their own local replica of a Cosmos DB
database?     **Enable multi-region writes and add the regions where you have users**

## **Large-scale data warehousing**

### **data warehousing architecture**

**Analytical data store**

Data stores for large scale analytics include relational data warehouses, file-system based data
lakes, and hybrid architectures

**Analytical data model**

data models are described as **cubes**, in which **numeric data values are aggregated across
one or more dimensions**

<mark>The model encapsulates the relationships between data values and dimensional entities to support “drillup/drill-down” analysis.</mark>

### **data ingestion pipelines**

You can create and **run pipelines using Azure Data Factory**, or you can use the **same pipeline engine in Azure Synapse Analytics** if you want to **manage all of the components of your data warehousing solution in a unified workspace**.

### **Explore analytical data stores**

**Data warehouses**

* A data warehouse is a **relational database in which the data is stored in a schema that is optimized for data analytics** rather than **transactional workloads**.
* the data from a transactional store is transformed into a schema in which **numeric values are
stored in central fact tables**, which are related to one or more dimension tables that represent entities by which the data can be aggregated.
* This kind of fact and dimension table schema is called a star schema;
* Extended into a **snowflake schema** by **adding additional tables related to the dimension tables to represent dimensional hierarchies**

**Data lakes**

* A data lake is a file store, usually on a distributed file system for high performance data access.
* Technologies like **Spark or Hadoop** are often used to process queries on the stored files and return data for reporting and analytics.
* **schema-on-read approach** to define tabular schemas on **semi-structured data files** at the point where the data is read for analysis, without applying constraints when it’s stored.
* Data lakes are great for supporting a mix of structured, semi-structured, and even unstructured data that you want to analyze without the need for schema enforcement when the data is written to the store.

**Hybrid approaches**

* The raw data is stored as files in a data lake, and a relational storage layer abstracts the underlying files and expose them as tables, which can be queried using SQL.
* **SQL pools in Azure Synapse Analytics include PolyBase**, which enables you to **define external tables based on files in a datalake (and other sources) and query them using SQL**.
* **Synapse Analytics** also supports a **Lake Database approach in which you can use database
templates to define the relational schema of your data warehouse**, while storing the underlying data in data lake storage – separating the storage and compute for your data warehousing solution.

**Azure services for analytical stores**

* Azure Synapse Analytics
    * Unified, end-to-end solution for large scale data analytics.
    * high-performance SQL Server based relational data warehouse with the flexibility of a data lake and open-source Apache Spark
    * It also includes native support for log and telemetry analytics with Azure Synapse Data Explorer pools, as well as built in data pipelines for data ingestion and transformation.
    * **Azure Synapse Studio**, which includes the ability to create interactive notebooks in which Spark code and markdown content can be combined.

* **Azure Databricks** 
    * **Apache Spark**, and **offers native SQL capabilities** as well as **workload-optimized Spark clusters for data analytics and data science**.
    * Using Azure Databricks as your analytical store if you want to use existing expertise with the platform

* **Azure HDInsight**
    * **your analytics solution relies on multiple open-source frameworks or if you need to migrate an existing on-premises Hadoop-based solution to the cloud.**
    * For example, a pipeline might use a MapReduce job running in HDInsight or a notebook running in Azure Databricks to process a large volume of data in the data lake, and then load it into tables in a SQL pool in Azure Synapse Analytics.

**Which Azure services can you use to create a pipeline for data ingestion and processing?**

> Azure Synapse Analytics and Azure Data Factory

What must you define to implement a pipeline that reads data from Azure Blob Storage?

> A linked service for your Azure Blob Storage account

Which open-source distributed processing engine does Azure Synapse Analytics include?

> Apache Spark > Azure Synapse Analytics includes an Apache Spark runtime.

###  **differences between batch and streaming data**

* **Data scope: Batch processing can process all the data in the dataset**. 
	* **Stream processing typically only has access to the most recent data received**, or within a rolling time window (the last 30 seconds, for example).

* **Data size**: Batch processing is suitable for handling large datasets efficiently. 
	* Stream processing is intended for individual records or micro batches consisting of few records.

* **Performance: Latency is the time taken for the data to be received and processed**. 
	* The latency for batch processing is typically a **few hours**. 
	* Stream processing typically occurs immediately, with latency in the order of seconds or milliseconds.

* **Analysis**: **You typically use batch processing to perform complex analytics.** 
	* Stream processing is used for simple **response functions, aggregates, or calculations such as rolling averages**.

### **Real-time analytics in Azure**

* **Azure Stream Analytics**: A platform-as-a-service (PaaS) solution that you can use to **define streaming jobs that ingest data from a streaming source, apply a perpetual query, and write the results to an output**.
* **Spark Structured Streaming**: An **open-source library that enables you to develop complex streaming solutions on Apache Spark based services**, including **Azure Synapse Analytics, Azure Databricks, and Azure HDInsight**.
* **Azure Data Explorer**: A **high-performance database and analytics service that is optimized for ingesting and querying batch or streaming data with a time-series element,** and which can be used as a standalone Azure service or as an Azure Synapse Data Explorer runtime in an Azure Synapse Analytics workspace.

### **Sources for stream processing**

* **Azure Event Hubs: A data ingestion service that you can use to manage queues of event data**, ensuring that each event is processed in order, exactly once.
* **Azure IoT Hub**: A data ingestion service that is similar to Azure Event Hubs, but which is **optimized for managing event data from Internet-of-things (IoT)** devices.
* Azure Data Lake Store Gen 2: A highly scalable storage service that is **often used in batch processing scenarios, but which can also be used as a source of streaming data**.
* **Apache Kafka**: An open-source **data ingestion solution that is commonly used together with Apache Spark**. You can use Azure HDInsight to create a Kafka cluster.

### Sinks for stream processing

* Azure Event Hubs: Used to queue the processed data **for further downstream processing**.
* **Azure Data Lake Store Gen 2 or Azure blob storage**: Used to persist the processed results as a file.
* **Azure SQL Database or Azure Synapse Analytics, or Azure Databricks**: Used to persist the processed results in a **database table for querying and analysis**.
* **Microsoft Power BI**: Used to generate real time data visualizations in reports and dashboards.

### Stream Analytics is used to:

* **Ingest data from an input**, such as an **Azure event hub, Azure IoT Hub, or Azure Storage blob container**.
* Process the data by using **a query to select, project, and aggregate data values**.
* Write the **results to an output**, such as **Azure Data Lake Gen 2, Azure SQL Database, Azure Synapse Analytics, Azure Functions, Azure event hub, Microsoft Power BI, or others.**

### **Apache Spark on Microsoft Azure**

* Azure Synapse Analytics
* Azure Databricks
* Azure HDInsight

**Spark can be used to run code (usually written in Python, Scala, or Java) in parallel across multiple cluster nodes**, enabling it to process very large volumes of data efficiently. 

* **Spark Structured Streaming**
* **Delta Lake**

### **Azure Data Explorer**

* Azure Data Explorer is a standalone Azure service for efficiently analyzing data. 
* For example, **by outputting Azure Stream Analytics logs to Azure Data Explorer**, you can **complement Stream Analytics low latency alerts handling with Data Explorer's deep investigation capabilities**. 
* The service is also **encapsulated as a runtime in Azure Synapse Analytics, where it is referred to as Azure Synapse Data Explorer**; 

* apture and analyze real-time or batch data that includes a time-series element; 
	* **Such as log telemetry or values emitted by Internet-of-things (IoT) devices**.
* Explore, filter, and aggregate data quickly by **using the intuitive and powerful Kusto Query Language (KQL)**.

### **Kusto Query Language (KQL)**

**To query Data Explorer tables, you can use Kusto Query Language (KQL), a language that is specifically optimized for fast read performance** – particularly with telemetry data that includes a timestamp attribute

*Which service would you use to continually capture data from an IoT Hub, aggregate it over temporal periods, and store results in Azure SQL Database?**

> **Azure Stream Analytics**

Which language would you use to query real-time log data in Azure Synapse Data Explorer?

> **KQL**
> 
> Kusto Query Language is an intuitive but powerful language for querying Data Explorer tables.

## **Power BI Desktop**

a Microsoft Windows application in which you can import data from a wide range of data sources, combine and organize the data from these sources in an analytics data model

### Describe core concepts of data modeling

Models are based on related tables of data and define the **numeric values that you want to analyze or report (known as measures)** and the **entities by which you want to aggregate them (known as dimensions)**.

### **Tables and schema**

Dimension tables represent the entities by which you want to aggregate numeric measures

* Each entity is represented by a row with a unique key value. 
* Each row in a fact table represents a recorded event that has numeric measures associated with it.
* This type of schema, where a fact table is related to one or more dimension tables, is referred to as a star schema (imagine there are five dimensions related to a single fact table – the schema would form a five-pointed star!). 

### Attribute hierarchies

One final thing worth considering about analytical models is the creation of **attribute hierarchies** that enable you to quickly **drill-up or drill-down** to find aggregated values at different levels in a hierarchical dimension. 

* Tables and text: Tables are useful when numerous related values must be displayed, and individual text values in cards can be a useful way to show important figures or metrics.
* Bar and column charts: Bar and column charts are a good way to visually compare numeric values for discrete categories.
* Line charts: Line charts can also be used to compare categorized values and are useful when you need to **examine trends**, often over time.
* Pie charts: Pie charts are often used in business reports to visually compare categorized values as **proportions of a total**.
* Scatter plots: Scatter plots are useful when you want to compare two numeric measures and identify a **relationship or correlation** between them.
* Maps: Maps are a great way to visually compare values for different geographic areas or locations.

What should you define in your data model to enable drill-up/down analysis?

> A hierarchy