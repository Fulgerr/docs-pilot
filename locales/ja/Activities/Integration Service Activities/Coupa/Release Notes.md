# Release Notes


## v4.0.6

Release date: February 18, 2025

# Untitled Section


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


## July 2, 2024

# Untitled Section

text="Type the content"

# Untitled Section

This release also includes some updates to support the latest features available in Studio.

# New activities

The following activities are now available: Search Approvals, Grant or Reject Approval, Cancel or Close Purchase Order, and Add Attachment.

# Triggers

We've introduced several trigger activities: Approval Request Created, Purchase Order Updated, Purchase Order Created, Requisition Approved, Record Created, and Record Updated.

# Deprecated activities

Some activities have been deprecated, as follows: Cancel Purchase Order and Soft Close Purchase Order (use Cancel or Close Purchase Order instead), Create Invoice Attachment (use Add Attachment instead), and Upsert Record (use Replace Record).

# Bug fixes

We fixed some deserialization issues on the purchase orders and requisitions objects.


## v4.0.4

Release Date: August 1, 2023

# New Features and Improvements

Data types have been changed for several fields and objects that the Coupa activities use.

Support has been added for nested queries when using the Where clause.


## V4.0.2

Release Date: February 2, 2023

# New Features and Improvements

A new activity has been added to this activity pack, , which enables you to add attachments to invoices in Coupa.

# Breaking Changes

This activity pack has been regenerated to be compatible with Studio Web, which means certain activities have been deprecated and upgrading from v3.5.3 to v4.0.2 might cause breaking changes in your already existing workflows due to the fact that the activities in this version have a different design philosophy.

# Bug Fixes

* Some minor fixes have been done for the existing cXML based Insert Invoice activity.
* Currencies are now supported as an object while recording invoices and other sales transactions.
* A new REST API has been implemented for invoices, and can be found in the Insert Record activity, named Invoices rest


## V3.5.3

Release Date: April 27, 2022

# New Features and Improvements

This version supports the latest changes on the connector side.


## V3.0.0

Release Date: November 1, 2021

# New Features and Improvements

This activity pack is designed to work together with the new Integration Service. The activities allow you to execute create, retrieve, update, upsert, and list operations on Coupa objects. Find out more about the UiPath Integration service here.

