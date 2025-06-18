# Create Entity Record

UiPath.DataService.Activities.CreateEntityRecord<UiPath.DataService.Definition.IEntity>

# Description

Creates a new record for the selected Entity in UiPath Data Service.

# Project compatibility

Windows | Cross-platform

# Designer panel

Entity - Select the entity you want to use with the activity. The property only supports entities imported from Data Service.

Once you select an entity, the field view is displayed, which shows the first three mandatory entity fields. If you have less than three mandatory fields, the wizard displays the mandatory fields first, and non-mandatory fields after. Fields are sorted alphabetically.

To input field data using an expression, click Switch to record view at the top-right of the activity box. The Input record field is displayed, which allows you to input data to a particular field using the syntax:

new EntityName() with {.Field1 = value}

To configure more fields, click Add additional fields, make your selection, then click Update fields/Save.

# Properties panel

Options

Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).Related Record Depth - Specifies the depth of related records to be retrieved from the service. This property supports values from 1 to 3. The default value is 2.

Output

Output Record - The record created from the Data Service, stored in an entity. This field only supports entities imported from Data Service and must be of the same type as the selected entity type.
