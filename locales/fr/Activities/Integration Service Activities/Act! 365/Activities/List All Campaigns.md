# List All Campaigns

UiPath.Act365.IntegrationService.Activities.ListAllCampaigns

Uses the Campaigns - GET API to list all the campaigns in Act! 365.

# In the body of the activity

The following properties are located in the body of the activity:

* Max Records - The maximum number of records to return.
* orderBy - Specifies the order of the result set.
* PageSize - The number of resources to return in a given page.
* where - The CEQL search expression, or the where clause, without the WHERE keyword, in a typical SQL query.
* First record - The first record returned.
* List - The list of records.

For more information on working with List activities, access our guide on .

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
