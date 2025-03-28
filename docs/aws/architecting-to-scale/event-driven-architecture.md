# Event-driven Architecture

Event-driven architecture is a design pattern that enables the production, detection, consumption, and reaction to events. Events are generated by producers and consumed by consumers. This architecture is based on the principle of loose coupling, where components interact with each other through events rather than direct method calls. This approach allows for greater flexibility, scalability, and resilience, as components can be developed, deployed, and scaled independently.

## Integrating Serverless Services

 - Trigger asynchronous events between services
 - An event is any change in state that is meaningful to the business
 - Event routers filter and push events and their payloads to event

## Serveless Services

 - No server management: patches and OS updates handled by the provider
 - Flexible scaling: your application scales automatically whithin bounds your define
 - High availability: automatically deployed across multiple availability zones
 - Scale to zero: no charges when your code is not running

## Types of AWS service Serverless

 - Aurora Serverless: automatically scales database capacity based on application needs
 - Neptune Serverless: automatically scales graph database capacity based on application needs
 - EMR Serverless: automatically scales big data processing capacity based on application needs
 - OpenSearch Service Serverless: automatically scales search capacity based on application needs

## Then main players for event-driven architecture

### Lambda

AWS Lambda is a serverless compute service that runs your code in response to events and automatically manages the underlying compute resources for you. It is designed to be highly available and fault-tolerant, allowing you to focus on building applications without managing servers.

 - Event-driven compute service
 - Automatically scales based on the number of incoming requests
 - Supports multiple programming languages
 - Integrates with other AWS services

#### Why

Serverless compute for custom logic

### EventBridge

Amazon EventBridge is a serverless event bus service that makes it easy to connect applications together using data from your own applications, integrated software as a service (SaaS) applications, and AWS services. It allows you to build event-driven architectures by routing events from a variety of sources to a variety of targets.

 - Serverless event bus service
 - Connects applications using events
 - Integrates with AWS services and SaaS applications
 - Supports event filtering and routing

#### Why

Event bus for choreographing async events

### Step Functions

AWS Step Functions is a serverless orchestration service that allows you to coordinate multiple AWS services into serverless workflows. It enables you to build complex, multi-step workflows that can be triggered by events and run with high availability and fault tolerance.

 - Serverless orchestration service
 - Coordinates multiple AWS services into workflows
 - Supports branching, parallel execution, and error handling
 - Integrates with other AWS services

#### Why

Orchestrates workflows involving many services

### SQS

Amazon Simple Queue Service (SQS) is a fully managed message queuing service that enables you to decouple and scale microservices, distributed systems, and serverless applications. It allows you to send, store, and receive messages between software components at any volume, without losing messages or requiring other services to be available.

 - Fully managed message queuing service
 - Decouples and scales microservices and distributed systems
 - Supports standard and FIFO queues
 - Integrates with other AWS services

#### Why

Event buffer for decoupling serverless workflows

### SNS

Amazon Simple Notification Service (SNS) is a fully managed messaging service that enables you to send messages or notifications to distributed systems, microservices, and serverless applications. It allows you to send messages to a variety of endpoints, including email, SMS, HTTP, and Lambda functions.

 - Fully managed messaging service
 - Sends messages or notifications to distributed systems
 - Supports multiple message protocols
 - Integrates with other AWS services

#### Why

Send events to subscribers, including emails

### API Gateway

Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale. It allows you to create RESTful APIs, WebSocket APIs, and HTTP APIs to connect your applications to backend services, such as Lambda functions, HTTP endpoints, or other AWS services.

 - Fully managed API service
 - Creates, publishes, maintains, monitors, and secures APIs
 - Supports RESTful APIs, WebSocket APIs, and HTTP APIs
 - Integrates with other AWS services

#### Why

Receive events triggered by external producers

### DynamoDB

Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. It is designed to deliver single-digit millisecond performance at any scale, making it ideal for applications that require low-latency data access.

 - Fully managed NoSQL database service
 - Fast and predictable performance
 - Seamless scalability
 - Integrates with other AWS services

#### Why

Scalable and high-performance data store for serverless applications

### S3

Amazon Simple Storage Service (S3) is a fully managed object storage service that allows you to store and retrieve any amount of data from anywhere on the web. It is designed for 99.999999999% durability and 99.99% availability of objects, making it ideal for storing large amounts of data, such as images, videos, and backups.

 - Fully managed object storage service
 - High durability and availability
 - Scalable and secure
 - Integrates with other AWS services

#### Why

Object storage that can emit events on bucket actions

### Orchestration vs choreography

 - Orchestration: Centralized control of workflow
 - Choreography: Decentralized control of workflow

### Output

 - Choreograph async events with EventBridge
 - Orchestrate workflows with Step Functions
 - Choose Serverless for new solutions
