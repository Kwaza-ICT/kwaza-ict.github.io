# Controlling Access to Your Organization

## Service Control Policy

 - Applied to organizations, organizational units, or accounts
 - Uses IAM policy syntax, but never grants permissions
 - Effects are inherited by all accounts bellow the SCP's target

## AWS Config

Monitoring Best Practices across Your Organization

 - Continuously monitor and record your AWS resource configurations
 - Evaluate configurations against best practices
 - Receive notifications when resources are out of compliance

## IAM Identity Center

 - Maps users and groups from an Indentity provider
 - Integrates with identity providers that support SAML 2.0
 - AWS SSO can also act as an identity provider

### Output

 - Deny Actions with Service Control Policies
 - Dettect Compliance with AWS Config
 - Control User Access with IAM Identity Center
