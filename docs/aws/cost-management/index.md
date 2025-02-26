# Cost management

## Concepts

### Capital Expenses (CapEx)

Capital expenses (CapEx) are funds used by a company to acquire, upgrade, and maintain physical assets such as property, buildings, or equipment. CapEx is often used to undertake new projects or investments that will help the company grow or maintain its competitive position in the market.

### Operational Expenses (OpEx)

Operational expenses (OpEx) are the ongoing costs that a company incurs to run its day-to-day operations. OpEx includes expenses such as rent, utilities, salaries, and other costs that are necessary to keep the business running. OpEx is typically considered a cost of doing business and is deducted from revenue to calculate net income.

### Total Cost of Ownership (TCO)

Total cost of ownership (TCO) is the total cost of acquiring, operating, and maintaining an asset over its entire lifecycle. TCO includes the initial purchase price of the asset, as well as ongoing costs such as maintenance, repairs, and operating expenses. TCO is used to evaluate the cost-effectiveness of different investment options and to make informed decisions about resource allocation.

### Return on Investment (ROI)

Return on investment (ROI) is a financial metric used to evaluate the profitability of an investment. ROI is calculated by dividing the net profit of an investment by the initial cost of the investment and expressing the result as a percentage. A positive ROI indicates that an investment is profitable, while a negative ROI indicates that an investment is not profitable.

## Cost Optimization Strategies

### Appropriate provisioning

 - Provision the resources you need and nothing more
 - Consolidate where possible for greater density and lower complexity (multi-database, containers)
 - CloudWatch can help by monitoring utilization

### Right-sizing

 - Choose the right instance type and size for your workload
 - Use tools like AWS Trusted Advisor to identify underutilized resources
 - Consider using reserved instances for predictable workloads
 - Loosely coupled architectures using SNS, SQS, and Lambda can smooth demand and create more predictable and consistent

### Purchase options

 - Reserved Instances (RIs) can provide significant cost savings for predictable workloads
 - Savings Plans offer flexibility and savings for a wide range of workloads
 - Spot Instances can provide significant savings for fault-tolerant and flexible workloads
 - On-Demand Instances are ideal for unpredictable workloads or when you need to quickly scale up or down

### Geographic Selection

 - AWS Pricing can vary from region to region
 - Consider potential savings by locating resources in a remote region if local access is not required
 - Route53 and CloudFront can help with global distribution

### Managed Services

 - Leverage managed services to reduce operational overhead (Mysql over self-managed)
 - Cost savings gained through lower complexity and manual intervention
 - RDS, Redshift, and DynamoDB are examples of managed services

### Optimized Data Transfer

 - Data going out and between regions can be costly
 - Direct connect can be a more cost-effective option for large data transfers

## Tagging and Resource Groups

 - Tagging resources can help you track and manage costs
 - Tagging strategies can be used for Cost Allocation, security, automation and manu other resources
 - Enforcing standardized tagging can be done via AWS Config Rules or custom scripts
 - Most resources can have up to 50 tags

### AWS Resources groups

 - Resources Groups are grouping of AWS assets defined by tags
 - Create custom consoles to consolidate metrics, alarms and config details

## Managing Costs accross accounts

### Cost and Usage reports

 - Generate Csv files to track costs by account, services or tags
 - With consolidated billing enabled, track spending across your organization from the management account
 - Adjust granualarity to hourly, daily or monthly
 - Further analysis can be done with Athena or QuickSight

### Outputs about costs accross accounts

 - analyze costs accross your organization
 - Budgets can alert you or trigger automation
 - Have plan for tagging resources

## Spot and Reserved Instances

### Reserved Instances

 - Reserved Instances (RIs) provide a significant discount compared to On-Demand pricing
 - RIs require a commitment to a specific instance type in a specific region for a term of 1 or 3 years
 - RIs are ideal for predictable workloads with steady state usage

### Spot Instances

 - Excess capacity that AWS tries to sell on an market exchange basis
 - Customer creates a Spot request and specifies AMI, desired instance type, and max price
 - Customer defines highest price willing to pay for instance capacity
 - Spot request can be fill and kill, maintain or duration-based

### Dedicated Instance vs Dedicated Host

 - Dedicated Instances run on hardware that's dedicated to a single customer
 - Dedicated Hosts run on a physical server that's dedicated to a single customer
 - Dedicated Hosts provide visibility and control over the placement of instances
 - Dedicated Hosts can be purchased On-Demand or as a Reservation
 - Dedicated Hosts can be used to meet compliance requirements
 - Each dedicated host can only run one EC2 instance
 - Dedicated Instances may share hardware with other instances
 - Available as on demand, reserved adn spot instances

## Consolidated billing

### AWS Budgets

 - Allow you to set pre-defined limits and notification
 - Can be set for cost, usage, RI utilization, and reservation coverage
 - Useful as a method to distribute costs and track spending

### Consolidated Billing

 - Enable a single player account thats locked down to only those who need access
 - Economies of scale can be achieved by aggregating usage

### Trusted Advisor

 - Provides real-time guidance to help you provision your resources following AWS best practices
 - Trusted Advisor inspects your environment and makes recommendations for saving money, improving system performance, and closing security gaps

### Outputs

 - Consting in general
   - understand the difference between CapEx and OpEx
   - understand the concept of TCO and ROI
 - Cost optimization strategies
   - understand the different cost optimization strategies
   - understand the benefits of tagging and resource groups
 - taggin and resource groups
   - understand the benefits of tagging and resource groups
   - understand how to manage costs across accounts
 - Spot and Reserved Instances
   - understand the benefits of Reserved Instances
   - understand the benefits of Spot Instances
   - understand the difference between Dedicated Instances and Dedicated Hosts
 - Cost management
    - understand the benefits of AWS Budgets
    - understand the benefits of Consolidated Billing
    - understand the benefits of Trusted Advisor



