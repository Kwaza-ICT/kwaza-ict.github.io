# VPC Connection Options

## VPC Peering

VPC Peering is a way to connect two VPCs together. It is a one-to-one connection. It is a private connection between two VPCs that allows you to route traffic between them using private IP addresses. Instances in either VPC can communicate with each other as if they are within the same network.

## AWS Transit Gateway

AWS Transit Gateway is a service that enables you to connect multiple VPCs, on-premises networks, and remote networks to a single gateway. It acts as a hub that allows you to route traffic between connected networks. It simplifies network connectivity and management by providing a centralized way to connect multiple networks.

## Output

 - VPC Peering is not transitive, meaning that if VPC A is peered with VPC B and VPC B is peered with VPC C, VPC A and VPC C are not peered.
 - Transit Gateways enable scalibity and simplification of network connectivity and management.
 - Plan your CIDR Ranges carefully to avoid overlapping IP addresses.

### Example

To ensure that your 12 VPCs have non-overlapping CIDR blocks, follow these steps:

1. Plan Your IP Addressing Scheme
   Choose a large enough IP range (e.g., a /12 or /16 subnet) and divide it into smaller non-overlapping blocks.

For example, if you start with 10.0.0.0/12 (which covers 10.0.0.0 - 10.15.255.255), you can divide it into multiple /16 subnets:

| VPC    | CIDR Block    |
|--------|---------------|
| VPC1   | 10.0.0.0/16   | 
| VPC2   | 10.1.0.0/16   |
| VPC3   | 10.2.0.0/16   |
| VPC4   | 10.3.0.0/16   |
| VPC5   | 10.4.0.0/16   |
| VPC6   | 10.5.0.0/16   |
| VPC7   | 10.6.0.0/16   |
| VPC8   | 10.7.0.0/16   |
| VPC9   | 10.8.0.0/16   |
| VPC10  | 10.9.0.0/16   |
| VPC11  | 10.10.0.0/16  |
| VPC12  | 10.11.0.0/16  |

If you need smaller subnets, you can divide each /16 into /17 or /18 subnets while maintaining uniqueness.