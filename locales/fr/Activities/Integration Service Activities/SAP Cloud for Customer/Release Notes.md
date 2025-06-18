# Release Notes


## v4.0.3

Release date: February 18, 2025

# Untitled Section


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## September 9, 2024

# Untitled Section

text="Type the content"

# Untitled Section

This release also includes some updates to support the latest features available in Studio Desktop and Studio Web.

A new version of the SAP Cloud for Customer connector is generally available. SAP
          Cloud for Customer (Legacy) is still present in the connector catalog, but it doesn't
          support all objects or events. To get the latest updates and support for all objects and
          events, set up a connection to the new SAP Cloud for Customer connector.

# New activities

This release includes several new activities: Create and Update Account, Create and Update Contact, Create Company Lead, Create Individual Lead, and Update Lead.

# New triggers

We also added two trigger activities: Record Created and Record Updated.

# Deprecated activities

The Scope activity has been deprecated. You no longer need to use activities inside Cloud for Customer Scope to configure a connection. You can simply add your activity to the workflow and configure the connection using the Connection field.

List Records has also been deprecated. You can use List All Records instead.


## V4.0.1

Release Date: June 27, 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The SAP Cloud for Customer activities package has been upgraded to .NET6.

Implemented telemetry changes.


## V3.0.0

Release Date: November 1, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, and delete operations on objects (including standard and custom objects). Find out more about the UiPath Integration service here.

