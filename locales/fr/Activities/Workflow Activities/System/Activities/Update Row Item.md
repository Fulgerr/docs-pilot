# Update Row Item

UiPath.Core.Activities.UpdateRowItem

Assigns a specified value to the indicated column of a DataTable row.

# Project compatibility

Windows | Windows - Legacy

# Configuration

* Value - The value to be written to the indicated column. In StudioX, you can use the Plus icon to select one of the available options:Data from the Project Notebook, a parent Excel file or Outlook account. For example, select an Excel file, and then select Indicate in Excel to indicate a cell from the file, or select an email in Outlook and then select a field in the email that contains the value. Ask when run - Prompt for the value when the project is executed. Paste from clipboard - Paste a value that you previously copied to the clipboard in the project. Text - Enter the value in the Text Builder. Use Saved Value - Select a value that you previously saved for later use in the project. Open in Advanced Editor - Enter a VB expression.
* Row - The name used to reference the DataTable row containing the column whose value should be updated. The default value is CurrentRow. Click Plus on the right side of the field and select the row. Alternatively, select Open in Advanced Editor to enter a VB expression.
* Column - Specify either the column number(index) or name whose values should be updated. In StudioX, you can use the Plus icon to select one of the available options:Number - The number of the column whose values should be updated.Row - Select a column from the list. The number of columns displayed is based on the Column count property of the For Each Row in Data Table activity. Data from the Project Notebook or a parent Excel file. For example, select an Excel file, and then select Indicate in Excel to indicate a cell from the file that contains the number. Number - Enter a numeric value. Ask when run - Prompt for a number when the project is executed. Use Saved Value - Select a value that you previously saved for later use in the project. Open in Advanced Editor - Enter a VB expression. Name - The name of the column whose values should be updated.Row - Select a column from the list. The displayed column names are the same names that you provided in the Header names property of the For Each Row in Data Table activity. Data from the Project Notebook, a parent Excel file or Outlook account. For example, select an Excel file, and then select Indicate in Excel to indicate a cell from the file, or select an email in Outlook and then select a field in the email that contains the name. Ask when run - Prompt for the column name when the project is executed. Paste from clipboard - Paste a value that you previously copied to the clipboard in the project. Text - Enter the name in the Text Builder. Use Saved Value - Select a value that you previously saved for later use in the project. Open in Advanced Editor - Enter a VB expression.

# In the Properties Panel

Options

* DisplayName - The display name of the activity.
* Column name - The name of the column to be updated.
* Column number - The number (index) of the column to be updated.
* Row - The DataRow containing the column whose value should be updated.
* Value - The value to be written to the indicated column.
* Private - If selected, the data used in the activity is not logged by Studio.
