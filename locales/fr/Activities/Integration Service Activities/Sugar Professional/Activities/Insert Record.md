# Insert Record

UiPath.SugarProfessional.IntegrationService.Activities.InsertRecord

Inserts a record in Sugar Professional.

# In the body of the activity

To select your object, you must use the Object Wizard by clicking the Configure Object button.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
