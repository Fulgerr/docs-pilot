# Creating or deleting organizations

An organization is the highest hierarchical level after the host. Settings and resources for an organization are shared across the tenants and services within that organization, but remain separate and isolated from other organizations, even those that belong to the same host.

In the standalone model, an organization is restricted to having a single tenant. As a result, a one-to-one relationship ensues between an organization and tenant. When you get started, your first tenant/organization, called Default, is automatically created.

Each organization is managed by a distinct administrator user, called an organization administrator. This user has the highest level of privileges, has access to all functional areas at the organization level, and can perform all administrative actions strictly within and related to their organization.

# Do I need a new organization or a new tenant?

Tenants allow you to create separation between multiple versions of the same service (or even to provision different combinations of services between tenants), keeping resources such as packages, roles, and available licenses separate. Tenants within the same organization share the same accounts, license pool (distributed from the organization level), and organization settings.

Creating different organizations allows you to create strict separation between one another: different URL, different license pools, different accounts and roles, and different resources. One organization is unaware of and unrelated to another.

## Creating organizations

As a system administrator, you can create new organizations from the host portal. To create a new organization take the following steps:

Log in to the host portal as a system administrator. In the pane on the left, select the plus symbol to create a new organization.Fill in the Organization Name field.The name is used to generate an organization-specific site URL which can be used to access Automation Suite. The organization administrator can later edit this name, but it results in a change to the URL as well.Fill in the rest of the fields with the required details to create the organization administrator account.Depending on your Authentication Settings (Host > Users), the user might need to reset the password on first login.Note the email address (or username) and the password you set for the organization administrator. You must provide this information to the organization administrator and you cannot recover it.Select Save to create the organization.The organization is now listed on the Organizations page.If email settings are configured in Global Settings, the new organization administrator also receives and email message at the provided email address, which requires that they confirm their email address.If you want to use host licensing, allocate licenses to the new organization.Otherwise, if the organization should supply their own license at the organization level, skip this step.Provide the organization name and credentials you set to the organization administrator so that they can log in and configure the organization.If you forgot to note this information, you must delete the organization and then recreate it.


## Deleting an organization

If you delete an organization:all data related to that organization is removed the organization-specific URL is no longer reachable any host licenses that were allocated to the organization return to the host license pool. To delete an organization:

Log in to the host portal as a system administrator. Select the organization in the pane on the left.Optionally select the magnifying glass icon to the right of the Organizations heading and type to filter the list.Select Settings.The Settings page for the selected organization opens.Under Delete organization, select Delete.The Delete Organization confirmation dialog opens.Type the name of the organization, exactly as it appears, and then select Delete.A confirmation tooltip appears in the top right of the window informing you that the deletion is in progress.

It may take a few moments to delete the organization, after which it is removed from the list of organizations on the Organizations page.All licenses that were previously allocated to the organization are returned to the host-level pool of licenses.

