# Release notes


## April 7, 2025

# Bug fixes

Triggers failed to retrieve events when the Project name and Issue
                            type fields contained special characters.


## v6.1.2

Release date: February 18, 2025

# Untitled Section


## February 28, 2025

# Bug fixes

* Triggers were intermittently failing when the Issue type name contained a space.


## February 14, 2025

# Removing deprecated object parameters

We removed some parameters from various object types. The impacted parameters have
                been deprecated by Jira.


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## September 3, 2024

# HTTP Request activity

A new HTTP Request activity is now available, allowing you to go beyond the
                predefined activities in a given package and make requests to any endpoint of a
                vendor's API.

HTTP Request reuses the connector pre-configuration and provides transparency
                of headers, authentication, and query parameters. You can reuse any of your
                connections, and provide the endpoint and the JSON payload. Use this
                connector-specific HTTP Request activity to benefit from Integration
                Service's capabilities for connection management.

To learn more, refer to the  page.


## August 26, 2024

The updates originally announced on August 12, 2024 are now available.


## August 12, 2024

Erratum - Added August 14, 2024The latest version of Jira activities did not make it into the current release, as initially announced. We are rolling back to version 6.1.0 while we work on fixing some issues. We will let you know as soon as the announced updates are available.

# New features

This activity package is now always displayed in Studio, in the Activities panel, in the Available section. To install any activity, drag and drop it into the canvas (in Studio Desktop) or add it to your workflow (in Studio Web).

You don't have to manually update the package. As part of UiPath Automation Cloud™, the activity package gets updated automatically.

This activity package can be used with UiPath Studio versions 2023.10 and newer.

This release includes general updates regarding design time look-ups and enumerable options, as well as some changes in property display names and descriptions.

The activities featuring either a Project or Issue key or ID field now have a modern look-up experience for searching all properties.

The Update Issue and Get Issue activities have been enhanced for a better user experience.

This release also includes minor bug fixes.

The Search Issues activity has been renamed to Search issues by JQL.

# New activities

This release includes four new activities:

* Download Issue Attachment, to download attachments from a particular Jira issue.
* Get Instance Details, to retrieve your Jira site’s URL and other instance details.
* HTTP Request, to invoke a Jira API directly from Studio or Studio Web.
* Replace Record, to replace any record in Jira.

# New triggers

Two new triggers are available. Issue Created and Issue Updated allow you to start an automation when an issue is created or updated in a specific project and when the issue is of a particular type.

Additionally, the trigger outputs now support entire objects in the response.

# Deprecated activities

* We have deprecated the Invoke Operation activity. You can achieve the same results using the advanced Record activities (Insert Record, Get Record, Delete Record, Replace Record, or List All Record).
* The Upsert Record activity is no longer included in the package. Use the new Replace Record activity instead.
* The generic Event Trigger activity has been replaced by the four new triggers.
* The Delete Issue activity has also been deprecated. You can use Delete Record instead.

These activities remain available in version 6.1.0 of the activity package, which is still under support for bug fixes.


## v6.1.0

Release date: June 9, 2023

# New features and Improvements

This activity pack has gone through multiple user experience improvements, tooltips have been improved and several property field names have been adapted to make your automation journey even easier.


## v6.0.2

Release Date: April 11, 2023

# New Features and Improvements

Starting with this version of the package, Windows - Legacy projects are no longer supported. Instead, you can use the activity package for Windows or Cross-platform projects.

The activity package supports the .NET6 framework to provide compatibility with modern Windows UiPath Studio projects.

The minimum Studio version required for this activity pack is v2022.10.

The activity package has gone scopeless, which means you no longer have to drag and drop an activity inside the Jira Scope activity to configure a connection. You can simply add your activity into the workflow and configure the connection within each activity using the Connection field.

The following new activities are available in the package: Add Issue Attachment, Add Comment, Get Comments, Update Issue Assignee, Update Issue Status.

An Event Trigger activity is also available, allowing you to launch workflows when a record (an issue) is created or updated.

The Upsert Issue, Search Issue Using JQL, and Delete Issue activities have been deprecated. Instead, you can use the newer versions of these activities, Update Issue and Search Issues, or Delete Record (with Issues object).

This release also includes multiple bug fixes.

# Breaking Changes

This is a major update from the last version. Upgrading to this version is likely to cause breaking changes in already existing workflows, due to removing support for Window - Legacy projects. For more details, please contact our support team.


## v3.0.0

Release Date: December 20, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. These activities allow you to execute create, retrieve, update, and delete operations on Jira objects.

Find out more about the UiPath Integration Service here.

