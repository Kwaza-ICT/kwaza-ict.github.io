# Elastic Load Balancer

An Elastic Load Balancer (ELB) is a managed load balancer service provided by AWS. It automatically distributes incoming application traffic across multiple targets, such as EC2 instances, containers, and IP addresses, to ensure optimal load distribution and fault tolerance.

## Types of Elastic Load Balancers

AWS provides the following types of Elastic Load Balancers:

- **Application Load Balancer (ALB)**: Best suited for load balancing of HTTP and HTTPS traffic and provides advanced request routing targeted at the delivery of modern application architectures, including microservices and container-based applications.
- **Network Load Balancer (NLB)**: Best suited for load balancing of Transmission Control Protocol (TCP), Transport Layer Security (TLS), and User Datagram Protocol (UDP) traffic where extreme performance is required.
- **Classic Load Balancer (CLB)**: Provides basic load balancing across multiple Amazon EC2 instances and operates at both the request level and connection level.
- **Gateway Load Balancer (GWLB)**: A new type of load balancer that is designed to work with third-party security appliances and software-based solutions.
