# Release Notes


## v4.0.2

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


## April 22, 2024

# Untitled Section

text="Type the content"

# Untitled Section

We've renamed many of the activities in this package. Create List and Update List are now Create Audience and Update Audience, Add List Member and Update List Member are available as Add Subscriber and Update Subscriber, and Delete List and Get List are now Delete and Get Audience. These changes impact the names and descriptions of some fields inside these activities.

This release also includes some updates to support the latest features available in Studio.

# New activities

Two new activities have been added to the package: Get Subscriber, Schedule Campaign, and Replace Record.

# Triggers

Three trigger activities are now available: Campaign Created, Audience Created, and Record Created.

# Deprecated activities

The following activities have been deprecated: Get Campaign, Get List Member, List All Campaign Open Reports, List All Campaign Reports, List All Campaigns, List All List Members, List All Lists, Delete List Member, Update List, Delete List, Invoke Operation, Delete Campaign, List Records.

The Scope activity has also been deprecated. You no longer need to drag and drop an activity inside the Mailchimp Scope activity to configure a connection. You can simply add your activity to the workflow and configure the connection using the Connection ID.


## V4.0.0

Release Date: 29 July 2022

# New Features and Improvements

This release brings multiple new activities to this pack, thus increasing the overall automation capabilities it offers. The new activities are:

* List all lists
* List all list members
* List all campaign open reports
* List all campaign reports
* List all campaigns
* Search campaigns
* Search members
* Send campaign
* Set campaign content
* Send test email

The following activities now include a Find feature for some properties, allowing you to quickly search for object IDs.

* Update campaign
* Create campaign
* Get campaign
* Get list
* Update list
* Add list member
* Get list member
* Update list member
* Get campaign report

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when creating multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in UiPath Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Mailchimp activities package supports .NET6.


## V3.0.1

Release Date: 22 March 2022

# New Features and Improvements

This activity pack is designed to work together with Integration Service. The activities allow you to execute create, retrieve, update, and delete operations on Mailchimp objects.

Find out more about the UiPath Integration service here.

