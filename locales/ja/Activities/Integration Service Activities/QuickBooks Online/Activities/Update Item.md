# Update Item

UiPath.QuickBooksOnline.IntegrationService.Activities.UpdateItem

Uses the Full update an item - POST API to update an item in QuickBooks Online.

# In the body of the activity

Click the Configure button to customize the activity properties listed below:

* Item Id - The ID of the item.
* Is Sparse Update - If True, all other fields will remain intact during the update. If False, all other fields will be removed and data loss may occur.
* Sync Token - This is used to lock an object for use by one app at a time and acts like a version number for the record. As soon as an application modifies an object, its Sync Token is incremented.
* Name - The name of the inventory item.
* Item Type - The type of item to be updated. Valid values for this field are:Inventory NonInventory Service
* Income Account Id - The income account ID in QuickBooks Online.
* Track Inventory Quantity On Hand - If this property is set to true, then * Quantity On Hand , Asset Account Id, Expense Account Id, and Inventory Start Date become mandatory.
* Quantity On Hand - The quantity of the item available for selling. Mandatory only if Item Type is Inventory and Track Inventory Quantity On Hand is set to true.
* Asset Account Id - The income account ID in QuickBooks Online. Mandatory only if Item Type is Inventory and Track Inventory Quantity On Hand is set to true.
* Expense Account Id - The income account ID in QuickBooks Online, such as Cost of Goods Sold. Mandatory only if Item Type is Inventory and Track Inventory Quantity On Hand is set to true.
* Inventory Start Date - The start date of inventory tracking in the format 2015-01-01. Mandatory only if Item Type is Inventory and Track Inventory Quantity On Hand is set to true.
* Is Item Active - Set this property to true if the item is active.
* Item Description - The description of the item.
* Unite Price - The unit price of the item.
* Item - Includes the item returned.

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
