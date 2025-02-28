# AWS Directory Services

## Types

### Simple AD

 - Low scale, low cost AD implementation based on Samba
 - Simple user directory, or you need LDAP compatibility

### AD Connector

 - Allows on-premises users to log into AWS servifces with their existing credentials
 - Single sign-on for on-prem employees and for adding EC2 intances

### AWS Directory Service for Microsoft AD

 - AWS-managed full microsoft AD running on Windows Server 2012 R2
 - Enterprises that want hosted Microsoft AD or you need LDAP for Linux Apps

### Amazon Cognito

 - User directory that manages user sign-up, sign-in, and access control
 - Mobile and web applications that need user authentication

### aws Cloud Directory

 - Hierarchical data store for use with other AWS services
 - Applications that need a flexible directory structure

## AD Connector VS Simple AD

 - AD Connector: Use existing AD credentials to log into AWS services
 - Simple AD: standalone directory for small organizations based on Samba
 - AD Connector: Existing AD users can log into AWS services
 - AD Connector: Supports MFA
 - Simple AD: No support for MFA
 - Simple AD: No support for trust relationships
 - Simple AD: Kerberos-based authentication
