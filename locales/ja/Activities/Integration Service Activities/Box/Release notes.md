# Release notes


## v4.0.5

Release date: February 18, 2025

# Untitled Section


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## November 4, 2024

# New activity

The Upload File Version activity, which had been deprecated in a previous version of this package, is available again.


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


## March 11, 2024

# Untitled Section

text="Type the content"

# New activities

We've added new activities to this package: Add Shared Link to File, Add Shared Link to Folder, List Sign Requests, Get Folder Items, and Replace Record.

Additionally, trigger activities are now available. They match some of the events already available in Integration Service for the Box connector: File Trashed, File Updated, Sign Request Event, Folder Created, Folder Updated, Folder Trashed, Record Updated, Record Created, and Record Deleted.

The existing activities have been updated, with some changes in property display names and descriptions.

# Deprecations

The following activities have been deprecated: Get Sign Request, Delete Old Version, Get Versions, Upload File Version, Get Folder Info, Get Folder Items, Update Record, List Records, Upsert Record, Invoke Method. The Scope activity has also been deprecated. This means you no longer have to drag and drop Box activities inside the Scope to configure a connection. You can configure it in each activity using the ConnectionID field.


## v4.0.3

Release date: July 29, 2022

# New Features and Improvements

This release brings four new activities to this pack, thus increasing the overall automation capabilities it offers. The new activities are:

* Cancel Sign Request
* Create Sign Request
* Get Sign Request
* Resend Sign Request

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when creating multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in UiPath Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Box activities package supports .NET6.


## v3.0.0

Release date: November 1, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, and delete operations on Box objects (including standard and custom objects). Find out more about the UiPath Integration service here.

