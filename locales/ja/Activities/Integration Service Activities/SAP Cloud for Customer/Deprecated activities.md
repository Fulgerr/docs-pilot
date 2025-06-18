# Deprecated activities


## List Records

UiPath.SAPCloudForCustomer.IntegrationService.Activities.ListRecords

Lists a page of records in SAP Cloud for Customer.

# In the Body of the Activity

To select your object, you must use the Object Wizard by clicking the Configure button.

To learn more about the Object Wizard, see the Business Activity Frameworks page.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message


## Cloud for Customer Scope

UiPath.SAPCloudForCustomer.IntegrationService.Activities.Scope

Manages a connection to the specified C4C CRM instance, providing a scope for SAPC4CCRM activities.

For more information on how to establish an authenticated connection, please refer to the Connections page and the SAP Cloud for Customer Authentication section in the UiPath Integration Service Guide.

After establishing an authenticated connection, drag and drop the Cloud for Customer Scope activity into the workflow and select the Configure button. The Configure Connection Wizard opens which allows you to select your connections.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* ReportApiErrorAsException - When selected, API error responses are reported in BusinessActivityExecutionException by all child activities that use this application scope. When cleared, the child activity populates the API error message in the ResponseStatus output property and workflow execution continues. Check the ResponseStatus property to confirm successful execution.

Output

* Connection - The connection which can be passed to a child application scope.

Use Existing Connection

* Existing Connection - A connection from the parent Application Scope to use instead of a new connection.

