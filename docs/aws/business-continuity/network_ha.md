# Network High Availability

 - By creating subnets in the available AZs, you create multi-AZ presence for your VPC
 - Best practice is to create at least two VPN tunnels into your Virtual Private Gateway
 - Direct Connect is not HA by default, you need to create a second connection to another location or use VPN
 - Route 53 can be used to route traffic to healthy instances
 - For multi-AZ redundancy or NAT Gateways, create gateways in each AZ with routes for private subnets to use the local gateway
