# Networking

This section contains information about networking in AWS.

## Tips

 - VPCs in General
   - know the pros and cons of each On-prem to AWS connection mode
   - know the functions of each VPC component
   - Know what is meant by:
     - stateful: the firewall remembers the state of the connection
     - stateless: the firewall does not remember the state of the connection
     - connectionless: the firewall does not remember the state of the connection
     - connection-based: the firewall remembers the state of the connection
   - Routing
     - Understand BGP and how to use weight to influence routing
     - know how route table are prioritized
     - what other routing protocols are supported by AWS
   - VPC peering
     - CIDR block overlap
     - After VPC owner accepts a peering request, routes must be added to route tables
     - Transitive peering is not supported
     - A transit VPC is supported
   - Internet Gateways
     - Difference between NAT instance and NAT gateway
     - Internet gateway is horizontally scaled and redundant
     - NATs do have bandwidth limitations
     - VPCs can use multiple NAT gateways
     - Use Egress-Only Internet Gateway for IPv6
   - Route53
     - Understand the difference between a hosted zone and a domain
     - Know the Weighted Routing Policy
     - Route53 is a global service
   - CloudFront
     - Understand the difference between an origin and a distribution
     - Know the difference between a web distribution and a RTMP distribution
     - Understand the difference between a cache hit and a cache miss
   - Elastic Load Balancer
     - Know the difference between an Application Load Balancer and a Classic Load Balancer
     - Know the difference between a Network Load Balancer and a Classic Load Balancer
     - Know the difference between a Layer 4 and a Layer 7 Load Balancer