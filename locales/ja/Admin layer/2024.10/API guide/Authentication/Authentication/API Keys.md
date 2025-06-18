# API Keys

You use API keys to establish a connection between the UiPath® platform and other applications that are external to it. External applications can be either UiPath desktop applications, or third-party applications.

API keys are available for several UiPath services (products).

Support for API Key authentication will end March 2025. We recommend using External Applications or Personal Access Tokens (PATs) as the primary method of authentication. Learn more about upcoming deprecations.

## Orchestrator




### About API Access

You can view Orchestrator API access information for each of your existing Orchestrator services on the Admin > Tenant > Services page.

This information is required for authenticating to your Orchestrator service in Automation Cloud via API calls.

If you do not have access to the Admin page, which is only available to users who have the organization administrator role, you can get API access information from the Preferences page for your account.

Not applicable for Azure ADIf the authentication settings for your organization are set to use a directory integration, the API Access button is not available and these instructions are not applicable for you.In this case, you must do one of the following:log out of Automation Cloud and then log in with a UiPath® account instead of a directory account, or(recommended) use the OAuth flow instead.


### Viewing API Access Information

You can view the Orchestrator API access information for a service if you have the Organization Administrator role, or if you are assigned to that service.

Navigate to Admin and select the tenant in the panel on the left.Click Services.The Services page opens, listing all existing services for the selected tenant.Click  on the Orchestrator card and select API Access:The API Access window is displayed with the following service-specific information:User Key - allows you to generate unique login keys to be used by APIs or external applications to log in and perform actions on your behalf. This was previously known as your refresh token. Account Logical Name - your organization name (for example myNewOrg).Tenant Name - the tenant's display name. Client ID - specific to the Orchestrator application itself, it is the same for all users and Orchestrator services on a specific platform. For example, all the Orchestrator services on cloud.uipath.com have the same Client ID value. Click the  icon next to each field to copy its value.

You can use the copied information to consume cloud APIs.


### Revoking API Access

Revoking access cancels all previously assigned user keys, thus breaking all applications that rely on previously assigned user keys. A new user key is automatically generated for the selected Orchestrator service.You must share the new user key to all the affected applications.

Navigate to Admin and select the tenant in the panel on the left.Click Services.The Services page opens, listing all existing services for the selected tenant.Click  on the Orchestrator card and select API Access.The API Access window opens.Click Revoke Access.A confirmation window opens.Click Revoke to confirm your action.The value of the service's User Key is revoked and the Refresh Tokens Revoked window is displayed.Close the Refresh Tokens Revoked window.Copy and share the new key with users who need it.


## Document Understanding

The API key for Document Understanding is available on the AdminLicensesConsumablesAI units page:

![AI Units API Key=GUID-F3D9F1DA-E27A-469F-8914-37D39C2A81BB=1=en=Default](/images/AI Units API Key=GUID-F3D9F1DA-E27A-469F-8914-37D39C2A81BB=1=en=Default.png)

From here, you can:

* Copy the key for use in external applications.
* Click the refresh icon to generate a new
                    key. Generating a new key renders the old key invalid. Any external applications
                    that used the old key cannot connect to Automation Cloud any more.

For more information, see API Key in
            the Document Understanding documentation.


## Computer Vision

The API key for Computer Vision is available on the Admin > Organization > Licenses > Robots & Services page.

![051514a-CV_APIKey=GUID-24E19B25-8099-43FD-A3DB-B9C1150D12AA=1=en=Default](/images/051514a-CV_APIKey=GUID-24E19B25-8099-43FD-A3DB-B9C1150D12AA=1=en=Default.png)

From here, you can:

* Copy the key for use in external applications.
* Click the Refresh icon to generate a new key. Generating a new key renders the old key invalid. Any external applications that used the old key cannot connect to Automation Cloud anymore.

For more information, see Computer Vision.

