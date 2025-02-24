# Internet Gateway

An Internet Gateway (IGW) is a horizontally scaled, redundant, and highly available VPC component that allows communication between instances in your VPC and the internet. It is a logical connection between your VPC and the internet.

An IGW serves two main purposes:

1. **Inbound Traffic**: Allows incoming traffic from the internet to reach your VPC resources.
2. **Outbound Traffic**: Allows resources within your VPC to access the internet.

## Egress-Only Internet Gateway

An Egress-Only Internet Gateway (EIGW) is a horizontally scaled, redundant, and highly available VPC component that allows outbound communication over IPv6 from instances in your VPC to the internet, but prevents the internet from initiating an IPv6 connection with your instances.

## NAT Instance

A Network Address Translation (NAT) instance is an EC2 instance that forwards traffic from instances in a private subnet to the internet or other AWS services, while hiding the internal IP addresses of your instances. It allows instances in a private subnet to initiate outbound traffic to the internet, but prevents the internet from initiating a connection with those instances.

## NAT Gateway

A NAT Gateway is a managed service that allows instances in a private subnet to connect to the internet or other AWS services, while preventing the internet from initiating a connection with those instances. It provides better availability and bandwidth than a NAT instance.

## NAT Instance vs. NAT Gateway

| NAT Instance                               | NAT Gateway                         |
|--------------------------------------------|-------------------------------------|
| Manually deployed EC2 instance             | Managed service                     |
| Requires regular maintenance               | Fully managed by AWS                |
| Single point of failure                    | Highly available and redundant      |
| Limited bandwidth                          | Scales automatically up to 45 Gbps  |
| Cost-effective for small workloads         | More expensive for larger workloads |
| Elastic IP cannot be detached              | Elastic IP can be detached          |
| Cannot be assiciated with a security group | Associated with a security group    |
| Not support Bastion Host                   | Support Bastion Host                |
