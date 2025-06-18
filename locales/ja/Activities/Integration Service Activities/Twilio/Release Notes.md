# Release Notes


## v5.0.11

Release date: February 18, 2025

# Untitled Section


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


## v5.0.9

Release Date: September 12, 2023

# New Features and Improvements

The Twilio activities package has been upgraded to work with the new Integration Service, meaning the Scope activity has been deprecated and the activities can now use the connection configured in Integration Service.

The Twilio activities package was upgraded to .NET6 framework to provide compatibility with Cross-platform UiPath Studio projects.

The minimum Studio version required for this activity pack is v2022.10.

The Send WhatsApp Message activity has been added to this activity pack.

Support for several new events has been added to this package.


## V4.0.5

Release Date: 27 June 2022

# Bug Fixes

* Minor bug fixes.


## V4.0.2

Release Date: 3 June 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when creating multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Twilio activities package has been upgraded to .NET6.

Implemented telemetry changes.

Made changes in the description of fields for the Make a call and Send message activities.

The following activities have been renamed:

* Insert Record became Create record
* Upsert Record became Replace record
* Available Local Phone Numbers became List available local numbers
* Available Mobile Phone Numbers became List available mobile phone numbers
* Available Toll Free Phone Numbers became List available toll-free phone numbers


## V3.5.3

Release Date: 27 April 2022

# Improvements

The Url field has been added to input parameters of the Make a Call activity.

The Body parameter for the Send a Message activity is now mandatory.


## V3.0.1

Release Date: 20 December 2021

# What's new

This activity pack is designed to work together with the new Integration Service. These activities allow you to execute create, retrieve, update, delete and invoke operations on Twilio objects.

Find out more about the UiPath Integration service here.

