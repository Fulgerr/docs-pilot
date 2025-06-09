# Release Notes


## v6.1.2

Release date: February 18, 2025

# Untitled Section


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


### New activity

The Get Report activity is now available for Salesforce.


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

# New
                activities

This release brings several new activities: Create Bulk
                    Upload Job, Starts or Aborts Bulk Job, Download SOQL Bulk Job
                    Results, Download Unprocessed Records of Bulk Upload, Create Bulk
                    Download Job using SOQL, and Get Object Fields.


## July 29, 2024

# New activities

This release includes a new activity: Get Bulk Job Info.

# New features

The List All Records and Search Records activities now include a
                    Where field, which allows you to use the Filter builder. This
                field is available for all supported objects.


## February 12, 2024

# New features and improvements





# New activities

A Download File activity has been added to the package.

The generic Event trigger trigger has been replaced by new trigger activities: Account created, Contact created, Lead created, Opportunity closed and won, Opportunity created.


## v6.1.0

Release date: June 9, 2023

# New features and Improvements

This activity pack has gone through multiple user experience improvements, tooltips have been improved and several property field names have been adapted to make your automation journey even easier.


## v6.0.6

Release Date: April 6, 2023

# New Features and Improvements

This release brings the following new activities: Get Account, Get Contact, Get Lead, Add File to Record, Get Document from File Version, Upload File, Search Records.

The When an event happens trigger activity was renamed to Event Trigger.


## V5.0.0

Release Date: December 20, 2022

# New Features and Improvements

Starting with version 5.0.0, Windows - Legacy projects are no longer supported. This means you can no longer find the Salesforce activities pack in the Official Feed. Instead, you can use the activity package for Windows or Cross-platform projects. Also, for Studio v2021.10.5 and lower, for any project type, the Salesforce activities pack can no longer be found in the Official feed.

The minimum Studio version required for this activity pack is v2022.10.

The activity package has gone scopeless, which means you no longer have to drag and drop an activity inside the Salesforce Scope activity to configure a connection. You can simply add your activity to the workflow and configure the connection using the ConnectionId field.

The following new activities are available in the package:

* Create Account
* Update Account
* Create Contact
* Update Contact
* Create Lead
* Update Lead
* Create Opportunity
* When an event happens

This activity pack is only compatible with Studio v22.10 and above.


## V4.0.2

Release Date: June 27, 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Salesforce activities package has been upgraded to .NET6.

Implemented telemetry changes.


## V3.0.1

Release Date: March 22, 2022

# Improvements

Updated the category tree from the Activities panel in Studio.


## V3.0.0

Release Date: November 1, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, and delete operations on Salesforce objects (including standard and custom objects). Find out more about the UiPath Integration service here.

Versions of the Salesforce Activities Pack that do not support the Integration Service remain available for download. You can access their documentation here.

