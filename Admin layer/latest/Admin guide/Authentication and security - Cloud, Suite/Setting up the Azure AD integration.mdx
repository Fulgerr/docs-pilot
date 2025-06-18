# Setting up the Azure AD integration

This feature is available on the Enterprise licensing plan.

If your organization is using Azure Active Directory (Azure AD) or Office 365, you can connect your instanceName organization directly to your Azure AD tenant to view existing accounts and groups in your instanceName environment.

With Azure AD integration, you can continue leveraging the local accounts model, while bootstrapping your organization with the additional benefits of using the Azure AD model. The Azure AD integration is designed such that activating it and rolling it out can happen gradually, with no disruption in production for your existing users.

If your organization has decided to use the Azure AD model, follow the instructions on this page to set up the integration.

# Prerequisites

To set up the Azure AD integration, you need:

* an organization with an Enterprise license
* Admin permissions in both instanceNameand Azure AD (can be different people)
* an Azure AD account with the same email address as the UiPath local account of the organization administrator who carries out the integration. Note that this Azure AD account is just for testing the integration and does not need to have admin permissions in Azure
* UiPath Studio and UiPath Assistant version 2020.10.3 or later
* UiPath Studio and UiPath Assistant to use the recommended deployment
* if you previously used local user accounts , make sure that all your Azure AD users have the email address in the Mail field. Having the email address in the User Principle Name (UPN) field alone is not enough. The Azure AD integration links directory user accounts with the local user accounts if the email addresses match. This allows users to retain permissions when they transition from signing in with their local user account to the Azure AD directory user account.

UiPath obeys the OIDC protocol for its integration with Azure AD. However, the integration does not support usage of application custom keys through claiming an appid query parameter in a dedicated URL, as described in Microsoft's access tokens documentation.

## Configuring Azure for the integration

Your organization requires an app registration in your Azure AD tenant and some configuration so that it can view your AD members to establish account identity. The app registration details are also required to later connect your organization to your Azure AD tenant.Permissions: You must be an administrator in Azure to perform the tasks in this section. The following Azure administrator roles have the required privileges: Global Administrator, Cloud Application Administrator, or Application Administrator.There are two ways to set up your Azure tenant for the integration:Take the following steps to manually configure an app registration for the integration.Use the UiPath Azure AD scripts that we created for this task, which are available on GitHub: The configAzureADconnection.ps1 script performs all the actions described in this section and returns the app registration details. Then you can run the testAzureADappRegistration.ps1 script to make sure the app registration was successful. To manually configure your Azure tenant, take the following steps in Azure Portal:

Create an app registration for instanceName. For details, refer to Microsoft's documentation about Registering an application.During registration, select Accounts in this organizational directory only and set the
                            Redirect URI to {baseURL_identity_NoOrgName}/signin-oidc.If you already have a registered application for your organization, there is no need to create a new one, but make sure that the app is set up as previously described.Open the application's Overview page, copy the Application (client) ID and Directory (tenant) ID, and save them for later use:Go to the Authentication page of your app:Under Redirect URIs, select Add URI to add a new entry.Add {baseURL_portal}/testconnection to the Redirect URIs list.At the bottom, select the ID tokens checkbox.Select Save.Go to the Token configuration page.Select Add Optional Claim.Under Token type, select ID.Select the checkboxes for family_name, given_name, and upn to add them as optional claims:Go to the API permissions page.Select Add permission and add the following delegated permissions from the Microsoft Graph category:OpenId permissions - email, openid, offline_access, profileGroup member permissions - GroupMember.Read.AllUser permissions - User.Read, User.ReadBasic.All, User.Read.All (requires administrative consent)The following table describes the API permissions:PermissionWhat it allows you to doWhat we do with itemail, openid, profile, offline_access, User.ReadAllows AAD to issue a user token to the system applicationAllow users to log into the system using an AAD login. This permits us to keep our user object updated, ensuring consistency of these attributes.User.ReadBasic.AllReads basic properties of all users in the directory that the logged in user is allowed to viewWhen a user assigns permissions to other users in the directory to their resources, they are able to search these users. The functionality for access management/authorization are in the system user experience.User.Read.All (requires admin consent)Reads all user properties in the directory that the logged in user is allowed to viewYour administrator may want to import these additional user properties to configure permissions or display custom information inside the system services. For Automation Hub, customers looking to obtain the full set of attributes from AAD, it is necessary to grant the User.Read.All permission to the app.GroupMember.Read.AllReads the group memberships of all the users that the signed in user has access toIf your organization is using groups to manage permissions in the system, then the platform needs to be able to list all the groups and discover the members of a group. That allows both management and enforcement of group assigned permissions.To learn more about UiPath's access with these permissions, refer to our Encryption documentation.Select the Grant admin consent checkbox.The administrator consents on behalf of all users in the tenant active directory. This allows the application to access the data of all users, without users being prompted to consent. For more information about permissions and consent, refer to Microsoft's Azure AD documentation.Go to the Certificates & secrets page to create a new client secret or a new certificate.Option 1. Client secret. For more information about client secrets, refer to Microsoft's documentation about Adding a new client secret.The created client secret is not permanent. You must update the client secret after its validity period.Option 2. Certificate. The high-level steps for configuring certificates are described in . For more on certificates, see Setting and retrieving a certificate from Azure Key Vault in the Microsoft documentation.Provide your organization administrator with the Directory (tenant) ID, Application (client) ID values. If you chose the client secret option, also share the Client Secret value. If you chose the certificate option, share the certificate details. This information enables the administrator to proceed with the configuration.


### Setting up an Azure Key Vault certificate for UiPath

This section outlines the high-level steps for configuration with a certificate. You can also use a client secret. For more details about setting up certificates, check setting and retrieving a certificate from Azure Key Vault in the Microsoft documentation. Follow these high-level steps to set up a certificate:

1. Log in to Azure Key Vault and navigate to the Certificates section.
2. Create a certificate with the Subject as CN=uipath.com and Content Type as PEM.
3. After creation, download the certificate in PFX/PEM format.
4. Open the .pem file with a text editor. It should consist of two sections: BEGIN PRIVATE KEY/END PRIVATE KEY and BEGIN CERTIFICATE/END CERTIFICATE.
5. Create a new .pem file containing only the lines between BEGIN CERTIFICATE and END CERTIFICATE.
6. In the Azure portal, locate the Certificates & secrets tab in your App Registration and upload the new .pem file.
7. As part of the {portal name} configuration, you need to add the entire content of the downloaded .pem certificate from Azure Key Vault in the Client secret or certificate field. The maximum permitted size for certificates is 10KB.


## Deploying the integration to instanceName

After Azure setup is complete, you can prepare for the integration, activate it, and then clean up old accounts. The process is broken down in stages so that there is no disruption for your users.

You must be an organization administrator in instanceName to perform the tasks in this section.


### Clean up inactive users

When you connect instanceName to Azure AD by activating the integration, accounts with matching email addresses are linked, so that the Azure AD account benefits from the same permissions as the matching UiPath local account.

If your organization practices email recycling, meaning that an email address that was used in the past could be assigned to a new user in the future, this could lead to a risk of elevated access.

Let's say you once had and employee whose email address was john.doe@example.com and this employee had a local account where he was an organization administrator, but has since left the company and the email address was deactivated, but the user was not removed.

When a new employee who is also named John Doe joins your company, he receives the same john.doe@example.com email address. In such a case, when accounts are linked as part of the integration with Azure AD, John Doe inherits organization administrator privileges.

To prevent such situations, make sure you remove all users who are no longer active from the instanceName organization before proceeding to the next step. You can skip this step if inactive email addresses are not reused in your organization.


### Activate the Azure AD integration

Before you begin:make sure that Azure
                                    configuration is complete;obtain the Directory
                                (tenant) ID, Application (client) ID, and Client
                                Secret values for the instanceName app registration in Azure from your Azure
                            administrator.To activate the Azure AD integration, apply the following steps in instanceName:

Log in to the Management portal as an administrator.Go to Admin and, if not already selected, select the organization at the
                    top of the left pane.Select Security to open Security Settings.On the Authentication Settings tab, under Directory integration for
                        SSO, select Configure SSO.Select Azure Active Directory from the SSO configuration panel.Fill in the fields with the information received from your Azure administrator.Select the checkbox for I understand & accept added users and Azure AD
                        users with matching email addresses will have their accounts
                    linked.Select Test Connection to validate the integration has been configured
                    correctly.When prompted, sign in with your Azure AD account.A successful sign in indicates that the integration has been configured
                    correctly.In case it fails, ask your Azure administrator to check that Azure is
                    correctly configured and then try again.Select Save to activate the integration for your organization.After you save your changes, matching accounts are automatically
                    linked.​Sign out.Navigate to the organization URL ({baseURL_vanilla}/organizationID/) and sign in with your Azure AD account.

Now you can work with the users and groups in the linked tenant's Azure AD. Directory accounts
                and groups are not listed in either the Users or Groups pages under
                    Admin - Accounts & Groups, you can only find them through
                search.


### Test the Azure AD integration

To check that the integration is running, sign in as an organization administrator with an Azure AD account and try to search for Azure AD users and groups on any related page, such as the Edit Group panel in the instanceName (Admin > Accounts and Groups > Groups > Edit).

If you can search for users and groups that originate in Azure AD, it means the integration is running. You can tell the type of user or group by its icon.

If you encounter an error while trying to search for users, as shown in the following example, this indicates that there is something wrong with the configuration in Azure. Reach out to your Azure administrator and ask them to check that Azure is set up as described earlier in the documentation on Configuring Azure for the Integration.

Ask your Azure administrator to confirm that they selected the Grant admin consent checkbox during Azure configuration. This is a common cause why the integration fails.

Azure administrators can use the UiPath Azure AD test script testAzureADappRegistration.ps1, which is available on GitHub, to find and fix any configuration issues when the cause is not clear.


## Completing the transition to Azure AD

After the integration is active, we recommend that you follow the instructions in this section to ensure that user creation and group assignations are handed off to Azure AD. This way you can build on top of your existing identity and access management infrastructure for easier governance and access management control over your UiPath resources in instanceName.


### Configure groups for permissions and robots (optional)

You can do this to ensure that the Azure administrator can also onboard new users with the same permissions and robot configuration you had set up prior to the integration. They can do this by adding any new users to an Azure AD group if the group has the required roles already assigned.

You can map your existing user groups from instanceName to new or existing groups in Azure AD. You can do this in several ways, depending on how you use groups in Azure AD:

* If users with the same roles in instanceName are already in the same groups in Azure AD, the organization administrator can add these Azure AD groups to the user groups that these users were in. This ensures that users keep the same permissions and robot setup.
* Otherwise, the Azure administrator can create new groups in Azure AD to match the ones in instanceName and add the same users that are in the UiPath user groups. Then the organization administrator can add the new Azure AD groups to the existing user groups to ensure the same users have the same roles.

Ensure to verify any roles specifically assigned to users, in all instances. If feasible, remove these direct role assignments, and add these users into groups already assigned with these roles.

For example, let's say the Administrators group in instanceName includes the users Anna, Tom, and John. These same users are also in a group in Azure AD called admins. The organization administrator can add the admins Azure group to the Administrators group in instanceName. This way, Anna, Tom, and John, as members of the admins Azure AD group, all benefit from the roles of the Administrators group in instanceName.

Because admins is now part of the Administrators group, when you need to onboard a new administrator, the Azure administrator can add the new user to the admins group in Azure, thus granting them administration permissions in instanceName without having to make any changes in instanceName.

Changes to Azure AD group assignments apply in the instanceName when the user logs in with their Azure AD account, or if already logged in, within an hour.


### Migrate existing users

For the permissions assigned to Azure AD users and groups to apply, users must sign in at least one time. We recommend that, after the integration is running, you communicate to all your users to sign out of their local account and sign in again with their Azure AD account. They can sign in with their Azure AD account by:

* Navigating to the instanceName organization-specific URL, in which case the sign in type is already selected. The URL must include the organization ID and end in a forward slash, such as {baseURL_vanilla}/orgID/.
* By selecting Enterprise SSO on the main login page. Make sure you provide your organization-specific URL for instanceName to all your users.

Migrated users receive the combined permissions directly assigned to them in instanceName along with those from their Azure AD groups.

To set up Studio and Assistant to connect with Azure AD accounts:

1. In Assistant, open Preferences and select the Orchestrator Connection tab.
2. Select Sign Out .
3. For the connection type, select Service URL .
4. In the Service URL field, add the organization-specific URL The URL must include the organization ID and end in a forward slash, such as {baseURL_vanilla}/orgID/. Otherwise the connection fails saying that the user does not belong to any organization.
5. Sign back in with the Azure AD account.

Permissions from Azure AD groups don't influence the automations from classic folders or the robots that are connected using the machine key. To operate under group-based permissions, configure the automations in modern folders and use the Service URL option to connect to UiPath Assistant or Studio.


### Discontinue use of UiPath local accounts (optional)

We recommend that you remove the use of local accounts to maximize the core compliance and efficiency benefits of the complete integration between instanceName and Azure AD.

Only remove non-administrator accounts. It is recommended to retain at least one organization administrator local account to be able to change authentication settings in the future.

After all users have been migrated, you can remove the non-admin users from the Users tab, so that your users won't be able to sign in using their local account anymore. You can find these accounts based on their user icons.

You can also clean up individual permissions in the UiPath services, such as the Orchestrator service, and remove individual users from groups so that permissions rely exclusively on Azure AD group membership.

# Exceptions

If you decide to discontinue use of local accounts, keep in mind that if you have processes in place that rely on API key authentication (Admin > Tenants page) to make API calls to a service, you need a local account because the button is not available when logged in with an Azure AD account.

Support for API Key authentication will end March 2025. We recommend you switch to using OAuth or personal access tokens for authorization, in which case the information from API Access is no longer required.


## Advanced features

The following section describes a few useful pointers for advanced features you can leverage now that you have the Azure AD integration set up.

Restrict access to your organization

Because the integration with Azure AD is performed at the level of the Azure tenant, by default all Azure AD users can access instanceName. The first time an Azure AD user signs in to their UiPath organizaton, they are automatically included in the UiPath group Everyone, which grants them the User role in the organization which provides the basic level of access within the UiPath ecosystem.

If you want to only allow certain users to access your organization, you can activate user assignment for the UiPath app registration in Azure. This way, users need to be explicitly assigned to the app to be able to access it. For instructions, refer to how to restrict your app to a set of users in Microsoft's Azure AD documentation.

Restrict access to trusted networks or devices

If you want to only allow your users to access instanceName from a trusted network or a trusted device, you can use the Azure AD Conditional Access feature.

Governance for groups in Azure AD

If you have created groups in Azure AD for easy UiPath onboarding directly from Azure AD, as described earlier in Configure groups for permissions and robots, you can use the advanced security options of privileged identity management (PIM) for these groups to govern access requests for UiPath groups. For details, refer to the Microsoft documentation on PIM.


## FAQs

What changes for my users after the integration is active?

Users can immediately sign in using their existing Azure AD account and benefit from the same permissions they had on their local account.

If you have not removed their local accounts, users can also continue to sign in with their local account, both methods work.

To use their Azure AD account, they must navigate to your organization-specific URL, which is of the form{baseURL_vanilla}/orgID/, or select Enterprise SSO on the main login page.

Another change users might notice is that if they are already signed in to their Azure AD accounts from using another application, they are automatically signed in when they navigate to this URL.

What roles does each account have?

Azure AD account: When a user signs in with their Azure AD account, they immediately benefit from all the roles they had on their local account, plus any roles assigned within UiPath to the Azure AD account or to the Azure AD groups to which they belong. These roles can come from the Azure AD user or the Azure AD group being included in groups, or from other services where roles were assigned to the Azure AD user or Azure AD group.

Local account: With the Azure AD integration active, for local accounts, it depends:

* If the user hasn't signed in at least once with their Azure AD account, they have only the roles of the local account.
* If users login using their Azure AD account, the local account has all roles that the AAD user has within UiPath, either explicitly assigned, or inherited from group memberships.

Do I need to re-apply permissions for the Azure AD accounts?

No. Because matching accounts are automatically linked, their existing permissions apply when logged in with the Azure AD account as well. However, if you decide to discontinue use of local accounts, make sure the appropriate permissions have been set for users and groups from Azure AD beforehand.

