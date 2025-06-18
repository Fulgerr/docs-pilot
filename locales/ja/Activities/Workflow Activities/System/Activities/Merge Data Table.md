# Merge Data Table

UiPath.Core.Activities.MergeDataTable

Merges the Destination with the Source, indicating whether to preserve changes and how to handle missing schema in the Source.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross - Platform Configuration

* Source Data Table - The DataTable object to be added to the destination DataTable.
* Destination Data Table - The DataTable object to which the source DataTable object is merged.

Properties

* Missing Schema Action - Specifies the action to take when merging the two DataTables. The options are:AddIgnoreErrorAddWithKey

# Windows, Windows - Legacy
                Configuration

Properties

* DisplayName - The display name of the activity.
* Destination - The DataTable object to which the source DataTable is merged.
* MissingSchemaAction - Specifies the action to take if there are schema issues when merging the two DataTables.
* Source - The DataTable object to be added to the destination DataTable.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the Merge Data Table activity

Here you can see how the Merge Data Table activity is used in an example that incorporates multiple activities.
