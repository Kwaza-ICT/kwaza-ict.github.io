# Network to VPC Connectivity

## AWS Managed VPN

 - what: AWS Managed IPsec VPN connection ove your existing internet connection.
 - when: Quick and usually simple way to establish a secure tunneled connection to a VPC; Redundant link for Direct Connect or other VPN.
 - Pros: Supports static routes or BGP peering and routing
 - Cons: Dependent on your internet connection

## AWS Direct Connect

 - What: Dedicated network connection from your on-premises network to AWS.
 - When: Require a "big pipe" into AWS; lots of resources and services being provided on AWS to your corporate network.
 - Pros: More predictable network performance: potential bandwidth cost reduction. up to 10 Gbps provisioned connections; Supports BGP peering and routing
 - Cons: May require additional telecom and hosting provider relationships and/or new network circuits.
 - How: Work with your existing data networking provider; create virtual interfaces to connecto to VPCs

## AWS Direct Connect Plus VPN

 - What: IPsec VPN connection over private lines
 - When: Want to added security of encrypted traffic over a dedicated line
 - Pros: More secure than Direct Connect alone
 - Cons: More complex introduced by VPN layer
 - How: Work with your existing Data Networking provider;

## VPN Cloud Hub

 - What: Connect locations in a Hub and Spoke manner using AWS virtual private gateway
 - When: Link remote offices for backup or primary WAN access to AWS resource and each other
 - Pros: Reuses existing internet connection; Supports BGP routes to direct traffic
 - Cons: Dependent on internet connection; No inherent redundancy
 - How: Assign multiple Customer gateways to a virtual private gateway, each with their own BGP ASN and unique IP ranges

## Software VPN

 - What: You provide the VPN software and hardware
 - When: You must manage both ends of the VPN connection for compliance reasons or you want to use VPN option not supported by AWS
 - Pros: Ultimate flexibility and manageability
 - Cons: You must design for any needed redundancy and manage the VPN software and hardware
 - How: Install VPN software via marketplace appliance or on an EC2 instance

## AWS Transit VPC

 - What: Common strategy for connecting geographically distributed VPCs and locations in order to create a global network transit center
 - When: Locations and VPC-deployed assets across multiple regions that need to communicate with one and other
 - Pros: Ultimate flexibility and manageability but also AWS-managed VPN hub-and-spoken between VPCs
 - Cons: You must design for any needed redundancy across the whole chain
 - How: Providers like Cisco, Juniper Networks and Riverbed have offerings which work with their equipment and AWS VPC