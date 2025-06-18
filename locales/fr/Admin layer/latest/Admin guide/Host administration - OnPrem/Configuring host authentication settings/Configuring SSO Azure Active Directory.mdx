# Configuring SSO: Azure Active Directory

This page describes how to enable the Azure Active Directory (Azure AD) integration at the host level so that all users of Orchestrator can benefit from SSO.

Host-level versus organization-level integrationIf you enable the Azure AD integration at the host level, as described on this page, you cannot enable it at the organization/tenant level.The integration at the host level only enables SSO. But if enabled at the organization/tenant level, the integration allows for SSO, but also for directory search and automatic user provisioning.

### Prerequisites

To set up the Azure AD integration, you need:

* admin permissions in both Orchestrator and Azure AD (if you don't have admin permissions in Azure, collaborate with an Azure administrator to complete the setup process);
* an organization administrator UiPath account that uses the same email address as an Azure AD user; the Azure AD user does not require admin permissions in Azure;
* UiPath Studio and Assistant version 2020.10.3 or later;
* UiPath Studio and Assistant to use the recommended deployment .
* if you previously used local user accounts, make sure that all your Azure AD users have the email address in the Mail field; having the email address in the User Principle Name (UPN) field alone is not enough. The Azure AD integration links directory user accounts with the local user accounts if the email addresses match. This allows users to retain permissions when they transition from signing in with their local user account to the Azure AD directory user account.


### Step 1. Create an Azure AD App Registration

The following steps are a broad description of a sample configuration. For more detailed instructions, refer to the Microsoft documentation for configuring Azure AD as an authentication provider.

Log in to the Azure portal as an administrator. Go to App Registrations, and select New Registration.In the Register an application page, fill in the Name field with a name for your Orchestrator instance.In the Supported account types section, select Accounts in this organizational directory only.Set the Redirect URI by selecting Web from the drop-down list and filling in the URL of your Orchestrator instance, plus the suffix /identity/azure-signin-oidc. For example, https://baseURL/identity/azure-signin-oidc.At the bottom, select the ID tokens checkbox.Select Register to create the app registration for Orchestrator.Save the Application (Client) ID to use it later.


### Step 2. Configure Azure AD SSO

Log in to the Management portal as a system administrator.Select Security.Select Configure under Azure AD SSO.If you want to only allow logging in to Orchestrator using Azure AD, select the Force automatic login using this provider checkbox. Fill in the Display Name field with the label you want to use for the AzureAD button on the Login page. In the Client ID field, paste the value of the Application (Client) ID obtained from the Azure portal. (Optional) In the Client Secret field, paste the value obtained from the Azure portal. Set the Authority parameter to one of the following values:https://login.microsoftonline.com/<tenant>, where <tenant> is the tenant ID of the Azure AD tenant or a domain associated with this Azure AD tenant. Used only to sign in users of a specific organization. https://login.microsoftonline.com/common. Used to sign in users with work and school accounts or personal Microsoft accounts. (Optional) In the Logout URL, paste the value obtained from the Azure portal. Select Save to save the changes to the external identity provider settings.The page closes and you return to the Security Settings page.Select the toggle to the left of SAML SSO to enable the integration.Restart the IIS site. This is required after making any changes to External Providers.


### Step 3. Allow Azure AD SSO for the Organization

Now that Orchestrator is integrated with Azure AD Sign-In, user accounts that have a valid Azure AD email address can use the Azure AD SSO option on the Login page to sign in to Orchestrator.Each administrator must do this for their organization/tenant if they want to allow login with Azure AD SSO.

Log in to Orchestrator as an administrator.  Add local user accounts for your users, each with a valid Azure AD email address.

