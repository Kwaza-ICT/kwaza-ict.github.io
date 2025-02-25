# Scaling containers on AWS

## EKS

Amazon Elastic Kubernetes Service (EKS) is a managed Kubernetes service that makes it easy to run Kubernetes on AWS without needing to install, operate, and maintain your own Kubernetes control plane. EKS is fully compatible with upstream Kubernetes and provides a highly available and secure Kubernetes control plane.

## ECS

Amazon Elastic Container Service (ECS) is a fully managed container orchestration service that allows you to run and scale containerized applications on AWS. ECS eliminates the need to install, operate, and scale your own container orchestration software. You can run your containers on a managed cluster of Amazon EC2 instances or AWS Fargate.

## Fargate

AWS Fargate is a serverless compute engine for containers that allows you to run containers without having to manage the underlying infrastructure. Fargate provisions and scales the infrastructure needed to run your containers, and you only pay for the vCPU and memory resources consumed by your containers.

## App Runner

AWS App Runner is a fully managed container service that makes it easy to build, deploy, and run containerized web applications and APIs. App Runner automatically builds and deploys your container images from source code or existing container images, and provides auto-scaling, monitoring, and security features out of the box.

### Why

 - Designed exclusively for Syncronous workloads
 - Supplies compute and networking for container images, python, java or node projects
 - Supports public and private endpoints
 - Scales to zeto, which makes it great for proof of concepts

## EKS vs ECS

EKS and ECS are both container orchestration services on AWS, but they have different use cases and features:

- **EKS**: Ideal for running Kubernetes workloads that require advanced features, compatibility with upstream Kubernetes, and integration with other AWS services.
- **ECS**: Ideal for running containerized applications that require simplicity, scalability, and integration with other AWS services.
- **EKS**: Adding Load Balancer is more complex
- **ECS**: Seamless integration with ALB and NLB

## AWS Batch

AWS Batch is a fully managed batch processing service that allows you to run batch computing workloads on AWS. It dynamically provisions the optimal quantity and type of compute resources based on the volume and specific resource requirements of your batch jobs.

 - Plans, schedule and executes your compute workloads
 - Dynamically provisions CPU or memory-optimal resources
 - Runs jobs using ECS, EKS or Fargate
 - Reduce costs by optionally running your jobs using spot instances

### Outputs

 - Choose your container service wisely
 - ECS is great for new solution development
 - EKS may be a valid option for migrating and existing Kubernetes workload
 - Improve compute layer scaling with fargate
 - Fargate is a great option to simplify the scaling and server management of the compute layer in your containerized applications
 - App Runner fully hosts HTTP Apps for ultra-simplified HTTP applications compute and networking
