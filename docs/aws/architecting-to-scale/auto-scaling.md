# Auto-Scaling

Auto-scaling is a method used to automatically adjust the number of compute resources in a system based on the current load. This allows for the system to handle varying levels of traffic without manual intervention. Auto-scaling can be used to scale up or down based on the current demand.

## Amazon EC2 Auto Scaling

Amazon EC2 Auto Scaling is a service that automatically adjusts the number of EC2 instances in a group based on the current demand. It can be used to maintain a desired number of instances, automatically replace unhealthy instances, and scale out or in based on the current load.

## Application Auto Scaling

Application Auto Scaling is a service that allows you to automatically adjust the capacity of various AWS services based on the current demand. It supports services such as DynamoDB, ECS, and Lambda.

## AWS Auto Scaling

AWS Auto Scaling is a unified service that allows you to automatically scale multiple AWS resources based on demand. It can be used to scale EC2 instances, ECS tasks, DynamoDB tables, and more.

## EC2 Auto-Scaling Groups

 - Automatically provides horizontal scaliing (scale-out) for your landscape.
 - Triggered by an event or scaling action to either launch or terminate instances.
 - Availability Cost and System metrics can all factor into scaling

### Scaling Options

 - **Manual Scaling**: You manually adjust the number of instances in the group.
 - **Scheduled Scaling**: You schedule the scaling actions based on a time or date.
 - **Dynamic Scaling**: You define the scaling policies based on the demand.

### Scaling Policies

 - **Target Tracking Scaling**: Scales the number of instances in the group to maintain a target metric.
 - **Step Scaling**: Scales the number of instances based on a set of scaling adjustments.
 - **Simple Scaling**: Scales the number of instances based on a single scaling adjustment.

### Scaling Cooldown Concept for EC2

 - Configurable time period after a scaling activity where further scaling activities are not allowed.
 - Default is 300 seconds.
 - Automatically applied to dynamic scaling policies.

## Application Auto Scaling

 - Supports services like DynamoDB, ECS, and Lambda.
 - Allows you to automatically adjust the capacity of various AWS services based on the current demand.
 - Can be used to scale resources based on predefined schedules or custom metrics.

### Application Auto Scaling policies

 - **Target Tracking Scaling**: Scales the resource to maintain a target value.
 - **Step Scaling**: Scales the resource based on a set of scaling adjustments.
 - **Scheduled Scaling**: Scales the resource based on a schedule.

## AWS Auto Scaling

 - Unified service that allows you to automatically scale multiple AWS resources based on demand.
 - Can be used to scale EC2 instances, ECS tasks, DynamoDB tables, and more.
 - Provides a simple and consistent experience for scaling across different services.

## AWS Predictive Scaling

Predictive scaling is a feature of AWS Auto Scaling that uses machine learning to predict the demand for your resources. It can be used to automatically adjust the capacity of your resources based on predicted demand, helping to improve performance and reduce costs.

