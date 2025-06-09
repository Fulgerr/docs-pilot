# Create Opportunity

UiPath.Act365.IntegrationService.Activities.CreateBasicOpportunity

# Description

Uses the Opportunities - POST API to create an opportunity in Act! 365.

# Project Compatibility

Windows | Cross-Platform

# Configuration

* Opportunity ID - The ID of the opportunity. The opportunity ID can be retrieved using the List all Opportunities activity and filtering based on title, stage or expected close date.
* Stage - The stage of the opportunity such as Leads, Meeting etc. This field supports String type input. Use the Find button top open a search window where you can enter an an opportunity's name and retrieve its corresponding stage.
* Title - The title of the opportunity. This field supports String type input.
* Total - The total amount associated with the opportunity. This field supports String type input.
* Currency - The currency associated with the opportunity. Valid values are USD, INR, GBP, EUR, AUD, MXN, BRL, NZD and CAD.
* Description - The description of the opportunity. This field supports String type input.
* Estimated Close - The estimated close date of the opportunity. Enter a DateTimeOffset variable.
* Actual Close - The actual close date of the opportunity. Enter a DateTimeOffset variable.
* Contacts - Any array of contact objects associated with the opportunity. Enter an OpportunitiesContacts variable.
* Notes - Any notes associated with the opportunity. This field supports String type input.
