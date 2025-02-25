# Serverless

Serverless computing allows you to build and run applications and services without thinking about servers. It eliminates infrastructure management tasks such as server or cluster provisioning, patching, operating system maintenance, and capacity provisioning. You can build serverless applications composed of functions that are triggered by events, scales automatically, and only charges you when they run.

## AWS Serverless Application Model

The AWS Serverless Application Model (AWS SAM) is an open-source framework for building serverless applications. It provides a simplified way of defining the Amazon API Gateway APIs, AWS Lambda functions, and Amazon DynamoDB tables needed by your serverless application. AWS SAM also supports defining environment variables, policies, and other resources that your application needs.

## Behind of scenes

Extension of cloudFormation so you can use everything cloudformation can provide.

## Amazon EventBridge

Amazon EventBridge is a serverless event bus service that makes it easy to connect applications together using data from your own applications, integrated software as a service (SaaS) applications, and AWS services. It allows you to build event-driven architectures by routing events from a variety of sources to a variety of targets.

### Types of event bus

- **Default event bus**: The event bus that receives events from AWS services and your custom applications.
- **Partner event bus**: The event bus that receives events from SaaS partners.
- **Custom event bus**: The event bus that receives events from your custom applications.
