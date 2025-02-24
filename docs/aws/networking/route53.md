# Route 53

Route 53 is a scalable Domain Name System (DNS) web service designed to route end users to Internet applications by translating names into IP addresses. It connects user requests to infrastructure running in AWS.

## Route policies

Route 53 supports the following routing policies:

- **Simple routing policy**: Use when you have a single resource that performs a given function for your domain, such as a web server that serves content for the example.com website.
- **Weighted routing policy**: Use when you want to route traffic to multiple resources in proportions that you specify. For example, you might want to route 10% of your traffic to one group of servers and 90% to another group.
- **Latency routing policy**: Use when you have resources in multiple AWS Regions and you want to route traffic to the region that provides the best latency.
- **Failover routing policy**: Use when you want to configure active-passive failover.
- **Geolocation routing policy**: Use when you want to route traffic based on the location of your users.
- **Geoproximity routing policy**: Use when you want to route traffic based on the location of your resources and, optionally, shift traffic from resources in one location to resources in another.
- **Multivalue answer routing policy**: Use when you want Route 53 to respond to DNS queries with up to eight healthy records selected at random.
