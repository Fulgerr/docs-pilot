# About tenants

Tenants allow you to model your organization structure, separating your business flows and information just like in real-life organizations. They are containers where you can organize your services and manage them for a group of users. For example, you can create tenants for each of your departments and decide what services you want to enable for each, based on their needs. In each tenant, you can have one instance of each of the cloud services.

## Default tenant

When you get started with an organization, your
            first tenant, called DefaultTenant, is automatically created.


## Multitenancy

You can create multiple tenants for your organization's needs. Multitenancy enables you to isolate data within your organization. This feature facilitates automating different departments from your company and lets you control access to data per department.

If your organization is on the Enterprise or Enterprise Trial licensing plans, you can create multiple tenants for your organization's needs. Multitenancy enables you to isolate data within your organization. This feature facilitates automating different departments from your company and lets you control access to data per department.

Organizations on the Community licensing plan are limited to one tenant.

For organizations that already have multiple Orchestrator services prior to launching the Tenants feature, a tenant is automatically created for each existing Orchestrator service, incorporating that service, with the tenant name inherited from the Orchestrator service.

All the data is stored in the cloud, in a database shared between only your tenants.

Users invited to an organization can only view tenants and services based on their permissions in various services. For more information, refer to Managing tenant and service visibility.


## Orchestrator in your organization

All {Delivery option} tenants contain an Orchestrator service.

While in on-premises Orchestrator, your Orchestrator instance can include several tenants, in {Delivery option} you have one Orchestrator service in each {Delivery option} tenant.

An {Delivery option} tenant is different from an Orchestrator tenant.

The following table describes the differences between an {Delivery option} tenant and an on-premises Orchestrator tenant.


| Tenant in {Delivery option} | Tenant in on-premises Orchestrator |
| --- ---| Is a subdivision of the {Delivery option} organization | Is a subdivision of the Orchestrator instance |
| Includes one Orchestrator service | Is a part of Orchestrator |
| Includes several other cloud services (UiPath products), all within {Delivery option} | Is not in the same medium as your other UiPath products and interacts with them through integrations |

For more information about the differences between on-premises Orchestrator and the Orchestrator service in {Delivery option}, also refer to Orchestrator differences.


## Viewing tenants

Organization administrators can view and manage all of the tenants in their organization.

All existing tenants are displayed on the Admin page, in the panel on the left:

!['Viewing tenants' image](/images/viewing tenants=GUID-5C65B12E-CC40-46E1-A986-8B87B24D729F=1=en=Default.png)


### Tenant statuses

Tenants can be in one of two states:

* Enabled - the tenant is active and can be accessed by users.
* Disabled - the tenant is not active and unavailable to users. Disabled is shown next to the tenant name in the tenants panel:


### Switching tenants

If your organization has multiple tenants and you have access to more than one, you can switch between tenants while on the page of a tenant-specific service. This lets you work with the data that exists within the selected tenant for the various services, which can be different than what is available in other tenants, or your service-level roles can be different between tenants.

To switch the context in which you are working to a different tenant, select the tenant list in the top right and select another tenant:

!['Switching tenants' image](/images/switching tenants=GUID-89980548-18F0-4AD8-8611-098222E70CC3=1=en=Default.png)

The page refreshes and then shows data for the newly selected tenant.

