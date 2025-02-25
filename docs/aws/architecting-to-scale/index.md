# Architecting to Scale

## Loosely Coupled Architectures

Components in a loosely coupled architecture are designed to be independent and interact with each other through well-defined interfaces. This approach allows for greater flexibility, scalability, and resilience, as components can be developed, deployed, and scaled independently. Loosely coupled architectures are often implemented using microservices, serverless computing, or event-driven architectures.

## Scaling Up

 - Add more CPU or RAM to an existing instance.
 - Requires restart to scale up or down
 - Would require scripting to automate
 - Limited by instance sizes

## Scaling Out

 - Add more instances as demand increases
 - No downtime required
 - Automatic scaling available for compute services
 - Theoretically unlimited scaling

## Questions about scaling

 - Are you using the appropriate service?
 - Are you scaling with the appropriate metric?

## Event-driven architecture

 - Components communicate through events
 - Decoupled and asynchronous
 - Scalable and resilient
 - Can be implemented using services like Amazon SNS, SQS, and Lambda

## Outputs

 - Auto scaling groups:
   - Know the different scaling policies and options
   - Understand the difference and limitations between horizontal and vertical scaling
   - Know what a cool down period is and how it might impact your responsiveness to demand
 - Kinesis:
   - Exam is likely to be restricted to the data stream use cases for kinesis such as data stream and firehose
   - understand shard concept and how partition keys and sequences enabled shards to manage data
 - DynamoDB Auto Scaling:
    - know the new and old terminology and concept of a partition, partition key, and sort key
    - Understand how DynamoDB calculates capacity units
 - CloudFront Part 2:
   - Know that both static and dynamic content is supported
   - Understand possible origins and how multiple origins can be used together with behaviors
   - Know invalidation methods, zone apex and geo-restriction
 - SNS:
   - Understand a loosely coupled architecture
   - Know the different types of topics and how they can be used
 - SQS:
   - Understand the different types of queues and how they can be used
   - Know the different types of message delivery and how they can be used
 - Lambda:
   - Understand the different types of triggers and how they can be used
   - Know the different types of functions and how they can be used
 - SWF:
   - Understand the different types of workflows and how they can be used
   - Best suited for human-enabled workflows like order fulfillment or procedural requests
 - Elastic MapReduce:
   - Understand the different types of clusters and how they can be used
   - Know the different types of nodes and how they can be used
 - Step functions:
   - Managed workflow and orchestration platform considered preferred for modern development orver AWS Simple workflow service
   - Supports tasks, sequential and parallel execution
 - AWS Batch
    - Ideal for use cases where a routine activity must be performed at a specific interval or time of day
    - Behind the scenes, it uses EC2 instances to run the jobs