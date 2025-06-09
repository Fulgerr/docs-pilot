# Native Search

UiPath.DropboxBusiness.IntegrationService.Activities.Search

Use this activity to search for files and folders inside Dropbox Business.

# In the Body of the Activity

* Body - The object body.
* Fields - The fields to return on the response. Can be a single field or a comma-separated list of fields.
* Next Page - The next page cursor, taken from the response header: elements-next-page-token.
* Page Size - The number of resources to return in a given page.
* Response - Includes the object returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message
