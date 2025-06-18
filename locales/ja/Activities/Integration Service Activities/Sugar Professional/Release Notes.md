# Release Notes

To learn what has changed, check out the release notes.

## v4.0.3

Release date: February 18, 2025

# Untitled Section


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## October 7, 2024

Erratum – Added December 3, 2024: The HTTP Request activity was
            mistakenly announced before it was made available.

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


## December 2023

This activity pack is now always displayed in the Available section of the
            Activities panel in Studio. Any activity in this package can be installed by simply
            dragging and dropping it into the canvas. Also, a cloud versioning model is used from
            now on for this package, as updates will be done automatically to the activities,
            without the neccesity of manually updating the package by using the Package
                Manager.

Please note that from this version onwards, this activity pack is only compatible with
                Studio v2023.10 and above.

The activity package has gone scopeless, which means you no longer have to drag and drop
            an activity inside the Sugar Professional Scope activity to configure a
            connection. You can simply add your activity to the workflow and configure the
            connection using the Connection field.


## v4.0.1

Release date: August 29, 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Sugar Professional activities package has been upgraded to .NET6.

Implemented telemetry changes.

This release brings multiple new activities to this pack, thus increasing the overall automation capabilities it offers.

The new activities are:

* Create basic account
* Get account details
* Update basic account
* Create basic contact
* Update basic contact


## v3.0.0

Release date: November 1, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, and delete operations on objects. Find out more about the UiPath Integration service here.

