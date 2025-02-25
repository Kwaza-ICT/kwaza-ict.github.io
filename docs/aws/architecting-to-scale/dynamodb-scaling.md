# DynamoDB Scaling

Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. It is designed to deliver single-digit millisecond performance at any scale, making it ideal for applications that require low-latency data access.

## Types of Scaling

DynamoDB provides two types of scaling:

 - Throughput Scaling: Adjusts the read and write capacity of your tables to handle traffic spikes and reduce costs.
 - Size Scaling: Automatically manages the size of your tables to ensure optimal performance and cost efficiency.

## Terminology

 - Partition: A physical storage unit that holds a portion of your table's data.
 - Partition Key: A unique identifier for each item in a table that is used to distribute data across partitions.
 - Sort Key: An optional attribute that is used to sort items with the same partition key.

## Partition calculations

 - By capacity: The number of partitions is determined by the provisioned read and write capacity of your table.
 - By size: The size of a partition is determined by the amount of data stored in the table.
 - Total partitions: The total number of partitions in a table is the sum of the partitions for each partition key.

## On-Demand Scaling

 - Automatically adjusts read and write capacity based on the workload.
 - Pay only for the resources you consume.
 - Ideal for unpredictable workloads or when you want to avoid managing capacity.

## Provisioned Scaling

 - Allows you to specify the read and write capacity for your tables.
 - Provides predictable performance and cost.
 - Ideal for workloads with consistent traffic patterns.

## DynamoDB Accelerator (DAX)

Amazon DynamoDB Accelerator (DAX) is a fully managed, highly available, in-memory cache for DynamoDB that delivers up to a 10x performance improvement.

### DAX Use Cases

#### Good case

 - Require fastest possible reads
 - Read intense scenarios
 - Repeated reads agains a large set of data

#### Bad case

 - Write heavy workloads
 - Data that is not frequently accessed
 - Data that is not frequently read
