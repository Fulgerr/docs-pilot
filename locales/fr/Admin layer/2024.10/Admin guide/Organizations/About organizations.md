# About organizations

An organization represents a fully isolated environment, where you can manage all your automation needs and resources. It's essentially your dedicated space within the UiPath platform to operate, customize, and control as per your specific requirements.

In the standalone model, an organization is restricted to having a single tenant. As a result, a one-to-one relationship ensues between an organization and tenant.

Organizations are the highest level of structuring available in UiPath{Delivery option}. Every new signup for {Delivery option} creates an organization. You can sign up as an individual to try out our products, or as a company looking to leverage UiPath capabilities for your needs.

Organizations are identified by:

* Their unique URL: The final part of the URL, orgID in this example, is also known as the Account Logical Name . It is automatically derived from the Company Name you provided during signup, or from the First Name and Last name if a company name was not provided. It is generated with certain limitations, such as no Unicode characters, spaces, and it must be unique.
* The organization name: The same Company Name you provided during signup, or your Last Name if a company name was not provided.
* The organization's support ID : A unique ID is associated with each organization and is used to help identify an organization when working with UiPath - for example, when opening a Support ticket (Enterprise only).
* The organization's support ID : A unique ID is associated with each organization and is used to help identify an organization when working with UiPath - for example, when opening a Support ticket.

The documentation covers several organization options that you can configure to adapt to your specific needs.

1. Authentication and Security: Documentation lays out the various authentication methods and means to ensure platform security.
2. Licensing: Documentation explains the different types of licenses UiPath offers, their usage, and activation processes.
3. Accounts and Roles: Documentation explains how to create and manage roles and users to govern permissions and access to platform features effectively.
4. External Applications: Documentation explains how to integrate third-party applications, including authorizing external applications links, and consuming platform APIs.
5. Notifications: Documentation describes setting preferences for email and in-product notifications. For administrators, it explains how to set up, assign and manage the notification system.
6. Logging: Documentation explains how to use logs effectively for auditing and troubleshooting.
7. Troubleshooting: Documentation offers practical strategies on how to diagnose and resolve common issues.

## Organization Identity Management hub

The organization Identity Management hub displays all the products or components relevant for your organization. Only organization administrators (logged in to the organization as admins) can access organization portals.

In the organization Identity Management hub, you can access organization settings for integrated products. By default, these are:

* Orchestrator: Opens Orchestrator, where you can view and manage your automation resources
                    and other settings. To open Orchestrator, you can also select Back to
                        Orchestrator.
* Management : Open the organization Management portal, where you can manage organization administrators and other organization settings.



To access the organization Identity Management hub, navigate to https://OrchestratorURL/identity, and log in to your organization with your organization administrator credentials.


## Organization Management portal

The Management portal at the organization level is where you can view and manage organization
            administrator accounts, organization authentication settings, organization system email
            settings, and other security settings. Only organization administrators (logged in to
            the organization) can access the organization Management portal.

To access the Management portal at the organization level, navigate to https://OrchestratorURL/identity/management, and log in to your organization. Alternatively, select Management in the organization Identity Management hub.


## Organization admin portal

The Admin area at the organization level is where you can view and manage organization
            administrator accounts, organization authentication settings, organization system email
            settings, and other security settings. Only organization administrators (logged in to
            the organization) can access the organization Admin area.

To access the Admin area, navigate to the Login page at https://AutomationSuiteURL/ and log in to the organization with your organization administrator credentials. Once logged in, navigate to Admin from the left rail.


## Signing in to the administration portals

Navigate to the Login page. The Login page opens.For the Organization name, type host to access the host portals, or the name of your specific organization to access a specific organization portal.If a different organization is already set, select Change next to its name to specify a different organization name:In the Username or email and Password fields, type your administrator credentials.Select Log In and you are redirected to the appropriate portal.

