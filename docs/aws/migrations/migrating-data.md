# Migrating data

## Data Migration Service (DMS)

AWS Database Migration Service (DMS) is a service that helps you migrate databases to AWS quickly and securely. The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to Amazon Aurora or Microsoft SQL Server to MySQL. DMS can also be used for continuous data replication with high availability.

### DataSync

AWS DataSync is a data transfer service that makes it easy to automate moving data between on-premises storage and Amazon S3 or Amazon EFS. DataSync can transfer data at speeds up to 10 times faster than open-source tools, and it automatically handles many of the tasks related to data transfer, such as encryption, data integrity verification, and network optimization.

 - Secure online service that automates moving data from on-premises storage to Amazon S3 or Amazon EFS.
 - DataSync agents run on-premises and communicate with the DataSync service in the AWS Cloud.

### Transfer Family

AWS Transfer Family is a fully managed service that enables you to transfer files over the internet using a range of protocols, including FTP, FTPS, SFTP, and Amazon S3. The service provides a highly available and scalable file transfer solution that is designed to meet the needs of a wide range of use cases, from simple file transfers to complex workflows that require automation and integration with other AWS services.

 - AWS Transfer Family provides a fully managed service for transferring files over the internet using a range of protocols.
 - The service is designed to meet the needs of a wide range of use cases, from simple file transfers to complex workflows that require automation and integration with other AWS services.

### Output

 - DMS helps you migrate databases to AWS quickly and securely and also convert schema and migrate data.
 - Datasysnc automates moving data between on-premises storage and Amazon S3 or Amazon EFS.
 - Transfer Family provides a fully managed service for transferring files over the internet using a range of protocols and in a security way