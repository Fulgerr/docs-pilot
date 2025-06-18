# Add Data Row/Column

The example below explains how to build a DataTable with columns and rows by using the , , and  activities. You can
            find these activities in the UiPath.System.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variables:Variable NameVariable TypeDefault ValueDT1DataTablenew DataTableArrayOfValuesSystem.String[][]{({"A1","John","6"}),({"A2","Jamie","3"}),({"A3","Jim","9"}),({"A4","Janice","5"})}DataTableStringStringTableHeadersSystem.String[]{"Id","Name","Grade"}
3. Drag a For Each activity inside the Sequence container. Add the value header in the ForEach field.
In the Properties panel, select the String option from the TypeArgument drop-down list.
Add the variable TableHeaders in the Values field.
4. Place an Add Data Column activity inside the For Each activity. In the Properties panel, add the value header in the ColumnName field.
Add the variable DT1 in the DataTable field.
Select the String option from the TypeArgument drop-down list.
Select the check box for the AllowDBNull option.
Add the value 100 in the MaxLength field.
5. Drag a For Each activity below the previous For Each activity. Add the value row in the ForEach field.
In the Properties panel, select the System.String[] option from the TypeArgument drop-down list.
Add the variable ArrayOfValues in the Values field.
6. Place a Add Data Row activity inside the For Each activity. In the Properties panel, add the value row in the ArrayRow field.
Add the variable DT1 in the DataTable field.
7. Drag a Output Data Table activity below the last For Each activity. In the Properties panel, add the variable DT1 in the DataTable field.
Add the variable DataTableString in the Text field.
8. Drag a Write Line activity underneath the Output Data Table activity. Add the variable DataTableString in the Text field.
9. Run the process. The robot creates the DataTable by adding columns and rows.

* This is how your workflow should look:

Here you can download an example.
