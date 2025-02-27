# Understanding User Access to Your Organization

## The Greatest Vulnerability

 - Leaking Access Keys
 - Compromised User Credentials

## IAM Users vs IAM Identity Center

 - IAM Users: Users created in the AWS Management Console
 - IAM Identity Center: Maps users and groups from an identity provider
 - IAM Users: Federated Identity not supported
 - IAM Users: One permissions set per user

## AD Connector

 - Use your existing users and groups to grant permissions in AWS accounts
 - Easily integrates with AWS Identity Center (formely AWS SSO)
 - Allows for a single source for credential management

## Multi-Factor Authentication

 - Adds an additional layer of security to your account
 - Requires a second form of verification in addition to your password
 - Can be used to secure access to the AWS Management Console, AWS CLI, and AWS API

## Use CloudTrail to Monitor User Activity

 - CloudTrail logs all API calls made on your account
 - Can be used to track user activity and detect unauthorized access
 - Can be used to troubleshoot operational issues and ensure compliance with security policies

## Outputs

 - IAM Identity Center Uses Roles
 - AD Connector Uses your Existing AD
 - MFA Can be your last line of Defense
