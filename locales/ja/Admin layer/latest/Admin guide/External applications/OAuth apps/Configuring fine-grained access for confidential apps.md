# Configuring fine-grained access for confidential apps

As an administrator, you can configure fine-grained tenant or folder permissions for confidential apps, by assigning them to folders or tenants in Orchestrator. An external app gets the permissions required to perform particular operations in a folder or tenant through one or more roles.

An app gets the union of all organization and tenant scopes defined for it.

For example, Finance and HR are the two tenants in your organization. Your external app has the OR.Machines.Read scope at the organization level, and View permissions on Folders in the Finance tenant, and nothing defined for the HR tenant in Orchestrator. The following table offers an overview of your app's scope and what it can access:


| Tenant | Scope |
| --- ---| HR | OR.Machines.Read |
| Finance | OR.Machines.ReadOR.Folders.Read |

External apps need to be assigned directly to a specific tenant and folder, instead of using group assignments.

### Adding external apps to a tenant

To grant access to a tenant for an external app or a group of external apps, follow these steps in Orchestrator:

Go to Tenant > Manage Access. The Manage Access page is displayed.Select Assign roles > External app. The Assign roles to an external app window is displayed.In the Search for an external app drop-down, search for the object you want to add.Under Roles, select the role(s) for this object.Select Assign.


### Assigning external apps to a folder

To grant access to a folder for an external app or a group of external apps, follow these steps in Orchestrator:

Go to Tenant > Folders. The Folders page is displayed.From the Folders page, in the Manage Folders pane, select the folder you want to manage. The folder and its contents are displayed on the right-hand dashboard.Select Assign accounts/group/external app. The Assign account/group/external app window is displayed.In the Account, group, or external app drop-down, search for the object you want to add.Under The Roles for the account/group, select the role(s) for this object.Select Assign. The selected object is now in the folder and can access it according to its role.


### Removing Assignments




### Checking external apps assignments

To view all the assignments of an external app or external app group in a tenant, follow these steps in Orchestrator:

Go to Tenant > Manage Access in the tenant where you want to check the app assignments. The Manage Access page is displayed.Select More Actions > Check roles and permissions for the object you want to check assignments for. The Check Roles window is displayed showing a list of all the roles for the object at the tenant and folder levels.

