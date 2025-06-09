# Add Quick Expense

UiPath.SapConcur.IntegrationService.Activities.CreateQuickExpense

# Description

Add a quick expense in Concur to be later linked to a report.

# Project compatibility

Windows | Cross-platform

# Configuration

Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports strings or String variables.Expense type - The code for the expense type. This field supports strings or String variables.Transaction currency - The currency code for the expense entry amount. This field supports strings or String variables.Amount - The amount of the expense in the currency paid to the vendor. This field supports Nullable<Double> variables.Transaction date - The date when the transaction was done. This field supports strings or DateTimeOffset variables.Payment type - The type of the payment made. Supported values: CASHX, CPAID, PENDC. CASHX stands for Out of Pocket; CPAID stands for Company Paid; PENDC stands for Pending Card Transaction. This field supports strings or String variables.

Advanced options

OptionsEntry details - The details of the expense. This field supports strings or String variables.Vendor - The name of the vendor. This field supports strings or String variables.

OutputQuick expense ID URI - The quick expense ID URI. This field supports strings or String variables.
