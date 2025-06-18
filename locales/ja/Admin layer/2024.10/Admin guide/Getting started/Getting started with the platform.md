# Getting started with the platform


## Hierarchies and inheritance

The UiPath platform operates on a hierarchy system with different levels, allowing for organized and efficient setting management across multiple companies and departments, as described in the following table:

LayerDescriptionHostThe host level is the top tier in the UiPath platform hierarchy.
                                    This is where system administrators perform configurations for
                                    underlying organizations and create new organizations. Settings
                                    configured at the host level are applicable to all its
                                    organizations. However, these settings can either be overwritten
                                    at each organization level according to its needs or remain
                                    unchanged.OrganizationAn organization typically represents a single company. An
                                    organization admin manages organization settings.An organization can have its
                                    own specific settings or inherit the ones from the host
                                    level.TenantA tenant is a unique and separate division or department within
                                    an organization. Each tenant has its own resources, separated
                                    from other tenants within the organization.In the standalone model, an
                                    organization is restricted to having a single tenant. As a
                                    result, a one-to-one relationship ensues between an organization
                                    and tenant.ServiceServices represent various UiPath web products, such as
                                    Orchestrator, Insights, or Action Center. Each service does a
                                    unique job in the automation process. The services can be
                                    assigned to a tenant for their individual automation needs.FolderFolders are a division under a tenant, and are used as containers
                                    for different resources, such as automations, robots, assets,
                                    and others. Folders provide an efficient way to manage access
                                    rights and help set fine-grained permissions.User accounts, Robot accounts, Groups, and External
                                    appsIdentities used to assign access rights and
                                permissions. User accounts: Individual users with unique access based
                                            on assigned roles and licenses.Robot accounts: Used to run automated processes and have
                                            special permissions based on robot's role and automation
                                            requirements.Groups: Collections of users who share the same access,
                                            permissions, roles, and licenses.External apps: Third-party applications that interact
                                            with UiPath, each with its own permissions

System administrators define settings at the host level that apply to all underlying organizations. However, in case an organization has unique needs, the organization administrator has the flexibility to modify or overwrite these inherited settings. This enables both uniformity and customization within the platform.

The following diagram depicts the hierarchical relationship between the host, organization, tenant, and service:


## User personas

There are two primary user persona categories, administrators and non-administrators, and they encompass distinct roles and responsibilities within the platform. This page is dedicated to illustrating the typical journey taken by both personas when they first start using the platform.

The platform automatically categorizes users into different implicit user personas based on the type of license they possess. These implicit user personas are used to tailor the user experience to their specific needs and responsibilities.

* Admin users - are not mapped based on their licenses but based on their membership in the Administrators user group.
* Non admin users - Non-admin users are mapped based on their licenses.

The following table describes the available user personas and the type of licenses they possess:

User personaLicenseAdministrator - configures organization settings, user access controls, and oversees the efficient operation of the platform.Not mapped based on license, but on their membership in the Administrators user group.RPA developer - designs automations in Studio that meet the organization automating requirements.Automation Developer - Named User and MultiuserProcess Mining Developer -
                                    Named UserCitizen developer - runs automations designed by RPA developers, completes actions, creates quick automations using StudioX.Citizen Developer - Named User and MultiuserBusiness user - runs automations designed by RPA developers, completes actions.Attended - Named User and MultiuserAction Center - Named User and MultiuserAnalyst - identifies processes that can be simplified, digitized, or eliminated, uses metrics to create reports.Process Mining Business User -
                                    Named UserInsights Designer UserTester - tests RPAs and other software within Studio, creates test environments.Tester - Named UserAutopilot Express user - designs and runs attended
                                    automations for individual needs.Autopilot
                                Express

# Admin user journey

Admin users are responsible for configuring and managing the platform settings for their organization. They have the authority to define settings, create tenants, manage licenses, and configure accounts and groups. The following table describes a common journey for admin users during the initial configuration:

AreaStepsSign-up/sign inCreate an account and create your organization.Sign in to access your organization.User interfaceExplore the user interface.PreferencesCustomize your account preferences, such as theme, language, and notifications.Organization settingsConfigure organization-specific settings and preferences:Manage organization settings.Configure authentication settings.TenantsManage tenants to separate different business areas, such as departments, geographical locations, business units, etc.ServicesManage services for each tenant.Access controlSet up user accounts, groups, and permissions for efficient collaboration and access control.You can use preconfigured groups and roles for managing access and permissions. You can also create custom groups and roles.Create accounts, add them to groups to grant permissions, and also allocate user licenses.Manage the accounts and groups for your organization.Manage access.LicensingManage licensing for the entire organization, individual tenants, and users:Allocate robot and service licenses to tenants.Allocate user licenses.

# Non-admin user journey

Non-admin users are focused on using the platform's services to accomplish their tasks. They don't typically have administrative privileges but need to effectively utilize the platform's features.

The following table describes a common journey for non-admin users:

AreaStepsSign-up/sign inSign in to access the platform via SSO.User interfaceExplore the user interface.PreferencesCustomize your account preferences, such as theme, language, and notifications.Services/ProductsAccess and utilize services within the platform according to your role and tasks.To learn more about each product, visit their official product documentation as listed on the Product offering page.


## Administration interfaces

UiPath administration consists of two hierarchical levels, namely, host and organization. Each of these levels is configured via dedicated administration portals.

* Host portal: The host is the first level in the hierarchy. At this level, you can modify
                    shared platform functionality like system administrator accounts, global
                    authentication settings, and global system email settings. Only system
                    administrators can access the host portal. Host settings apply across all the
                    organizations.
* Orchestrator host portal: The Orchestrator portal gives access to Orchestrator host
                    settings. Only system administrators can access the Orchestrator host portal.
                    Host settings apply across all the organizations.
* Organization admin portal: The Admin area at the organization level is where you can view and manage organization administrator accounts, organization authentication settings, organization system email settings, and other security settings. Only organization administrators (logged in to the organization) can access the organization Admin area.

UiPath administration consists of two hierarchical levels, namely, host and organization (equivalent to a tenant). Each of these levels is configured via dedicated administration portals.

Host-level portals: The host is the first level in the
            hierarchy. At this level, there is an Identity Management hub that acts as a viewing
            center for all host components integrated with UiPath Identity Server. Only system
            administrators can access host portals. By default, the host Identity Management hub
            includes two components:

* Orchestrator host portal: The Orchestrator portal gives access to Orchestrator host settings. These are universal settings that apply across all the organizations.
* Management portal: The management portal is where you can modify shared platform
                    functionality like system administrator accounts, global authentication
                    settings, and global system email settings.

Organization-level portals: The organization is the
            second level in the hierarchy. Like the host level, the organization has an Identity
            Management hub, which shows all organization components. Only organization
            administrators can access organization portals. By default, the organization Identity
            Management hub includes two components:

* Orchestrator: From the organization-level Identity Management hub, you can directly open Orchestrator.
* Management portal: The management portal allows the configuration of organization-specific
                    settings, which override the global settings specified at the host level.


### Host Identity Management hub

The host Identity Management hub displays all the apps in your installation that are integrated with Identity Server. Only system administrators (logged in to the host) can access host portals.

In the host Identity Management hub, you can access host settings for integrated products. By default, these are:

* Orchestrator: Opens the Orchestrator host portal, where you can view and manage your tenants and other global Orchestrator settings. To open the Orchestrator host portal, select Back to Orchestrator.
* Management : Open the host Management portal, where you can manage system administrators and other global settings.

To access the host Identity Management hub, navigate to https://OrchestratorURL/identity and log in to the host with your system administrator credentials. Alternatively, select Go to Identity Hub in the Orchestrator host portal.


### Orchestrator host portal

The Orchestrator host portal is where you can view and manage certain settings that apply to all organizations. Only system administrators (logged in to the host) can access host portals.

To access the Orchestrator host portal, navigate to https://OrchestratorURL/host and log in to the host. Alternatively, select
                Orchestrator in the host Identity Management hub.


### Host Management portal

The Management portal at the host level is where you can view and manage system administrator accounts, global authentication settings, and global system email settings. Only system administrators (logged in to the host) can access host portals.

To access the Management portal at the host level, navigate to https://OrchestratorURL/identity/management and log in to the host. Alternatively, select Management in the host Identity Management hub.


### Organization Identity Management hub

The organization Identity Management hub displays all the products or components relevant for your organization. Only organization administrators (logged in to the organization as admins) can access organization portals.

In the organization Identity Management hub, you can access organization settings for integrated products. By default, these are:

* Orchestrator: Opens Orchestrator, where you can view and manage your automation resources
                    and other settings. To open Orchestrator, you can also select Back to
                        Orchestrator.
* Management : Open the organization Management portal, where you can manage organization administrators and other organization settings.



To access the organization Identity Management hub, navigate to https://OrchestratorURL/identity, and log in to your organization with your organization administrator credentials.


### Organization Management portal

The Management portal at the organization level is where you can view and manage organization
            administrator accounts, organization authentication settings, organization system email
            settings, and other security settings. Only organization administrators (logged in to
            the organization) can access the organization Management portal.

To access the Management portal at the organization level, navigate to https://OrchestratorURL/identity/management, and log in to your organization. Alternatively, select Management in the organization Identity Management hub.


### Host portal

The Management portal at the host level is where you can view and manage system administrator
            accounts, global authentication settings, global system email settings, and the login
            page. Only system administrators (logged in to the host) can access host portal.

The settings that you configure from this portal are inherited by all your organizations. Some settings can be overwritten at the organization level.

!['Automation Suite host portal view' image](/images/AS host portal=GUID-8E420975-5A6F-49C9-97BF-9F5FC41CA78C=1=en=Default.png)

To access the host portal, navigate to the Login page at https://AutomationSuiteURL/ , and log in to the host with your system administrator credentials.


### Orchestrator host portal

The Orchestrator host portal is available from within the host portal. It allows system administrators to configure Orchestrator settings at the host level.

Orchestrator host settings are inherited across all organizations and some can be overwritten at the organization level.To access the host portal, navigate to the Login page at https://AutomationSuiteURL/ and log in to the host with your system administrator credentials.


### Organization admin portal

The Admin area at the organization level is where you can view and manage organization
            administrator accounts, organization authentication settings, organization system email
            settings, and other security settings. Only organization administrators (logged in to
            the organization) can access the organization Admin area.

To access the Admin area, navigate to the Login page at https://AutomationSuiteURL/ and log in to the organization with your organization administrator credentials. Once logged in, navigate to Admin from the left rail.


### Signing in to the administration portals

Navigate to the Login page. The Login page opens.For the Organization name, type host to access the host portals, or the name of your specific organization to access a specific organization portal.If a different organization is already set, select Change next to its name to specify a different organization name:In the Username or email and Password fields, type your administrator credentials.Select Log In and you are redirected to the appropriate portal.

