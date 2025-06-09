# Build Data Table

UiPath.Core.Activities.BuildDataTable

The Build Data Table activity allows you to create and customize a data table within your automation workflow.

# Project compatibility

Windows | Windows - Legacy

# Using the Build Data Table window

Select the DataTable button in the activity body to open the Build Data Table window, where you can customize the d.

![505557e-Build_Data_Table=GUID-B8B5D912-246B-434A-BF5D-3FC3D6F59C3A=1=en=Default](/images/505557e-Build_Data_Table=GUID-B8B5D912-246B-434A-BF5D-3FC3D6F59C3A=1=en=Default.png)

The window initially displays a table with two columns and two rows:

The first row contains editable values.The second row is not removable, but it is not displayed in the output table.

To add a column, select Add Column. This opens the New Column window, where you can create and customize new columns for your data table.

To modify an existing column, select Edit Column.

Changing the data type of a column erases all data in that column.

![a59309d-Build_DataTable_New_column=GUID-711310F6-7565-4564-AE35-9C022ADCA19F=1=en=Default](/images/a59309d-Build_DataTable_New_column=GUID-711310F6-7565-4564-AE35-9C022ADCA19F=1=en=Default.png)

The New Column window contains the following fields:

* Column Name—The title of the column. This field supports only strings.
* Data Type—The type of values that the new column is going to accept.
* Allow Null—If this check box is selected, null values can be added to the rows of this column.
* Auto Increment—The check box is displayed only if the Data Type is set to Int32. If selected, the value of this column is automatically incremented by 1 every time a new row is added.
* Default Value—The default value of all the rows that are to be added to this column.
* Unique—If selected, all the rows in this column need to have unique values.
* Max Length—The maximum number of characters accepted for this column. Use -1 for no limit.

# Adding and editing columns

The Build Data Table window initially displays a table with two columns and two rows:

The first row contains editable values.The second row is not removable, but it is not displayed in the output table.

To add a column, select Add Column. This opens the New Column window, where you can create and customize new columns for your data table.

To modify an existing column, select Edit Column.

Changing the data type of a column erases all data in that column.

# New column properties

![a59309d-Build_DataTable_New_column=GUID-711310F6-7565-4564-AE35-9C022ADCA19F=1=en=Default](/images/a59309d-Build_DataTable_New_column=GUID-711310F6-7565-4564-AE35-9C022ADCA19F=1=en=Default.png)

The New Column window contains the following fields:

* Column Name—The title of the column. This field supports only strings.
* Data Type—The type of values that the new column is going to accept.
* Allow Null—If this check box is selected, null values can be added to the rows of this column.
* Auto Increment—The check box is displayed only if the Data Type is set to Int32. If selected, the value of this column is automatically incremented by 1 every time a new row is added.
* Default Value—The default value of all the rows that are to be added to this column.
* Unique—If selected, all the rows in this column need to have unique values.
* Max Length—The maximum number of characters accepted for this column. Use -1 for no limit.



# Buil Data Table properties

In the Properties panel, the following options are avaialable:

Options

* Display Name—The display name of the activity.

Misc

* Private—If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Data Table—A DataTable variable that stores the information added in the Build Data Table window.

# Example of using the Build Data Table activity

You can see how the Build Data Table activity is used in an example that incorporates multiple activities and it is used for managing multiple databases. Refer to the Build and Filter Data Table how-to guide.
