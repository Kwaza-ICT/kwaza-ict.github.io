# Deployment and Operations Management

## Types of Deployments

### Rolling Deployment

- **Description**: A rolling deployment is a software release strategy that gradually replaces instances of an application with new versions.

### A/B Testing

- **Description**: A/B testing is a software testing method that compares two versions of a web page or application to determine which one performs better.

### Canary Deployment

- **Description**: A canary deployment is a software release strategy that gradually introduces a new version of an application to a subset of users.

### Blue-Green Deployment

- **Description**: A blue-green deployment is a software release strategy that deploys a new version of an application alongside the existing version, allowing for quick rollback in case of issues.

#### Blue-Green Deployment methods on AWS

 - **Route 53**: Route 53 can be used to switch traffic between blue and green environments.
 - **Elastic Beanstalk**: Elastic Beanstalk supports blue-green deployments out of the box.
 - **Auto Scaling Groups**: Swap autoscaling group already primed with new version instances behind the ELB
 - **Launch Configuration**: Change auto scaling group confifiguration to use new AMI version and terminate old instances
 - **AWS OpsWorks**: Use OpsWorks to deploy new version and switch traffic to new instances

#### Blue Green Contraindications

 - **Cost**: Running two environments at the same time can be expensive
 - **Data store**: Data store schema is too tihjtly coupled to code changes
