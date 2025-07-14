# Join Data Tables

UiPath.Core.Activities.JoinDataTables

# Description

Combines rows from two tables by using values common to each other, according to a Join rule, which is specified in the Join Type property.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Data Table 1 - The first table that you want to use in the Join operation, stored in a DataTable variable. This field supports only DataTable variables.

* Data Table 2 - The second table that you want to use in the Join operation, stored in a DataTable variable. This field supports only DataTable variables.

The order in which the two tables are supplied is very important, because it influences the structure of the resulting table, according to the option selected in the JoinType property field.

JoinType - The type of Join operation you want to use. The following options are available:Inner - Keep all rows from DataTable1 and DataTable2 which meet the Join rule. Any rows that do not meet the rule are removed from the resulting table.Left - Keep all rows from DataTable1 and only the values from DataTable2 which meet the Join rule. Null values are inserted into the column for the rows from DataTable1 that don't have a match in the DataTable2 rows.Full - Keep all rows from DataTable1 and DataTable2, regardless of whether the join condition is met. Null values are added into the rows from both tables that don't have a match.If a column from DataTable2 shares the same name with a column from DataTable1, then the name of the column from DataTable2 is changed to [ColumnName]_1 in the resulting table. If a column with the [ColumnName]_1 name already exists, the consecutive number that is not already in use is used instead. For example, if DataTable1 has columns named ID, ID_1 and ID_2, and DataTable2 has a column named ID, after the join, the column in DataTable2 is named ID_3.Join Rules - The conditions to join the tables by. Selecting the field opens a simple Filter Builder where you can add rules that compose the filter.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* DataTable1 - The first table that you want to use in the Join operation, stored in a DataTable variable. This field supports only DataTable variables.
* DataTable2 - The second table that you want to use in the Join operation, stored in a DataTable variable. This field supports only DataTable variables.The order in which the two tables are supplied is very important, because it influences the structure of the resulting table, according to the option selected in the JoinType property field.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* JoinType - The type of Join operation you want to use. The following options are available:Inner - Keep all rows from DataTable1 and DataTable2 which meet the Join rule. Any rows that do not meet the rule are removed from the resulting table. Left - Keep all rows from DataTable1 and only the values from DataTable2 which meet the Join rule. Null values are inserted into the column for the rows from DataTable1 that don't have a match in the DataTable2 rows. Full - Keep all rows from DataTable1 and DataTable2, regardless of whether the join condition is met. Null values are added into the rows from both tables that don't have a match.If a column from DataTable2 shares the same name with a column from DataTable1, then the name of the column from DataTable2 is changed to [ColumnName]_1 in the resulting table. If a column with the [ColumnName]_1 name already exists, the consecutive number that is not already in use is used instead. For example, if DataTable1 has columns named ID, ID_1 and ID_2, and DataTable2 has a column named ID, after the join, the column in DataTable2 is named ID_3.

Output

* DataTable - The table with the joined values, stored in a DataTable variable. This field supports only DataTable Variables.

Join Wizard

This wizard helps you configure the properties of the Join Data Tables activity. It can be opened by using the Join Wizard button in the body of the activity in the Designer panel.

From the upper section of the wizard, you can select both of the DataTable variables you wish to use in the operation, the Join type, and the output variable, from the following fields:

* Input DataTable1 - The DataTable variable containing the first table you want to use.
* Input DataTable2 - The DataTable variable containing the second table you want to use.
* Output DataTable - The DataTable variable in which you want to store the resulting table.
* Join Type - The type of Join operation you want to use. The following options are available:
* Inner - Keep all rows from DataTable1 and DataTable2 which meet the Join rule. Any rows that do not meet the rule are removed from the resulting table.
* Left - Keep all rows from DataTable1 and only the values from DataTable2 which meet the Join rule. Null values are inserted into the column for the rows from DataTable1 that don't have a match in the DataTable2 rows.
* Full - Keep all rows from DataTable1 and DataTable2, regardless of whether the join condition is met. Null values are added into the rows from both tables that don't have a match.

From the lower section of the wizard, you can configure the structure of the resulting table, by adding expressions that indicate relations between columns. Each of these expressions has three elements, as follows:

* Column Table 1 - The name of the column in the first table. This field supports only String variables containing the column name, Int32 variables containing the column index or ExcelColumn variables.
* Operation - The operation that defines the relation between the columns. The following options are available:= - Equal to!= - Not equal to> - Greater than< - Less than>= - Greater than or equal to<= - Less than or equal to
* Column Table 2 - The name of the column in the second table. This field supports only String variables containing the column name, Int32 variables containing the column index or ExcelColumn variables.

# Example of Using the Join Data Tables Activity

To exemplify how to use this activity, we have created a project which joins two sheets of a workbook in another sheet of that workbook. The first sheet contains details about orders, while the second sheet contains details about customers. The two sheets have a common column, CustomerID, which is used for the join operation. The project can be downloaded here.

1. Create a blank Project.
2. Drag a Sequence container into the Designer panel.
3. Drag an Excel Application Scope and place the path of the Excel workbook in the Workbook Path property.
4. Create two DataTable variables, one for the Customers sheet and one for the Orders sheet.
5. Inside the Excel Application Scope, drag two Read Range activities.
6. Set the two Read Range activities to read each of the sheets in the Excel workbook and store them into their corresponding variables.
7. Create a DataTable variable to store the resulting table.
8. Drag a Join Data Tables activity in the scope container.
9. Click the Join Wizard button in the body of the activity. The Join Data Tables Wizard opens.
10. Set the variable containing the Customers sheet into the Input DataTable 1 field.
11. Set the variable containing the Orders sheet into the Input DataTable 2 field.
12. Set the variable created to store the resulting table into the Output DataTable field.
13. In the Join Type drop-down menu select Inner.
14. In the Column Table 1 field, input the column which corresponds to the CustomerID column in the Customers sheet.
15. In the Operation drop-down menu, select =.
16. In the Columns Table 2 field, input the column which corresponds to the CustomerID column in the Orders sheet. The Wizard should look like this:
17. Drag a Write Range activity to the Designer panel.
18. Configure the Write Range to write the DataTable variable containing the resulting table into a new sheet in the initial workbook.
19. The final workflow should look like this:
