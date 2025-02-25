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
