# CloudFormation

## What is CloudFormation

AWS CloudFormation is a service that helps you model and set up your Amazon Web Services resources so that you can spend less time managing those resources and more time focusing on your applications that run in AWS. You create a template that describes all the AWS resources that you want (like Amazon EC2 instances or Amazon RDS DB instances), and AWS CloudFormation takes care of provisioning and configuring those resources for you. You don't need to individually create and configure AWS resources and figure out what's dependent on what; AWS CloudFormation handles all of that.

## Concepts

 - **Template**: A JSON or YAML formatted text file that describes your AWS infrastructure and resources.
 - **Stack**: A collection of AWS resources that you manage as a single unit. You create, update, and delete a collection of resources by creating, updating, and deleting stacks.
 - **Change Set**: A summary of proposed changes to a stack that CloudFormation generates before making the changes. You can use a change set to understand the impact of the changes and decide whether to proceed.

## Stack Policies

Stack policies are JSON documents that define the update actions that can be performed on designated resources. You can use a stack policy to prevent resources from being accidentally updated or deleted during a stack update.

 - Protect resources from being accidentally updated or deleted during a stack update.
 - Add a stack policy via the console or CLI when creating a stack.
 - Add a stack policy to an existing stack using only CLI.
 - Once applied, a stack policy cannot be removed

## Best Practices

 - AWS provides a python helper scripts which can help to install software
 - Use cloudformation to make changes to your landscape
 - Make use of change sets to identify potential trouble spots in your changes
 - Use stack policies to prevent accidental updates to your resources