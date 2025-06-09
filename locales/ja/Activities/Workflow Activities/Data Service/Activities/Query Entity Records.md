# Query Entity Records

UiPath.DataService.Activities.QueryEntityRecords<UiPath.DataService.Definition.IEntity>

# Description

Retrieves a list of records for the selected Entity from the UiPath Data Service, according to specified filters.

# Project compatibility

Windows | Cross-platform

# Designer panel

Entity - Select the entity you want to use with the activity. The property only supports entities imported from Data Service.Query - Once you select an entity, the wizard asks you to configure the query.In the Filter Builder wizard:Click Add condition or Add group. From the first drop-down menu, select a field to filter by for the select entity type. You can select fields for any related entities as well.From the second drop-down menu, select the operator to evaluate the selected field. The list of operators will change based on the type of selected field in first drop-down menu.For the third expression field, provide a value or enter an expression for the selected field. The supported value will change based on the type of selected field in first drop-down menu.Click Add condition if you want to add other conditions or groups, and select if All or Any of the conditions should be used to filter.

# Properties panel

Options

Sort By Field - The name of the field you want to sort retrieved records by. The name has to be same as a valid field in the selected entity type and needs to have the same capitalization. By default, this field is set to Id.Sort Ascending - Sorts records in ascending order based on the field specified in the Sort By property This field supports only Boolean values (True, False). The default value is True.Top - Specifies the maximum number of records retrieved out of total records. This property supports values from 1 to 1000. The default value for this field is 100.Skip - Helps you skip the specified number of records. If the specified value is larger than total records, no records are retrieved. This property supports values greater than or equal to 0. By default, this property is set to 0.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).Related Record Depth - Specifies the depth of related records to be retrieved from the service. This property supports values from 1 to 3. The default value is 2.

Output

Total Records - The total number of records matching the specified query filters, stored in an Int64 variable. This field supports only Int64 variables.Output Records - The list of records retrieved from Data Service. This field only supports List objects of types imported from Data Service and must be of the same type as the selected Entity Type.
