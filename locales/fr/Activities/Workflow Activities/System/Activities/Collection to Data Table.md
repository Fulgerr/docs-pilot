# Collection to Data Table

UiPath.Core.Activities.CollectionToDataTable

# Description

Converts a specified collection to a DataTable.

# Project compatibility

Windows -  Legacy | Windows | Cross-platform

# Windows, Cross-platform configuration

* Collection - The collection to be converted into a DataTable.
* Items - The items to be added. Click the field to open the Collection Builder window.Changing the data type of the collection after selecting it in the Collection field triggers a validation error. The collection with the new data type must be added again to the activity.

Additional options

Output

* DataTable - Reference to the resulting DataTable for use in other activities.

# Windows - Legacy configuration

Properties panel

Common

* DisplayName - The name of the activity in the Designer panel.

Input

* Collection - The collection to be converted into a DataTable.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* TypeArgument - A drop-down list that enables you to choose what .NET datatype you want to use with the activity.

Output

* DataTable - Reference to the resulting DataTable for use in other activities.
