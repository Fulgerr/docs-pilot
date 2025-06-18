# ROPC (not recommended)

We support authentication through (Resource Owner Password Credentials) ROPC for backwards compatibility for Orchestrator instances that have been migrated from standalone to Automation Suite deployments.Only host administrators should authenticate using the /api/account/authenticate/ endpoint.Business users should authenticate using external applications.

To retrieve the access token, make a POST request to the /api/account/authenticate endpoint with the following payload:

{
    "TenancyName": "{account_tenant_name}",
    "UsernameOrEmailAddress": "{account_username}",
    "Password": "{account_password}"
}

Where:

* {account_tenant_name} - is the name of the tenant in your Automation Suite account
* {account_username} - is the username of your Automation Suite account
* {account_password} - is the password used to log in to your Automation Suite account

To find the TenancyName value of your Orchestrator instance, make a GET request to the /odata/Users/UiPath.Server.Configuration.OData.GetCurrentUser.

The response body returns the bearer token, used by your application to authorize further API calls. Therefore, in the Authorization header of an API call, append Bearer xxxx and replace xxxx with the {access_token} value (for example, Authorization: Bearer eyJhbG ... LnVxjA).

{
    "result": "{access_token}",
    "targetUrl": null,
    "success": true,
    "error": null,
    "unAuthorizedRequest": false,
    "__abp": true
}

By default, the access token is valid for 30 minutes. To generate a new one, make another call to the api/account/authenticate endpoint.If your Automation Suite organization uses the Azure Active Directory model, you must register external applications in Automation Suite and use external apps.
