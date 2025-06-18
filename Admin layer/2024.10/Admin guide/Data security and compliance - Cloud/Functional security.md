# Functional security

This page outlines the key functionalities we implemented to ensure that your interactions with the platform occur securely.

# Audit logging

The UiPath platform includes audit logging capabilities. This allows you to maintain a detailed record of activities, user actions, and system events. Audit logs are essential for monitoring and compliance purposes, helping you track and investigate security incidents.

# Authentication and authorization

Auth0 integration: We leverage Auth0 for robust and secure user authentication and authorization. Auth0 is a trusted identity management platform, providing strong authentication and authorization capabilities.Authentication models: Our authentication model allows access to your organization with:Local accounts: basic authentication (user-owned email). You can set up Single Sign-On (SSO) with Azure Active Directory (AAD) or other SAML providers, and log in through your own enterprise authentication systems.Local accounts: basic authentication (user-owned email) or their existing Microsoft or Google accountsDirectory accounts: company-managed accounts (when your third-party identity provider is connected with the UiPath platform).

# Access control features

Restricting access by IP: You can restrict access to the platform based on IP addresses. This feature adds an additional layer of security by ensuring that only authorized IP addresses can access the platform.If you need even tighter security, you can contact Support to help you set IP restrictions at the infrastructure level.Session policy: You can define and enforce rules for concurrent user sessions. This helps prevent unauthorized access and enhances security.Restricting access to users: You can define access controls that restrict specific users or user groups from accessing the platform.

# Data encryption

Custom data encryption: You can encrypt your data stored across the platform using custom encryption keys. This ensures that sensitive data is protected and only accessible to authorized users.UiPath keys: You can use UiPath keys for data encryption. This provides a secure and standardized approach to data protection.
