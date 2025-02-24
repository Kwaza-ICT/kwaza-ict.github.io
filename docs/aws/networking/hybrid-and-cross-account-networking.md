# Hybrid and Cross-Account Networking

## Direct Connect

A process for establishing a dedicated network connection from your on-premises network to AWS. Direct Connect is a good option when you require a "big pipe" into AWS, or when you have a lot of resources and services being provided on AWS to your corporate network. Direct Connect provides more predictable network performance and can reduce bandwidth costs. It supports BGP peering and routing.

 - AWS connects its global network to your data center
 - This reduces dependency on fluctuating internet bandwidth
 - Work with partners to establish a dedicated network connection
 - Great for frequent transfers of large data sets
 - Can be quite pricey and take time to provision

## Site-to-Site VPN

A Site-to-Site VPN connection is a secure connection between your on-premises network and your VPC. It is used when you need to establish a secure tunneled connection to a VPC, or when you need a redundant link for Direct Connect or other VPN. Site-to-Site VPN supports static routes or BGP peering and routing.

 - Secure connection between your on-premises network and your VPC
 - Can be used to establish a secure tunneled connection to a VPC
 - Can be used as a redundant link for Direct Connect or other VPN
 - Supports static routes or BGP peering and routing
 - Dependent on your internet connection

## Establishing High Availability

When establishing high availability for your network, consider the following:

 - **Multiple Direct Connect Connections**: Establish multiple Direct Connect connections to different AWS Direct Connect locations to ensure high availability.
 - **Multiple VPN Connections**: Establish multiple VPN connections to different AWS VPN endpoints to ensure high availability.
 - **Multiple Availability Zones**: Deploy your resources across multiple Availability Zones to ensure high availability.
 - **Multiple Regions**: Deploy your resources across multiple regions to ensure high availability.

## Outputs

 - Direct Connect Bypasses Internet: Direct Connect bypasses the internet and provides a dedicated connection to AWS.
 - Site-to-Site VPN: Site-to-Site VPN can be the fastest way to establish a secure tunneled connection to a VPC.
 - Transit Gateways Are Key in Hybrid Networks: Transit gateways are key components in hybrid networks that allow you to connect multiple VPCs and on-premises networks.