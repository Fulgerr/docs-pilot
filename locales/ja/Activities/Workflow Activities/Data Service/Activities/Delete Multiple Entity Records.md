# Delete Multiple Entity Records

UiPath.DataService.Activities.DeleteMultipleEntityRecords<UiPath.DataService.Definition.IEntity>

# Description

Deletes multiple records in bulk for the selected Entity from Data Service.

The activity deletes maximum 1,000 records at a time.

# Project compatibility

Windows | Cross-platform

# Designer panel

Entity - Select the entity you want to use with the activity. The property only supports entities imported from Data Service.Record Ids - Once you select an entity, the wizard asks you to provide the IDs of the records you want to delete.

# Properties panel

Options

Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).Related Record Depth - Specifies the depth of related records to be retrieved from the service. This property supports values from 1 to 3. The default value is 2.Continue batch on failure - Specifies if Data Service should continue processing the remaining records when a record fails to create. If set to False, Data Service will stop processing records on the first failure. This property only supports Boolean values (True, False). The default value is True.

Output

Failed Records - The list of record GUIDs that could not be deleted from Data Service.
