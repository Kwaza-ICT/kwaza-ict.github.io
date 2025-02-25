# CloudFront

 - Can deliver content to your users faster by caching at edge locations
 - Dynamic content delivery is archieved using HTTP cookies forwarded to the origin
 - Supports adobe Flash Media Server RTMP protocol but you have to choose RTMP delivery method
 - Web distribution also support media streaming using and live streaming using but use HTTP or HTTPS
 - Origins can be S3, EC2, ELB or another web server
 - Multiple origins can be specified for a distribution
 - Use behaviors to specify how CloudFront should handle requests for different paths

## Invalidating Objects

 - You can invalidate objects in the cache using the AWS Management Console, the CloudFront API, or the AWS SDKs
 - Invalidation is the process of removing objects from the cache before they expire
 - You can invalidate objects one at a time or all at once
 - Invalidation is not instant and can take time to complete

