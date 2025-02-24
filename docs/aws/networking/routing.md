# AWS Routing table

A routing table is a set of rules, often viewed in a table format, that is used to determine where network traffic from a subnet or gateway should be directed. In AWS, a routing table is associated with a subnet and controls the routing of traffic from instances in the subnet. Each subnet in a VPC must be associated with a routing table, which controls the routing for the subnet.

## Border Gateway Protocol (BGP)

Border Gateway Protocol (BGP) is a standardized exterior gateway protocol that is used to exchange routing information between different networks on the internet. BGP is the protocol used to make core routing decisions on the internet. It is a path vector protocol that routes traffic based on the shortest path and routing policies.

 - Popular routing protocol for the internet
 - Propagates routing information between networks to allow dynamic routing
 - Required for Direct Connect AND optimal for VPN connections
 - Alternative of not using BGP with AWS VPC is to use static routes
 - AWS supports BGP community tagging as a way to control traffic scope and route preference
 - Required TCP port 179 to be open for BGP to work
 - Autonomous System Numbers (ASNs) are used to identify networks on the internet
 - Weighting is local to the router and higher weight is preferred



