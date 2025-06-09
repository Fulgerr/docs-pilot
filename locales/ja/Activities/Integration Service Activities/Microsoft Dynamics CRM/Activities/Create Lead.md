# Create Lead

UiPath.MicrosoftDynamicsCRM.IntegrationService.Activities.CreateLead

# Description

Uses the Lead entity reference - POST API to create a lead in Microsoft Dynamics 365 CRM.

# Project compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections.
* Last name - Last name of the lead.
* Topic - Subject or description to identify the lead.
* First name - First name of the lead.
* Company name - Name of the company to which the lead belongs.
* Lead source - The primary marketing source that prompted the lead to contact you. See the list of available options in the dropdown menu.
* Email address - Email address of the lead.
* Mobile phone - Mobile phone of the lead to be added in Dynamics CRM.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Options

* Job title - Job title of the lead to be added.
* Owner - The system user responsible for this account. Type up to 3 characters of the name or type a custom value to select the system user who is the owner of the record.
* Address line 1 - Street address of the lead to be added.
* Postal code - Postal code of the lead to be added.
* City - City of the lead to be added.
* Country - Country of the lead to be added.
* Description - Description of the lead to be added.
* Lead rating - Quality code of the lead to be added. Options available in the dropdown menu are: Hot, Warm, Cold.
* Parent account - Account ID of the parent associated with the lead. Type up to 3 characters of the name or type a custom value to select the associated parent account.
* Qualification comments - Any additional comments about the lead to qualify or reject it.

Output

* Lead ID - The unique identifier of the lead.
