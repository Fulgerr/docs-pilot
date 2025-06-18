# User license management

User license management is enabled by default for all organizations created after March 1, 2021.In Unified Pricing, user license management is mandatory if you want to view
                        and manage user licenses.

User-based licensing gives a coherent representation between UiPath's commercial model (purchased SKUs) and the licenses available for distribution in an organization. User licenses are managed separately from service/unattended robot licenses and are not tied to a specific tenant - a user is licensed across multiple tenants in the organization.

This model helps you allocate licenses in the organization by providing licenses to a single user or to a group. Using groups lets the administrator allocate a number of licenses to all the members of the group on a first-come-first-served basis, instead of having to assign the licenses one-by-one.

## Enabling user license management

The User License Management is available in your organization's Admin
            section, by accessing the Settings tile, and choosing the Advanced
            tab.

Once you enable this option, all your Attended or Automation Developer licenses are
            automatically deallocated from Orchestrator tenants, and license assignments are
            migrated from Orchestrator to the Licenses page in {Delivery option}.

After enabling User License Management, we recommend that you do not change
                any license assignments in Orchestrator until the migration is finished, as those
                changes may not be migrated. Depending on the number of users and groups license assignments that need to be
                migrated, this process may take a few minutes.


### Orchestrator considerations

User license management automatically sets the Enforce user authentication, disable robot key authentication security setting in Orchestrator. Any users who use robot key authentication can no longer connect their robots to Orchestrator until they switch to interactive authentication. This setting is incompatible with classic folders.If you are now switching to secure authentication, such as Interactive Sign-in SSO, this requires recompiling the workflows that use Orchestrator activities or make direct HTTP calls to the Orchestrator API utilizing 2020.10 activity packages or later.There is a chance job execution will fail if at least one of below dependencies are used in an automation project:UiPath.System.Activities < 20.10.0UiPath.Persistence.Activities < 1.1.7UiPath.DataService.Activities < 20.10.0UiPath.Testing.Activities < 1.2.0Use the Project Dependencies Mass Update Tool in Studio to update process dependencies to versions greater than or equal to those provided above. Test before deploying in production.


### Migrating license assignments from Orchestrator to your organization

These are some common scenarios for migrating user or group license assignments from Orchestrator to the {Delivery option}Licenses page.

When the migration is completed, you must sign in again to Studio or Assistant to acquire the license.

Once a user signs in, you can view their last login date by checking the Last in use column in the License allocation to users or License allocation to groups sections of the {Delivery option}Licenses page.

# Scenario 1

Context

You have:permissions in multiple Orchestrator tenants within the same {Delivery option} organization.different licenses assigned in different Orchestrator tenants, either explicitly or as part of a user group.

Result

After migration, you are assigned a single license, namely the one that was explicitly assigned to you, not the one that you received via the group.

# Scenario 2

Context

You have:permissions in multiple Orchestrator tenants within the same {Delivery option} organization.different licenses assigned in different Orchestrator tenants, only as part of user groups.

Result

After migration, you are assigned the most powerful group license, but you have no explicitly assigned licenses.

# Scenario 3

ContextYou are part of multiple tenants within the same {Delivery option} organization.You have different licenses assigned in different Orchestrator tenants, either explicitly or as part of a user group.In one of the tenants, you have an explicit license assigned, with the External license option enabled.

Result

After migration, the External license option gets priority, so it is enabled in the {Delivery option}Licenses page.


### Separating licenses between Orchestrator tenants

A user license is meant to be used by a single user anywhere within the organization.

With User License Management enabled, an administrator first assigns a license to
            a user or a group, and then gives the user or group permissions in different
            Orchestrator tenants.

Permissions are a granular way of controlling the actions that are available to each
            user. Licenses should by no means be used instead of permissions.

In contrast, without User License Management enabled, the same user would need two
            licenses in two different tenants, thus providing a poorer license management
            experience.

If you are using the legacy model to assign licenses to tenants based on internal
            business units, once you migrate, you need to separate those business units via groups,
            and give those groups permissions to different tenants.


## Assigning user licenses

# Direct assignment

Direct license assignment is recommended in the following cases:

* to gain full control over a limited set of licenses,
* to achieve licensing granularity while keeping access control easy using groups.

A: Say I want to keep access administration easy by providing predefined permissions
        for typical scenarios in my company while assigning particular licenses to a select few
        members.

Example

Mary is a member of the Automation Developers group. There is an allocation rule in place
        for this group, allocating 10 Automation Developer licenses to it. As a member of the
        Automation Developers group, Mary would inherit one Automation Developer license.
        However, as an administrator, I want Mary assigned one of the Citizen Developer
        licenses available in the organization. To keep Mary's access rights intact while giving her
        a more powerful license, I will leave her in the Automation Developers group and directly
        assign a Citizen Developer license.

B: Say I want to control which users in a group get assigned a particular license
        when I have a limited license pool and a much larger number of group members competing for
        them.

Example

There are 5 Test Developer Pro licenses allocated to the Automation Developers group
        consisting of roughly 100 members. To avoid relying on the first-come-first-served
        assignment principle and ensure the right license-user pairing, I will manually assign the
        license to the 5 users I want.

Direct assignment is not
        compatible with group allocation. If you use direct assignment, the user no longer benefits
        from any licenses inherited through group allocation. Other group-inherited settings are not
        affected.

# Group assignment

Group-based licensing is the recommended route for enterprises because license assignment is
        performed automatically through group allocation rules. Assigning licenses at the individual
        user level can make large-scale administration challenging.

To address those challenges, group-based licensing allows you to assign one or more licenses to a
        group. The pool of licenses assigned to the group becomes available to all members of the
        group. Any new members added to the group can make use of those licenses.

Similarly, upon being removed from the group, a user loses the possibility to use such a license.

This eliminates the need for license management on a per-user basis.

Group allocation rules are configured by an administrator. Unlike explicit per-user license
        assignment, group assignment does not consume licenses, but makes the pool of licenses
        available to the group members. Users consume licenses on a first-come-first-served
        principle within the limits of the number of licenses available for the group.

Assigning licenses to a groupMake sure you are signed in to your UiPath organization as an organization
            administrator.In the Admin section of your organization, access the Licenses tile, and
            select the Users tab.Expand the License allocations to groups section.A list of default local groups is displayed. These
              groups already have corresponding licenses assigned to them. You can either add users
              to those groups and keep the default license allocation, or change the license
              assignment of the default groups if needed.

If you are granted access to a service via a
        group-based license, you need to sign it to that service for the license to come into
        effect. Example: You are part of Group A, and you are granted an Automation Developer
          license via that group. The Automation Developer license includes access to Orchestrator.
          To enable this entitlement, you first need to sign in to Orchestrator.

# Examples

Example A: Say I want to keep access administration easy by providing predefined
        permissions for typical scenarios in my company while assigning particular licenses to a
        select few members.

Mary is a member of the Automation Developers group. There is an allocation rule in place
        for this group allocating 10 Automation Developer licenses to it. As a member of the
        Automation Developers group, Mary would inherit one Automation Developer license.
        However, as an administrator, I want Mary assigned one of the Citizen Developer
        licenses available in the organization. To keep Mary's access-rights intact while giving
        them a more powerful license, I will leave her in the Automation Developers group and
        directly assign an Citizen Developer license.

Example B: Say I want to control what users in a group get assigned a particular
        license when I have a limited license pool and a much larger number of group members
        competing for them.

There are 5 Automation Developer licenses allocated to the Automation Developers
        group consisting of roughly 100 members. To avoid relying on the first-come-first-served
        assignment principle and ensure the right license-user pairing, I will manually assign the
        license to the 5 users I want.


## Multiple licenses per user

There can be scenarios in which one user inherits multiple licenses by group memberships. In this case, the user will consume only one of the licenses: the most powerful one. If that license type is not available, the user consumes the second most powerful.

License
                powerThe power of licenses is as follows, from most powerful to least
                powerful:Automation Developer > Citizen Developer > Attended >
                Action Center

Example: John Smith inherits an Automation Developer and Action Center license by group membership. John consumes the Automation Developer license, which is more powerful than the Action Center license.

If a user inherits licenses by group membership and gets one explicitly assigned, the explicitly assigned license takes precedence and overwrites the group license.If an organization administrator explicitly assigns multiple licenses to a user, the user consumes all of them.


## External or partner licenses

Partners that use the same license across multiple customer organizations may request enabling the External License functionality on the customer Organization. This way, partners are able to bring their own license and connect to the customer's Orchestrator services without utilizing from the Customer license pool.

This is only possible for developer SKUs and requires Studio to
            be activated with a standalone license key. Please reach out to our support team or your
            UiPath contact for more details on how to enable this functionality.

To enable an external license, follow these
                steps:At the organization level, on the Licenses page, in the License
                        allocation to users menu, select Allocate licenses.In the Allocate licenses pane that opens, add the desired users, then
                    toggle on Use external license.Once you sign in to Studio, the external license is used.

