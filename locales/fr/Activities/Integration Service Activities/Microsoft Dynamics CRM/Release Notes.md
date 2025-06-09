# Release Notes


## v5.0.7

Release date: February 18, 2025

# Untitled Section


## February 28, 2025

# New activities

This release includes for new activities: Download Note Attachment, Upload
                    Note Attachment, Download Activity Attachment, and Upload Activity
                    Attachment.


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## December 2023

This activity pack is now always displayed in the Available section of the
            Activities panel in Studio. Any activity in this package can be installed by simply
            dragging and dropping it into the canvas. Also, a cloud versioning model is used from
            now on for this package, as updates will be done automatically to the activities,
            without the neccesity of manually updating the package by using the Package
                Manager.

Please note that from this version onwards, this activity pack is only compatible with
                Studio v2023.10 and above.


## V5.0.0

Release Date: 20 December 2022

# New Features and Improvements

Starting with version 5.0.0, Windows - Legacy projects are no longer supported. Instead, you can use the activity package for Windows or Cross-platform projects.

This activity pack is only compatible with Studio v22.10 and above.

The activity package has gone scopeless, which means you no longer have to drag and drop an activity inside the Dynamics CRM Scope activity to configure a connection. You can simply add your activity to the workflow and configure the connection using the ConnectionId field.

The following new activities are available in the package:

* Create Account
* Update Account
* Create Contact
* Update Contact
* Create Lead
* Update Lead
* Create Opportunity
* Close Lost Opportunity
* Close Won Opportunity
* When an event happens


## V4.0.1

Release Date: 27 June 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Microsoft Dynamics CRM activities package has been upgraded to .NET6.

Implemented telemetry changes.


## V3.0.0

Release Date: 1 November 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute operations such as insert, update, get, delete and search on Microsoft Dynamics entities (including Standard and Custom entities). Find out more about the UiPath Integration service here.

