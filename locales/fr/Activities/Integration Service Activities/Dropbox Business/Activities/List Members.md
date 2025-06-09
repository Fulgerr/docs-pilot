# List Members

UiPath.DropboxBusiness.IntegrationService.Activities.ListMembers

This activity lists the members of a team.

# In the Body of the Activity

The following properties are located in the body of the activity:

* Fields - The fields to return on the response. Can be a single field or a comma-separated list of fields.
* Include_removed - Whether to return removed members. The default value for this field is False.
* Page Token - Taken from the next page token of the previous page.
* Page Size - The number of resources to return in a given page.
* List - The list of records.
* Next Page Token - The token for the next page of records. Use this token to iterate through the pages until an empty list is returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message
