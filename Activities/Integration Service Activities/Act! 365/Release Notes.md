# Release Notes

Browse the release notes by clicking on the desired version in the table of contents on
            the left.

## v4.0.5

Release date: February 18, 2025

# Untitled Section


## January 20, 2025




### Support for long-running workflows

This connector now supports long-running workflows through the Wait for an Event and
                Resume activity. Its purpose is to suspend a job at runtime and resume the job
            whenever a certain event occurs.

For more information, see .


## December 2023

This activity package is now always displayed in the Available section of the Activities panel in Studio. Any activity in this package can be installed by simply dragging and dropping it into the canvas. Also, a cloud versioning model is used from now on for this package, as updates will be done automatically to the activities, without the neccesity of manually updating the package by using the Package Manager.

Please note that from this version onwards, this activity package is only compatible with Studio v2023.10 and above.

The activity packageage has gone scopeless, which means you no longer have to drag and drop an activity inside the Act 365! Scope activity to configure a connection. You can simply add your activity to the workflow and configure the connection using the Connection field.


## v4.0.0

Release Date: August 29, 2022

# New Features and Improvements

Both design time and run time now support the ability to select a connection to use in the Configure Connection Wizard. Before, you could only use the connection that was set as default, even when you would create multiple connections. With this new functionality, you can now select from the drop-down the connection you want to use in Studio (design time) and the connection you want to use on the robot (run time) when executing the process.

The Act! 365 activities package has been upgraded to .NET6.

Implemented telemetry changes.

The List all activities received new properties.

Some activities now include a look-up feature which allows you to easily retrieve object IDs.

The following activities are no longer included in the package: Get Calendar, Get Calendar Url Key, Create Campaign, Get Campaign, Delete Contact, Get Contact, Create Group, Delete Group, Get Group, Replace Group, Create Interaction, Delete Interaction, Get Interaction, List All Interactions, Replace Interaction, Delete Opportunity, Get Opportunity.


## v3.5.3

Release Date: April 22, 2022

# New Features and Improvements

This release brings multiple new activities to this pack, thus increasing the overall automation capabilities it offers. The new activities are:

* Create Campaign
* Get Campaign
* List All Campaigns
* Create Contact
* Delete Contact
* Get Contact
* List All Contacts
* Update Contact
* Create group
* Delete group
* Get group
* List All Groups
* Replace Group
* Create Interaction
* Delete Interaction
* Get Interaction
* List All Interactions
* Replace Interaction
* Create Opportunity
* Delete Opportunity
* Get Opportunity
* List All Opportunities
* Update Opportunity


## v3.0.0

Release Date: December 20, 2021

# New Features and Improvements

This activity package is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, delete and list operations on Act! 365 objects. Find out more about the UiPath Integration service here.

