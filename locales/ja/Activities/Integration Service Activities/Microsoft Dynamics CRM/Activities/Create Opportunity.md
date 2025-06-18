# Create Opportunity

UiPath.MicrosoftDynamicsCRM.IntegrationService.Activities.CreateOpportunity

# Description

Uses the Opportunity entity reference - POST API to create an opportunity in Microsoft Dynamics 365 CRM.

# Project compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections.
* Topic - Subject or description to identify the opportunity.
* Account - The ID the account associated with the opportunity. Type up to 3 characters of the name or type a custom value to select the account.
* Description - The description of the opportunity.
* Estimated close date - The estimated date of closure of the opportunity. Use the calendar widget to choose a date. This field supports DateTimeOffset variables.
* Estimated revenue - The estimated value of the opportunity.
* Sales Stage - The stage of sale. Options available in the dropdown menu are: Qualify, Develop, Propose, Close.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Options

* Actual close date - The actual close date of the opportunity. Use the calendar widget to choose a date. This field supports DateTimeOffset variables.
* Actual value - The actual value of the opportunity.
* Opportunity rating - The rating code of the opportunity. Options available in the dropdown menu are: Hot, Warm, Cold.
* Status Code - The status code of the opportunity. Options available in the dropdown menu are: In Progress, On Hold.
* Timeline - The timeline aimed at closure of the opportunity in Dynamics CRM. Options available in the dropdown menu are: Immediate, This Quarter, Next Quarter, This Year, Not known.
* Probability - The probability of closure of the opportunity.
* Campaign - The ID campaign through which the opportunity was generated. Type up to 3 characters of the name or type a custom value to select the campaign.

Output

* Opportunity ID - Unique identifier of the opportunity.
