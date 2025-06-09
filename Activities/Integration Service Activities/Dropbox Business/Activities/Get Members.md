# Get Members

UiPath.DropboxBusiness.IntegrationService.Activities.GetMembers

This activity retrieves information regarding the members of a team.

# In the Body of the Activity

The following properties are located in the body of the activity:

* MembersId - The ID of the Members object.
* Members (Output) - The Members object returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message
