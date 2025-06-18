# Understanding authentication models


## The local accounts model (invitation-based)

Local user accounts represent each user's account and are internal to the UiPath platform.

The local accounts model provides a self-contained approach to authentication. It requires an invitation from an organization administrator for new users to join. It's suitable for scenarios where you want complete control over user management within your platform.

This model is compatible with the directory accounts model. If you choose to use the directory model, you can continue to create users by invitation.

In the organization settings,
            you have full control over the authentication methods available to users:

* To allow usage of all available methods (Google, Microsoft, Basic Authentication)
                    for maximum flexibility, choose the All available methods option.
* To restrict authentication to only Google, choose the Google sign-in
                    option.
* To restrict authentication to only Microsoft, choose the Microsoft sign-in
                    option.

The process for creating a user is as follows:

1. Organization administrators must obtain the email addresses of users and use them to invite each user to join their organization. They can do this in bulk.
2. Each invited employee accepts the invitation by navigating to the link provided in the invitation email and creates a UiPath user account.


### Authentication with Google, Microsoft, Linkedin, or personal emails

This model applies to any new organization by default. It is easy to use, quick to set up, and convenient for your users.

The process for creating a user is as follows:

1. Organization administrators must obtain the email addresses of users and use them to invite each user to join their organization. They can do this in bulk.
2. Each invited employee accepts the invitation by navigating to the link provided in the invitation email and creates a UiPath user account. They can: Use the invited email as a username and create a password. Use an existing account they have with Microsoft (personal, Azure AD-linked account, or Office 365 account), Google (personal or Google Workspace account), or their personal LinkedIn account to sign in to (or federate in to) their UiPath user account.The ability to use one of the mentioned providers is convenient for users who do not have to
                            remember additional passwords. Additionally, using organization-owned
                            accounts in Azure AD or Google Workspace lets you enforce organization
                            sign-in policies.


### Authentication with Google or Microsoft only

In this model you create users in the same way as in the invitation-based model: you issue an invitation to their email address and your users must create a UiPath account. The difference is that you can choose to enforce sign in using either:

* Google
* Microsoft

So instead of viewing all sign in options, your users view only the one you selected.

For example, the following image describes what is shown to your users if you choose to enforce sign in with Microsoft:

!['Sign in with Microsoft' image](/images/microsoft sign in=GUID-3E1626E8-EF5F-4E77-9CA5-470EFF51ADD6=1=en=Default.png)

They still use their UiPath account to sign in. The account must use the email address where the invitation was sent.

If you have authorized external applications for your organization, tokens generated while using other providers remain valid, but any new tokens follow the enforced sign in policy.


## The directory accounts model

The directory accounts model relies on a third-party directory that you integrate with the UiPath platform. This lets you reuse your company's
            established identity scheme in UiPath.

Azure Active Directory: If you have a
                    Microsoft Azure or Office 365 subscription, you can integrate Azure with the UiPath platform to use your existing users and
                    groups from Azure Active Directory within UiPath.SAML 2.0: Lets you integrate the UiPath platform with your chosen
					identity provider (IdP). This lets your users connect to UiPath with single
					sign-on (SSO), using the accounts that are already registered with your
					IdP.

Directory user accounts are created and maintained in a directory which is external to UiPath. Directory accounts are only referenced in
the UiPath platform and used as identities for your
            users.

Compatibility with the invitation-based modelYou can continue to use all the features of the invitation-based model in conjunction
				with a directory model. However, to maximize the benefits, we recommend relying
				exclusively on centralized account management from your integrated directory.


### Azure Active Directory

This feature is only
            available if you are on the Enterprise licensing plan.

The integration with Azure Active Directory (Azure AD) can offer scalable user and access management for your organization, allowing for compliance across all the internal applications used by your employees. If your organization is using Azure AD or Office 365, you can connect your organization directly to your Azure AD tenant to obtain the following benefits:

* Automatic user onboarding with seamless migration All users and groups from Azure AD are readily available for any UiPath platform service to assign permissions, without the need to invite and manage Azure AD users in the organization directory. You can provide Single Sign-On for users whose corporate username differs from their email address, which is not possible with the invitation-based model. All existing users with local UiPath accounts have their permissions automatically migrated to their connected Azure AD account.
* Simplified sign-in experience Users do not have to accept an invitation or create a UiPath user account to access the organization. They sign in with their Azure AD account by selecting the Enterprise SSO option or using their organization-specific URL. If the user is already signed in to Azure AD or Office 365, they are automatically signed in. UiPath Assistant and Studio versions 20.10.3 and higher can be preconfigured to use a custom Orchestrator URL, which leads to the same seamless connection experience.
* Scalable governance and access management with existing Azure AD groups Azure AD security groups or Office 365 groups, also known as directory groups, allow you to leverage your existing organizational structure to manage permissions at scale. You no longer need to configure permissions in services for each user. You can combine multiple directory groups into one group if you need to manage them together. Auditing access is simple. After you've configured permissions in all UiPath platform services using Azure AD groups, you utilize your existing validation processes associated with Azure AD group membership.

The API Access option (Admin > tenant) is not available when using the Azure AD model.If you have processes in place that use the information from the API Access window to authenticate API calls to UiPath services, you must switch to using OAuth for authorization, in which case the information from API Access is no longer required.To use OAuth, you must register external applications to the UiPath platform.


### SAML 2.0

This feature is only
            available if you are on the Enterprise licensing plan.

This model allows you to connect the UiPath platform to your chosen identity provider (IdP) so that:

* your users can benefit from single sign-on (SSO) and
* you can manage existing accounts from your directory in the UiPath platform, without having to re-create identities.

The UiPath platform can connect to any external identity provider that uses the SAML 2.0 standard.

# Benefits

!['Benefits to SAML 2.0' image](/images/aeb457d-SAML_advantages=GUID-D296529D-B437-497D-B7E7-D25B78DD1BF1=1=en=Default.png)

* Automatic onboarding of users to the UiPath platform: All users from your external identity provider are authorized to sign in to the UiPath organization with basic rights when the SAML integration is active. What this means is:Users can sign in to your UIPath organization via SSO using their existing company account, as defined in the IdP. Without any further setup, they become members of the Everyone user group, which grants them the User organization role by default. To be able to work in the UiPath platform, users require roles and licenses, as appropriate for their role. If you need to restrict access to only some of your users, you can define the set of users who are allowed to access the UiPath platform in your identity provider.
* User management: You can add users by directly assigning them to groups. To do this, just enter their email address when adding users to the group.Typically, organization administrators manage local accounts from the Admin > Accounts & Groups > Users tab. However, SAML users are directory accounts in the UiPath ecosystem, so they are not visible on this page.After a user has been added to a group or they have signed in at least once (which automatically adds them to the Everyone group), they are available in search in all UiPath services for direct role or license assignment.
* Attribute mapping: If you use UiPath Automation Hub, for example, you can define custom attribute mapping to propagate attributes from your identity provider to the UiPath platform. For example, when an account is first added to Automation Hub, the first name, last name, email address, job title, and department of the user are already populated.


## How authentication works

The identity of your users is verified based on your organization directory. Based on user permissions assigned through roles and groups, they can access all your UiPath cloud services with only one set of credentials. The following diagram describes the two identity models, how they work with the various user identities, and how federation can be achieved. In the invitation-based model, identity management is performed on a user reference in the organization directory, while users remain in control of their accounts. If integrated with Azure Active Directory (Azure AD), it is as simple as looking at the contents of your tenant directory in Azure AD, depicted in the following diagram with an orange arrow.


## Model comparison

The following table describes some factors to consider when choosing the authentication setting for your organization:


| Factor | Invitation-based | Invitation-based with enforced option | Azure Active Directory | SAML |
| --- --- --- --- ---| Community license | Available | Available | Not available | Not available |
| Enterprise license | Available | Available | Available | Available |
| Support for local accounts(UiPath account) | Available | Available | Available | Available |
| Support for directory accounts | Not available | Not available | Available | Available |
| User account management | Automation Cloud organization administrator | Automation Cloud organization administrator | Azure AD administrator | Administrator of your identity provider |
| User access management | Automation Cloud organization administrator | Automation Cloud organization administrator | Automation Cloud user management can be delegated entirely to Azure AD | Automation Cloud organization administrator |
| Single sign-on | Available (with Google, Microsoft, or LinkedIn) | Available (with Google or Microsoft) | Available (with Azure AD account) | Available (with IdP account) |
| Enforce a complex password policy | Not available | Available (if enforced from the IdP) | Available (if enforced from AAD) | Available (if enforced from the IdP) |
| Multi-factor authentication | Not available | Available (if enforced from the IdP) | Available (if enforced from AAD) | Available (if enforced from the IdP) |
| Reuse your company's existing identities | Not available | Not available | Available | Available |
| Large-scale user onboarding | Not available(all users must be invited) | Not available (all users must be invited) | Available (just-in-time account provisioning) | Available (just-in-time account provisioning) |
| Access for collaborators from outside your company | Available (through invitation) | Available (through invitation for account on enforced IdP) | Available | Available (if allowed by the IdP) |
| Restrict access from inside corpnet | Not available | Not available | Available | Available (if enforced from the IdP) |
| Restrict access to trusted devices | Not available | Not available | Available | Available (if enforced from the IdP) |


## Reusing your identity directory

If your company already uses a directory to manage employee accounts, the following table can help you find the more advantageous authentication option for you:


| Factor | Invitation-based | Invitation-based with enforced option | Azure Active Directory | SAML |
| --- --- --- --- ---| You already use Google Workspace as your identity provider. | Users need a UiPath account, but SSO is also possible. | Users need a UiPath account, but enforced SSO with Google is possible. | N/A | N/A |
| You already use Office 365 with your identity provider. | Users need a UiPath account. | Users need a UiPath account. | You can grant access to Automation Cloud to existing user accounts. | You can grant access to Automation Cloud to existing user accounts. |
| You already use Azure AD as your identity provider. | Users need a UiPath account. | Users need a UiPath account. | You can grant access to Automation Cloud to existing user accounts. | We recommend using the AAD integration instead of the SAML integration. |
| You already use another identity provider. | Users need a UiPath account. | Users need a UiPath account. | You can grant access to Automation Cloud to existing user accounts. | You can grant access to Automation Cloud to existing user accounts. |


## The local accounts model

Local user accounts represent each user's account and are internal to instanceName. In this model, an organization administrator adds new users to the organization. It's suitable for scenarios where you want complete control over user management within instanceName.

In UiPath, SSO settings are provisions that can be implemented at both the host level and the organization level.

SSO settings at the host level are used across all organizations tied to the host. This means any SSO settings you adjust on this level are applied to each organization under the host's umbrella.

The SSO settings that can be managed at the host level include basic sign-in, Google SSO, Azure AD SSO, Active Directory and SAML SSO. Specific settings, such as the basic sign-in, can be overriden at the organization level.

The SSO settings that can be managed at the host level include basic sign-in, Azure AD SSO, and SAML SSO. Specific settings, such as the basic sign-in, can be overriden at the organization level.

This model is compatible with the directory accounts model.


## The directory accounts model

The directory accounts model relies on a third-party directory that you integrate with UiPath platform. This lets you reuse your company's established identity scheme. Directory accounts are created and maintained in a directory which is external to the UiPath platform; they are only referenced in the UiPath platform and used as identities.

In UiPath, directory integration models can be configured at both the host and the organization levels.

* At the host level, directory integration options include SAML 2.0 and Active Directory. These settings are applied consistently to all organizations under the host.
* At the organization level, UiPath allows organization admins to override the host-level settings using either SAML 2.0 and Azure Active Directory (AAD) integration.

Active Directory is essential in coordinating authentication and access management policies for most companies. When establishing directory integration, your identity provider serves as the single source of truth for user identities.

By allowing settings at both the host and organization levels, UiPath's directory model effectively provides a balance of consistency and flexibility. It allows the use of unified directory integration services across the host while also providing custom settings at the organization level when necessary.


## Authentication levels and inheritance

Choosing the identity provider for your organization affects the way users sign in, and how user and group accounts are created and managed. In instanceName, administrators can choose the authentication and related security settings either globally (host level) for all organizations at once, or for each organization:

* Global authentication settings (host level): As a system administrator, you can choose the authentication and related default security settings for your installation at the host level. We call these host authentication and security settings, and they are inherited by all organizations as default. Learn to configure host authentication and security settings.
* Organization-level authentication settings: As an organization administrator, you can choose the authentication and related security settings for your organization. Some settings are inherited from the host level, but you can override them if different settings should apply for your organization. Learn to configure organization-level authentication and security settings.

The following table describes the authentication and related security settings for host levels for all organizations at once, or for each organization:


|  | Azure AD Host Level | Azure AD Org Level | SAML Host Level | SAML Org Level |
| --- --- --- --- ---| Directory integration | No | Yes | No | Yes |
| Automatic provisioning | Yes | Yes | No | Yes |
| Automatic group provisioning | No | No | No | Yes |


### Global authentication settings (host
        level)

instanceName allows you to configure an external identity
            provider to control how your users sign in. These settings apply to all
            organizations.

The instructions indicated in the following
                    table are for a new installation or if you are configuring one of the external
                    providers for the first time.If you upgraded and were already using one
                    or more of the external providers from the following list, the configuration is
                    migrated, but you might need to perform some reconfiguration tasks. If so,
                    follow the instructions in Reconfiguring authentication after
                            upgrade instead.The following table provides an overview of the
            different host-level external providers available:


| External Provider Integration | Authentication | Directory Search | Administrators Provisioning |
| --- --- --- ---| Active Directory and                                     Windows Authentication | Administrators can use SSO with Windows                                 Authentication using the Kerberos protocol | Administrators can search for users from the Active                                 Directory | For a user to be able to login, either the user or a                                 group that the user is a member of should already be added to the                                 UiPath platform. Active Directory users and groups are available in                                 the UiPath platform through directory search. |
| Azure Active                                     Directory | Administrators can use SSO with Azure AD using the                                 OpenID Connect protocol | Not supported | Users must be manually provisioned into the UiPath                                 organization with an email address matching their Azure AD                                 account. |
| Google | Users can use SSO with Google using the OpenID                                 Connect protocol | Not supported | Users must be manually provisioned into the UiPath                                 organization with an email address matching their Google                                 account. |
| SAML 2.0 | Users can use SSO with any Identity Provider that                                 supports SAML | Not supported | Users must be manually provisioned into the UiPath                                 organization with a username/email/external provider key (as                                 configured in their external identity provider configuration)                                 matching their SAML account. |

Differences between
                integrating Azure AD at host-level and organization-level: The host-level
            functionality only enables SSO. The organization-level AAD integration enables SSO,
            directory search, and automatic user provisioning.


### Organization authentication

# Azure Active Directory
                model

The integration with Azure Active Directory (Azure AD) offers
                scalable user and access management for your organization, allowing for compliance
                across all the internal applications used by your employees. If your organization is
                using Azure AD or Office 365, you can connect your instanceName directly to your Azure AD tenant to obtain the following
                benefits:

Automatic user onboarding with seamless migration

* All users and groups from Azure AD are readily available for any service to assign permissions, without the need to invite and manage Azure AD users in the organization directory.
* You can provide SSO for users whose corporate username differs from their email address, which is not possible with the invitation model.
* All existing users with UiPath user accounts have their permissions automatically migrated to their connected Azure AD account.

Simplified sign-in experience

* Users do not have to accept an invitation or create a UiPath user account to access the organization as in the default model. They sign in with their Azure AD account by selecting the Enterprise SSO option or using their organization-specific URL.If the user is already signed in to Azure AD or Office 365, they are automatically signed in.
* UiPath Assistant and Studio versions 20.10.3 and higher can be preconfigured to use a custom instanceNameURL, which leads to the same seamless connection experience.

Scalable governance and access management with existing Azure AD
                groups

* Azure AD security groups or Office 365 groups, also known as directory groups, allow you to leverage your existing organizational structure to manage permissions at scale. You no longer need to configure permissions in instanceName services for each user.
* You can combine multiple directory groups into one instanceName group if you need to manage them together.
* Auditing instanceName access is simple. After you've configured permissions in all Orchestrator services using Azure AD groups, you utilize your existing validation processes associated with Azure AD group membership.While on the Azure AD model, you can continue to use all the features of the default model. But to maximize the benefits, we recommend relying exclusively on centralized account management from Azure AD.If you would like to use Azure Active Directory as the identity provider for your organization, follow the instructions in Setting up the Azure AD integration.

# SAML model

This model allows you to connect instanceName to
                your chosen identity provider (IdP) so that:

* your users can benefit from SSO and
* you can manage existing accounts from your directory in instanceName, without having to re-create identities.

instanceName can connect to any external identity
                provider that uses the SAML 2.0 standard to obtain the following benefits:

Automatic onboarding of users

All users from your external identity provider are authorized to sign in with basic
                rights when the SAML integration is active. What this means is:

* Users can sign in to your organization via SSO using their existing company account, as defined in the IdP.
* Without any further setup, they are able to access the organization by default. To be able to work in the organization, users require roles and licenses, as appropriate for their role.

User management

You can add users by directly assigning them to groups, to do this all you have to do
                is enter their email address when adding users to the group.

Typically, administrators manage local accounts from Admin > organization
                > Accounts & Groups > Users tab. But SAML users are
                directory accounts, so they are not visible on this page.

After a user has been added to a group or they have signed in at least once (which
                automatically adds them to the Everyone group), they are available in search in all
                services for direct role or license assignment.

Attribute mapping

If you use UiPath Automation Hub, you can define custom attribute mapping to
                propagate attributes from your identity provider into instanceName. For example, when an account is first added to
                Automation Hub, the first name, last name, email address, job title, and department
                of the user are already populated.

!['Benefits of SAML model' image](/images/aeb457d-SAML_advantages=GUID-419DCB5B-2F7C-4770-A34D-73CD1E5959A8=1=en=Default.png)

# Setup

Administrators can
                configure and enable the SAML integration for your entire organization from
                    Admin > Security Settings > Authentication
                Settings.

For instructions, refer to Configuring the SAML
                integration.

Transitioning from the Azure AD
                    integration to the SAML integration

After switching to the SAML
                integration, the Azure AD integration is disabled. Azure AD group assignments no
                longer apply, so Orchestrator group membership and the permissions inherited from
                Azure AD are no longer respected.

