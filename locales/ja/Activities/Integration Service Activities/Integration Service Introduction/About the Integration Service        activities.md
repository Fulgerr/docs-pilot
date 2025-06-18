# About the Integration Service
        activities

The Integration Service activities are designed to use the connectors provided by Integration Service to create connections with third-party
            applications and enable automating them easily. This allows a faster integration into
            Software as a Service (SaaS) platforms.

We support a wide range of third-party applications, and the list keeps growing. This
            guide contains all of the activities created by UiPath®
            for use with Integration Service exclusively. Activities that use both Integration
            Service and Scope-based connections are documented separately in the Productivity Activities guide (for example, Microsoft
            OneDrive, Outlook, or Google activities) and IT Automation Activities guide (for example, Amazon
            WebServices, Azure, or VMWare).

## Working with Integration Service
        activities

# Studio Web

In Studio Web, the latest activities are available by default
                in the activity browser. For more information, see Adding activities to a project in the
                Studio Web user guide.

You can also use any available triggers to start your automation. For details, see
                    How to start an automation.

# Studio 2025.0.161

Starting with Studio 2025.0.161, Integration Service
                connectors are listed directly in the Manage Packages window. This makes it
                easier to add a connector and its activities to a project. For details, see Managing Connectors in the Studio user
                guide.

# Studio Desktop version 2023.10 or higher

Starting with Studio Desktop
                version 2023.10, Integration Service activities are delivered through the unified
                    UiPath.IntegrationService.Activities package.

All Integration Service activities and triggers are listed in Studio, in the
                    Activities panel, in the Available section.

Make sure you enable the Available filter in the
                    Activities panel.

How to enable to Available filter in the Activities panelAvailable Integration Service activities in StudioWhen you add any activity from the Available list to your workflow, the
                    UiPath.IntegrationService.Activities package is automatically
                installed as a project dependency. This gives you access to any connector from
                Integration Service, including your custom connectors. Project dependencies in Studio includes the unified
                            UiPath.IntegrationService.Activities package

UiPath.IntegrationService.Activities is a dynamic
                activity package, which means you don't have to manually update it. The activity
                package gets updated automatically. You always have access to the newest connectors,
                triggers, and activities, as well as the latest version of activities you are
                already using.

To learn more, see .



# Studio version 2023.4 or lower

If you are using Studio 2023.4 or lower,
                use Package Manager to download individual activity packages for specific
                connectors. For details, see Managing activity packages in the Studio
                Desktop user guide.

Each Integration Service connector has a corresponding package available as
                    UiPath.[ConnectorName].IntegrationService.Activities. For
                example, UiPath.Jira.IntegrationService.Activities.

To benefit from the latest updates we
                    bring to Integration Service connectors and activities, we recommend you upgrade
                    to Studio 2023.10 or higher.


## Project compatibility

All activities delivered through the unified
                UiPath.IntegrationService.Activities package are Windows and
            Cross-platform compatible.



Standalone versions of Integration Service activity packages may also be Windows - Legacy
            compatible. Check individual package documentation to see the specific project
            compatibility.


## Limitations

This section describes platform-level limits and other limitations that impact all
            Integration Service connectors and/or activities.

# Data processing limits

Integration Service has a platform limit for retrieving responses. The maximum limit
                for data processing is 8 MB. This means that, for some API calls, the number of
                responses retrieved can exceed the 8 MB limit and throw the following error message:
                "Response content too large".

The 8 MB limit applies to data in JSON format. This
                    includes cases where files are sent or received in a Base64 format as part of
                    the JSON data. For files handled outside of JSON, the limit is 1 GB.

Workaround

You can take the following steps to ensure the data processing limit is not
                exceeded:

Adjust the Max records field at activity level to a lower
                        number.Add filtering to your queries. Providing filter parameters can limit the
                        number of responses.

