# Get Account Details

UiPath.SugarSell.IntegrationService.Activities.GetAccountDetails

Retrieves an account's information.

# In the body of the activity

* Account - A specific ID of an account for which the details are to be fetched. Type the first 3 characters of the name to select the account from the dropdown or pass custom account ID.
* Response - The account object returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
