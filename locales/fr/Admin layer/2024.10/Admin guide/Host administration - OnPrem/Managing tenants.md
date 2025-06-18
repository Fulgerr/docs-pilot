# Managing tenants

A tenant is a unique and separate division or department within an organization. Each tenant has its own resources, separated from other tenants. In the standalone model, an organization is restricted to having a single tenant. As a result, a one-to-one relationship ensues between an organization and tenant.

## Creating a Tenant

When creating a tenant, you also define the credentials for the administrator of the tenant.

Log in to the Orchestrator host portal as a system administrator.The Tenants page is displayed.Select Add Tenant.The Provision Tenant dialog opens.Fill in the required fields Tenant Name, Password, and Confirm Password.The username (admin) for the tenant administrator cannot be changed.If you recently changed the password complexity settings, the password you now define may not be validated against the new settings because it takes around one hour for the changes to apply.(Optional) Fill in the First Name, Last Name, and Email Address fields.Select Provision.The tenant and tenant admin are created and the new tenant is displayed on the Tenants page.The tenant administrator is a local user called admin. It is automatically created with the Administrator role when you add a new tenant, with the password and email address you provided in the Provision Tenant dialog.


## Renaming a Tenant

Impact of changing the tenant nameChanging the name of any of your tenants greatly impacts your previous configurations:Robots configured at the tenant level are disconnected. Users must reconnect their robots, entering the new URL.The tenant URL previously bookmarked doesn't work anymore. Send your users the new URL. Mobile Orchestrator users are disconnected. Send them the new tenant URL to connect again.

Log in to the Orchestrator host portal as a system administrator.The Tenants page is displayed.Select More Actions and then select Rename tenant.The Edit Tenant dialog opens.Edit the name in the Tenant Name field.Select Update to apply the change.The tenant name is changed and the new name appears in the Tenants page.


## Disabling or Enabling Tenants

To disable or enable a tenant, select More Actions on the Tenants page, and then select Disable or Enable.

!['Disable or enable a tenant' image](/images/9a7cf65-Disable_Tenant=GUID-5C32338C-FC2D-4DC0-BC2F-E47C341D2920=1=en=Default.png)

To disable or enable multiple tenants, select the checkboxes for the tenants you want to disable or enable, and then select Disable/Enable the selected tenants.

!['Disable or enable multiple tenants' image](/images/6d95baf-DisableSelectedTenants=GUID-2F4CF9C2-B521-4BC5-9A3B-C133131E7C76=1=en=Default.png)


## Enabling or Disabling Features

Until configured differently, all features are enabled by default for all tenants.

Log in to the Orchestrator host portal as a system administrator.The Tenants page is displayed.Select More Actions and then select Enable/Disable features.The Feature Flags window is displayed.Select the checkboxes for the features you want to enable on the tenant, or clear the ones you want to disable. Select Update to apply your changes.

Alternatively, select multiple tenants and select the Enable/Disable Features for Selected Tenants button to change the enabled features for multiple tenants at once.

