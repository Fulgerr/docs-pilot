# Release Notes


## v5.0.7

Release date: February 18, 2025

# Untitled Section


## February 14, 2025

# Bug fixes

The latest release of QuickBooks Online includes minor bug fixes.


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## September 23, 2024

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


## October 30, 2023

# What's New

This activity pack is now always displayed in the Available section of the Activities panel in Studio. Any activity in this package can be installed by simply dragging and dropping it into the canvas. Also, a cloud versioning model is used from now on for this package, as updates will be done automatically to the activities, without the neccesity of manually updating the package by using the Package Manager.

The rendering of values in drop-downs has been improved, making them much more user friendly, as they now come with pre-filtered results and also an option that allows you to directly tupe and search the query you want.

The Event Trigger activity has been added to this activity pack, which means you can now trigger workflows by using it.

The following activities have been deprecated:Delete AttachmentGet CustomerGet VendorGet ItemList All ItemsWe suggest using the Get Record, List All Records, and Delete Record activities to perform the same operations going forward.


## V4.0.2

Release Date: 29 August 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The QuickBooks Online activities package has been upgraded to .NET6.

Implemented telemetry changes.

The Quick Create Customer activity now includes new properties and a look-up feature which allows you to easily retrieve object IDs.

The following activities are no longer included in the package: List all Customers, List Customers, List Records, List All Vendors, List Vendors, List Items.


## V3.5.3

Release Date: 27 April 2022

# New Features and Improvements

This version supports the latest changes on the connector side.


## V3.0.0

Release Date: 20 December 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute delete, retrieve, update, and list operations on Quickbooks Online objects. Find out more about the UiPath Integration service here.

