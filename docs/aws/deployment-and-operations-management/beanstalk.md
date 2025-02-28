# Elastic Beanstalk

Elastic Beanstalk is a Platform as a Service (PaaS) offering from AWS that simplifies the process of deploying, managing, and scaling web applications and services. It supports multiple programming languages, including Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker.

## Deployment Options

 - All at once: Deploys the new version to all instances simultaneously.
 - Rolling: Deploys the new version in batches, with a percentage of instances updated at a time.
 - Rolling with additional batch: Launch new version instances prior to taking any old version instances out of service
 - Immutable: Deploys the new version to a fresh group of instances, then swaps the environment's CNAME to the new group.
 - Blue/Green: Deploys the new version to a separate environment, then swaps CNAMEs to redirect traffic.
 - Traffic Splitting: Deploys the new version to a separate environment, then gradually shifts traffic to the new version.