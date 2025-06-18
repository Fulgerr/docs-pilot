# Manipulate Tables

The example below explains how to build a table, merge it, sort the data and remove duplicates. It uses activities such as Merge Data Table, Sort Data Table, and Remove Duplicate Rows. You can find these activities in the UiPath.System.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variables:Variable NameVariable TypeDefault ValueDT1DataTableDT2DataTableDataTableStringString
3. Drag a Build Data Table activity inside the Sequence container. In the Properties panel, add the variable DT1 in the DataTable field.
4. Click the DataTable button from the Build Data Table activity. Click the Add Column button and add a new column.
Click the Edit Column button from the first column and add the value Name in the ColumnName field.
Select the String option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Click the OK option for closing the window.
Click the Edit Column button from the second column and add the value Surname in the ColumnName field.
Select the String option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Click the OK option for closing the window.
Click the Edit Column button from the third column and add the value Grade in the ColumnName field.
Select the Int32 option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Fill in the fields with names, surnames and grades.
Click the OK button for closing the window.
Click the OK button again.
Here is how the Build Data Table should look:
5. Drag another Build Data Table activity below the previous Build Data Table activity. In the Properties panel, add the variable DT2 in the DataTable field.
6. Click the DataTable button from the Build Data Table activity. Click the Add Column button and add a new column.
Add the value Name in the ColumnName field.
Select the String option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Click the OK option for closing the window.
Click the Edit Column button from the second column and add the value Surname in the ColumnName field.
Select the String option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Click the OK option for closing the window.
Click the Edit Column button from the third column and add the value Grade in the ColumnName field.
Select the Int32 option from the Data Type drop-down list.
Select the check box for the Allow Null option.
Add the value -1 in the Max Length field.
Fill in the fields with names, surnames and grades.
Click the OK button for closing the window.
Click the OK button again.
Here is how the Build Data Table should look:
7. Place a new Sequence container below the Build Data Table activity and name it Merge .
8. Drag a Merge Data Table activity inside the Merge container. In the Properties panel, add the variable DT1 in the Destination field.
Select the Add option from the MissingSchemaAction drop-down list.
Add the variable DT2 in the Source field.
9. Drag an Output Data Table activity below the Merge Data Table activity. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DataTableString in the Text field.
10. Place a Write Line activity under the Output Data Table activity. Add the expression "Merged DataTable:" in the Text field.
11. Place another Write Line activity under the previous one. Add the variable DataTableString in the Text field.
12. Drag a new Sequence container and place it below the Merge container. In the Properties panel, add the value Sort Descending by Grade in the DisplayName field.
13. Drag a Sort Data Table activity inside the Sort Descending by Grade container. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DT1 in the DataTable field.
Add the value "Grade" in the Name field.
Select the Descending option from the Order drop-down list.
14. Drag an Output Data Table activity below the Sort Data Table activity. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DataTableString in the Text field.
15. Place a Write Line activity under the Output Data Table activity. Add the expression "Sorted DataTable:" in the Text field.
16. Place a Write Line activity below the previous one. Add the variable DataTableString in the Text field.
17. Drag a new Sequence container and place it below the Sort Descending by Grade container. In the Properties panel, add the value Remove Duplicates in the DisplayName field.
18. Place a Remove Duplicate Rows activity inside the Remove Duplicates container. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DT1 in the DataTable field.
19. Drag an Output Data Table activity below the Remove Duplicate Rows activity. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DataTableString in the Text field.
20. Place a Write Line activity under the Output Data Table activity. Add the expression "Remove Duplicates DataTable:" in the Text field.
21. Place a Write Line activity below the previous one. Add the variable DataTableString in the Text field.
This is how the workflow should look:
22. Run the process. The robot builds a table, merges it, sorts the data and removes the duplicates.

Here you can download an example.
