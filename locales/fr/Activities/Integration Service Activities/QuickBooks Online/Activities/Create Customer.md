# Create Customer

UiPath.QuickBooksOnline.IntegrationService.Activities.CreateCustomer

# Description

Creates a customer in QuickBooks Online.

# Project Compatibility

Windows | Cross-Platform

# Configuration

* Display Name - The customer's name.
* Customer Company Name - The customer's company name.
* Email Address - The customer's email address.
* Phone Number - The customer's phone number.
* Customer Type - Customer type. Use the Find button to open the Get customer type search window.
* Payment method - Preferred payment method. Use the Find button to open the Get payment method search window.
* Customer - Includes the customer returned.

# Advanced

Options

* Billing Address Line 1 - The first line of the billing address.
* Billing Address City - The city provided for the billing address.
* Billing Address Zip Code - The zip code provided for the billing address.
* Billing Address State/Province Code - The state or province code provided for the billing address.
* Billing Address Country - The country provided for the billing address.
* Shipping Address Line 1 - The first line of the shipping address.
* Shipping Address City - The city provided for the shipping address.
* Shipping Address Zip Code - The zip code provided for the shipping address.
* Shipping Address State/Province Code - The state or province code provided for the shipping address.
* Shipping Address Country - The country provided for the shipping address.
* Is Taxable Customer - Set this property to True if this customer is taxable. This field supports only Boolean variables.
* Customer Notes - Specify any customer notes. This field supports String type input.
* Job - If set to true, this is a Job or sub-customer and Parent customer needs to be passed. If set to false or null, this is a top level customer, not a job or sub-customer.
* Bill With Parent - Parent customer reference. Use the Find button to open the Get customers search window. If a value is passed here, then the Job property must be set to true.
* Default Tax Code - Customer default tax code. Use the Find button to open the Get tax code search window.
* Currency - Customer currency reference. Use the Find button to open the Get currency search window.
* Sales Term - Sales terms reference. Use the Find button to open the Get term search window.
* Is Active Customer - Set this property to True if this customer is an active one.

Output

* Customer ID - The Customer ID.
* Sync token - The sync token for a record is used to ensure that it is locked for use by one app at a time and prevents modifications with older versions, guaranteeing that only the latest version is preserved.
* Customer - The Customer.
