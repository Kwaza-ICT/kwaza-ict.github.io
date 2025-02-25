# AWS SQS

Amazon Simple Queue Service (SQS) is a fully managed message queuing service that enables you to decouple and scale microservices, distributed systems, and serverless applications. SQS eliminates the complexity and overhead associated with managing and operating message-oriented middleware.

 - Reliable and scalable
 - Available integration with KMS for encryption
 - Transient storage for messages
 - Optionally supports First-in First-out (FIFO) queues
 - Maximum message size of 256KB (standard) or 256KB (FIFO)

## Types of queues

 - **Standard Queues**: Best-effort ordering, at-least-once delivery
 - **FIFO Queues**: First-in-first-out delivery, exactly-once processing

# Amazon MQ

Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. Amazon MQ provides the flexibility to choose the message broker that best fits your use case, while offloading the operational overhead to AWS.

 - Fully managed message broker service
 - Supports Apache ActiveMQ and RabbitMQ
 - Seamless integration with AWS services
 - Supports standard messaging protocols
 - High availability and durability

## When should I use

 - Use Amazon MQ if you want to and easy low-hassle path to migrate from existing message brokers to aws
 - Use SQS if you creating a new application from scratch
