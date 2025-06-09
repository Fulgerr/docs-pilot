# Sort Data Table

UiPath.Core.Activities.SortDataTable

# Description

Sorts an entire DataTable by ascending or descending order, based on the values of a specified column.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* DataTable - The DataTable variable you want to sort. This field supports only DataTable variables.
* Column - The variable containing the name of the column you want to sort by.

Advanced options

Options

* Order - The order in which the table is to be sorted. Ascending means the first value is the lowest, while Descending means the first value is the highest.

Output

* Sorted Data Table - The DataTable variable after it has been sorted. Placing the same variable as the one in the DataTable field changes the initial variable while adding a new variable leaves the initial one unaffected. This field supports only DataTable variables.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* DataTable - The DataTable variable you want to sort. This field supports only DataTable variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* DataTable - The DataTable variable after it has been sorted. Placing the same variable as the one in the Input: field changes the initial variable while adding a new variable leaves the initial one unaffected. This field supports only DataTable variables.

Sorting Column

* Column - The variable containing the column you want to sort by. This field supports only DataColumn variables. Setting a variable in this property field disables the other two properties.
* Index - The index of the column you want to search for. This field supports only Int32 variables. Setting a variable in this property field disables the other two properties.
* Name - The name of the column you want to search for. This field supports only strings and String variables. Setting a variable in this property field disables the other two properties.
* Order - The order in which the table is to be sorted. Ascending means the first value is the lowest, while Descending means the first value is the highest.

# Example of using the Sort Data Table activity

Here you can see how the Sort Data Table activity is used in an example that incorporates multiple activities.
