# Frequently asked questions

This page helps answer the most frequent questions regarding the unified
                                UiPath.IntegrationService.Activities package.

# Are there any
                                prerequisites needed for using
                                        UiPath.IntegrationService.Activities?

To
                                use the unified
                                        UiPath.IntegrationService.Activities
                                package, you must:

Install
                                                Studio Desktop version 2023.10 or newer. Studio Web
                                                uses
                                                  UiPath.IntegrationService.Activities
                                                by default.Connect
                                                Studio to a UiPath Automation Cloud instance with
                                                Integration Service enabled.Enable
                                                access to the Studio official package feed.
                                                Additionally, you can enable access to preview
                                                activities, if you want to use the newest
                                                activities.

# What are the benefits
                                of using
                                UiPath.IntegrationService.Activities?

Integration
                                Service connectors are available in Automation Cloud and they
                                receive updates on a regular basis. The fast pace of a Cloud product
                                can quickly make a traditional activity package obsolete.
                                        UiPath.IntegrationService.Activities solves
                                this problem through its auto-upgrade mechanism.

With
                                        UiPath.IntegrationService.Activities you
                                get:

* Automatic and effortless upgrades for the existing activities to the latest connector version when opening a workflow.
* Quick and default access to new activities, without an upgrade. The activities listed in the Available section are not dependent on a NuGet package. They are derived automatically from the live connector catalog in Integration Service.
* Delivery of new features and bug fixes for all connectors at the same time. There is no need to upgrade separate packages, because a single package upgrade applies to all connectors and their activities.

# Can I use
                                        UiPath.IntegrationService.Activities in my
                                project alongside other individual Integration Service activity
                                packages?

Yes, you can use activities included in
                                        UiPath.IntegrationService.Activities
                                alongside individual Integration Service activities, from the
                                versioned activity packages, as well as Classic Integrations
                                activities (as long as project compatibility allows
                                it).

However, UiPath is no longer delivering new features or
                                improvements for older packages. These packages are now in the
                                maintenance phase. All new features are delivered through
                                        UiPath.IntegrationService.Activities.

# If I built a project
                                in an older version of Studio using individual Integration Service
                                activity packages, can I run that project with Studio 2023.10?

Yes.

# Can I automatically
                                convert or migrate individual Integration Service activities to the
                                activities within
                                        UiPath.IntegrationService.Activities?

If
                                you have a project using individual Integration Service activity
                                packages, you cannot automatically convert them to their
                                correspondent in
                                        UiPath.IntegrationService.Activities. You
                                must rebuild your project using
                                        UiPath.IntegrationService.Activities and
                                configure the activities again.

# How do I upgrade the
                                        UiPath.IntegrationService.Activities?

The
                                automatic upgrade of
                                        UiPath.IntegrationService.Activities can
                                occur either with a package upgrade or a connector
                                upgrade.

Package upgrade

When a new version of
                                        UiPath.IntegrationService.Activities is
                                published, all the Integration Service connectors refer to this
                                latest version:

In Studio
                                                Web, all the packages in a project are automatically
                                                upgraded to the latest version when you open a
                                                project. This feature is enabled by default through
                                                a governance policy. Learn more Settings for Studio
                                                  Web Policies in the Automation Ops User
                                                Guide. If you disable this feature on your tenant,
                                                the behavior replicates in Studio Desktop.In Studio
                                                Desktop, when you add an activity from a connector
                                                that refers to a
                                                  UiPath.IntegrationService.Activities
                                                version newer than what is currently installed in
                                                the project, the latest version is automatically
                                                installed.

Connector upgrade

When a new connector version is
                                published and you open a project using activities from a previous
                                connector version, the activities automatically retrieve the latest
                                connector metadata and are updated accordingly. This can bring any
                                of the following changes: differences in property names, different
                                properties order on the canvas, new properties or removal of
                                properties, new default values, etc.

# What is the Advanced
                                section from the Activity panel? How are advanced activities
                                different from the others?

Activities listed under the
                                        Advanced list in Studio are so-called "generic"
                                activities, whereas the rest are preconfigured.

The
                                preconfigured activities use a predefined object exposed by the
                                vendor API. They have been created by UiPath based on the observed
                                common usage. They are easier to use because they are already
                                configured. For example, Create Issue in Jira.

The
                                advanced activities allow you to apply any of the CRUD operations
                                (create/read/update/delete) to any available object exposed by the
                                vendor API. For example, to create an issue in Jira, use an
                                        Insert Record activity, select the Issue
                                object, then configure whatever properties you need.

# If I update and
                                publish my custom connector in Integration Service, will the
                                activities using it still work?

Yes, custom activities are also automatically upgraded to the latest version of a connector.
                                Activities corresponding to a custom connector are displayed under
                                the Available section in Studio, under the connector name.
