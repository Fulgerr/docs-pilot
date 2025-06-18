# Insert Record

UiPath.SapConcur.IntegrationService.Activities.InsertRecord

# Description

Insert a record in Concur.

# Project compatibility

Windows | Cross-platform

# Configuration

Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports strings or String variables.Select object - Select an object from the dropdown menu and configure the listed properties. Use Manage Properties to select additional fields for the current activity. Expense entries object:Expense type code - The code for the expense type. This field supports strings or String variables.Payment type ID - The ID of the payment type for the entry. This field supports strings or String variables.Report ID - The report ID of the report where the entry will be added. This field supports strings or String variables.Transaction amount - The amount of the expense entry, in the transaction currency paid to the vendor. This field supports Double variables.Transaction currency code - The 3-letter ISO 4217 currency code for the expense entry transaction amount. This is the currency in which the vendor was paid. For expense types with an expense code that uses a transaction amount instead of a distance, this element is required. This element should not be used for expense types with an expense code for Company Car or Personal Car, because for these two expense codes the currency is always the Report Currency. This field supports strings or String variables.Transaction date - The date when the good or service associated with this expense entry was provided. Use the Calendar widget to set a date or enter a DateTimeOffset variable. Output: ID - The unique identifier of the resource. This field supports strings or String variables.Reports object:Name - The name of the report. This field supports strings or String variables.User defined date - The date of the report assigned by the user. Use the Calendar widget to set a date or enter a DateTimeOffset variable. Output: ID - The unique identifier of the resource. This field supports strings or String variables.
