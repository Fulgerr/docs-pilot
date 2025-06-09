# Update Vendor

UiPath.QuickBooksOnline.IntegrationService.Activities.QuickUpdateVendor

Uses the Full update a vendor - POST API to update a vendor in QuickBooks Online.

# In the body of the activity

Click the Configure button to customize the activity properties listed below:

* Vendor Id - The ID of the vendor.
* Display Name as - The vendor's name.
* Is Sparse Update - If True, all other fields will remain intact during the update. If False, all other fields will be removed and data loss may occur.
* Sync Token - This is used to lock an object for use by one app at a time and acts like a version number for the record. As soon as an application modifies an object, its Sync Token is incremented.
* Vendor Company Name - The vendor's company name.
* Email Address - The vendor's email address.
* Phone Number - The vendor's phone number.
* Is Active Vendor - Set this property to True if this vendor is an active one. This field supports only Boolean variables.
* Billing Address Line 1 - The first line of the billing address.
* Billing Address City - The city provided for the billing address.
* Billing Address Zip Code - The zip code provided for the billing address.
* Billing Address State/Province Code - The state or province code provided for the billing address.
* Billing Address Country - The country provided for the billing address.
* Is Taxable Vendor - Set this property to True if this vendor is taxable. This field supports only Boolean variables.
* Vendor Notes - Specify any vendor notes. This field supports String type input.
* Vendor - Includes the vendor returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
