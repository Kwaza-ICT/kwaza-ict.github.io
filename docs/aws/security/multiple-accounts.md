# Multiple accounts

## AWS Organizations

AWS Organizations is a service that enables you to consolidate multiple AWS accounts into an organization that you create and centrally manage. AWS Organizations includes account management and consolidated billing capabilities that enable you to better meet the budgetary, security, and compliance needs of your business.

### Anatomy of an organization

- **Organization**: The root entity that contains all of your AWS accounts.
- **Organizational unit (OU)**: A container for accounts within an organization. OUs can contain other OUs, enabling you to create a hierarchy.
- **Account**: A standalone AWS account that is part of an organization.
- **Service control policies (SCPs)**: Policies that you can use to control access to AWS services and resources across multiple accounts.
- **Consolidated billing**: A feature that enables you to consolidate payment for multiple AWS accounts within an organization.
- **Management account**: The account that you use to create an organization and manage its settings.
- **Member account**: An account that is part of an organization but is not the management account.

### Why use Multiple Accounts

- **Security**: Isolate workloads and resources to reduce the impact of security incidents.
- **Compliance**: Enforce compliance requirements by segregating workloads and resources.

### AWS Control Tower

AWS Control Tower is a service that provides the easiest way to set up and govern a new, secure, multi-account AWS environment based on best practices established through AWS' experience working with thousands of enterprises as they move to the cloud.

 - An automated approach to managing best practices
 - Centralizes and automates guardrails across your organization

#### Landing Zone

 - What you provision when you start using Control Tower. Your landing zone is a recommended customizable starting point.

#### Guardrails

 - A high-level rule governed by service control policies or AWS Config rules

#### Baseline

 - The combination of blueprints (CloudFormation stacks) and guardrails applied to a member account

## Outputs

 - Group your Workloads with AWS Organizations
 - Only Allow Access when needed
 - Automate Best Practives with Control Tower