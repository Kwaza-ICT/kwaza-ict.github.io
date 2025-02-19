# Data Store

## S3

Amazon S3 (Simple Storage Service) is an object storage service that offers industry-leading scalability, data availability, security, and performance. It is designed to store and retrieve any amount of data from anywhere on the web. S3 is commonly used for backup and restore, disaster recovery, data archiving, big data analytics, and as a data lake for analytics.

### S3 tiers

- S3 Standard: for frequently accessed data
- S3 Intelligent-Tiering: for data with unknown or changing access patterns
- S3 Standard-IA: for long-lived, infrequently accessed data
- S3 One Zone-IA: for long-lived, infrequently accessed, non-critical data
- S3 Glacier: for long-term archive and digital preservation
- S3 Glacier Deep Archive: for long-term archive and digital preservation with retrieval times within 12 hours

## EBS

Amazon Elastic Block Store (EBS) provides block-level storage volumes for use with EC2 instances. EBS volumes are highly available and reliable storage volumes that can be attached to any running instance that is in the same Availability Zone. EBS volumes that are attached to an instance are exposed as storage volumes that persist independently from the life of the instance.

## EFS

Amazon Elastic File System (EFS) provides a simple, scalable, fully managed elastic NFS file system for use with AWS Cloud services and on-premises resources. It is built to scale on-demand to petabytes without disrupting applications, growing and shrinking automatically as you add and remove files, eliminating the need to provision and manage capacity to accommodate growth.

## FSX

Amazon FSx provides fully managed third-party file systems with the native compatibility and feature sets for workloads such as Windows-based storage, high-performance computing, machine learning, and electronic design automation.

## Storage Gateway

AWS Storage Gateway is a hybrid cloud storage service that gives you on-premises access to virtually unlimited cloud storage. It seamlessly enables hybrid cloud storage between on-premises environments and the AWS Cloud.

## EC2 DataBases

Running databases on EC2 instances can be beneficial in several scenarios:

- **Custom Configuration**: When you need full control over the database configuration, including the operating system, database software, and any additional software or scripts.
- **High Performance**: For workloads that require high IOPS, low latency, or specific hardware configurations that are not available in managed database services.
- **Legacy Applications**: When dealing with legacy applications that are not compatible with managed database services or require specific database versions.
- **Cost Management**: In some cases, running databases on EC2 can be more cost-effective, especially if you have reserved instances or spot instances.
- **Compliance and Security**: When you need to meet specific compliance or security requirements that necessitate a custom setup or additional security measures.
- **Hybrid Architectures**: For hybrid cloud architectures where part of the database workload needs to run on-premises and part on the cloud, providing more flexibility in deployment.

## RDS

Amazon Relational Database Service (RDS) is a managed relational database service that makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups.

### Supported Engines

- PostgreSQL
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server

## Aurora

Amazon Aurora is a MySQL and PostgreSQL-compatible relational database built for the cloud that combines the performance and availability of traditional enterprise databases with the simplicity and cost-effectiveness of open-source databases. Aurora is up to five times faster than standard MySQL databases and three times faster than standard PostgreSQL databases.

## DynamoDB

Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. It is designed to deliver single-digit millisecond performance at any scale, making it ideal for applications that require low-latency data access.

## DocumentDB

Amazon DocumentDB is a fully managed document database service that supports MongoDB workloads. It is designed to be highly scalable, durable, and performant, making it ideal for applications that require flexible, semi-structured, or hierarchical data storage.

## Neptune

Amazon Neptune is a fully managed graph database service that makes it easy to build and run applications that work with highly connected datasets. It is optimized for storing billions of relationships and querying the graph with milliseconds latency.

## Redshift

Amazon Redshift is a fully managed data warehouse service that makes it simple and cost-effective to analyze all your data using standard SQL and your existing business intelligence tools. It is designed for high-performance analysis of large datasets, scaling from a few hundred gigabytes to a petabyte or more.

## Athena

Amazon Athena is an interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL. Athena is serverless, so there is no infrastructure to manage, and you pay only for the queries that you run.

## Glue

AWS Glue is a fully managed extract, transform, and load (ETL) service that makes it easy to prepare and load data for analytics. You can create and run ETL jobs with a few clicks in the AWS Management Console, and it automatically generates the code needed to perform the data transformation.

## Elasticache

Amazon ElastiCache is a fully managed in-memory data store and cache service that makes it easy to deploy, operate, and scale popular open-source compatible in-memory data stores in the cloud.

## Tips

 - Archive and backup is great first step when building a business case for using AWS data store services.
 - Make sure you are using the most cost-effective storage class for your data access patterns.
 - Practice building security S3 buckets and granting the least privilege access to users.
 - Encrypt data at rest, always.