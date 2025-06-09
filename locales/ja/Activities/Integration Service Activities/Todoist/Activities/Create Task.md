# Create Task

# Description

Creates a task in Todoist.

# Project Compatibility

Windows|Cross-Platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections.
* Title - The title of the task.
* Description - The description of the task.
* Project - The task project ID. If not set, the task is created in the user's Inbox project.
* Priority - The task priority. This value can range from 1 (normal) to 4 (urgent).

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).



# Advanced

Options

* Labels - A comma separated list of labels.
* Assignee - The responsible user ID that only applies to shared tasks.
* Due date - Specific date in YYYY-MM-DD format relative to the user's timezone.
* Duration - A positive, greater than zero integer for the amount of Duration unit the task takes. If specified, you must define the unit of measurement for this amount in the Duration unit property field that is displayed only when this property field is configured.
* Duration unit - The unit of time that is represented by the value in the Duration field. If specified, Duration must be defined as well.

Output

* Task - The created task.
* Task ID - The ID of the created task.
