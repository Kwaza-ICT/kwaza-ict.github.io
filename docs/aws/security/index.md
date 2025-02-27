# Security

Security is a critical aspect of any cloud deployment, and AWS provides a wide range of services and features to help you secure your applications and data. In this section, we will cover some of the key security services and best practices that you should consider when designing and implementing your AWS architecture.

## Concepts

### Shared Responsibility Model

AWS operates on a shared responsibility model, where AWS is responsible for the security of the cloud infrastructure, and customers are responsible for securing their applications and data. This means that while AWS provides a secure infrastructure, customers are responsible for implementing security best practices and controls to protect their data and applications.

### Principle of Least Privilege

The principle of least privilege is a security best practice that states that users should only have the minimum level of access required to perform their job functions. By following this principle, you can reduce the risk of unauthorized access and limit the potential damage that can be caused by a compromised account.

### Facets of Identity Security

 - Identity: uers, roles, root account, security credentials
 - Authorization: policies
 - Authentication: MFA, password policies
 - Trust: cross-account access. Do other entities trust you?

### Planning for Things to Go wrong

 - Passwords will be stolen
 - Exposed resources will be acessed
 - Static access keys will be leaked
 - How to limit security events
