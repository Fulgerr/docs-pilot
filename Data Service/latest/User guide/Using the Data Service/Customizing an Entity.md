# Customizing an Entity


## Introduction

Data Service contains System built-in fields. When you create a new entity a set of default fields is automatically created still you can customize the entities you defined by adding specific fields.

![89378c7-Default_fields=GUID-F70EFAE8-9242-4342-A1FA-E1D75011F937=1=en=Default](/images/89378c7-Default_fields=GUID-F70EFAE8-9242-4342-A1FA-E1D75011F937=1=en=Default.png)


## Field Types

You can create the fields of the following field types.

* Text : this field can be used to store a small amount of text.
* Number : this field can be used to store a number value. Number values can be positive or negative. You must specify the number of decimal places that you want to use.
* Yes/No : this field is used to choose between a Yes or No value.
* Date-Time : this field is used to store a value that contains a date and time. A date picker can be used to select a date and time.
* Relationship : this field is used to create a relation between two entities.
* Choice Set : this field is used to store a list of enumerated values from which one or more values can be selected.
* File: this field is used to store a file.
* Auto-number: this field is used to automatically increase record indexes.

Each type of field requires different details that must be specified. Please check the specific page under Entity Field Types to find out more.


## Creating Fields

To add fields to your entity data:

In the Entities list, select the entity for which you want to add a field. The Fields tab is displayed with the list of fields defined for the entity.Click on Create New Field. The Create Field wizard opens.Enter a Display Name for the new field. The Display Name is the name displayed when you import the entity in Studio. This field can be modified after the entity is created.Enter a Name for the new field. The Name is can be alpha-numeric, but it must start with a letter. It must have between 3 and 30 characters.The Name field is automatically populated with the same value provided for the Display Name. You can only change its value during the entity creation process. Once the entity is created, the Name field cannot be edited.Select the field Type using the dropdown list.To enforce users to provide a value for the field, select the Required checkbox.To enforce unique values for the field records, select the Unique values only checkbox.The option is available for Text and Number field types.When needed, use the maximum decimal places configured for numbers. Otherwise, Data Service rounds up the number to the maximum value of decimals, causing uniqueness failure. For example, if you set a precision of three decimals and input values such as 3.015 and 3.0148, the latter value is rounded up to 3.015, leading to uniqueness failures.The option is case insensitive, meaning "Unique Value" and "unique VALUE" are identified as duplicates.Click More details to configure optional field record properties, such as:Maximum LengthFor Text fields, set the maximum number of characters a user can provide.By default, up to 200 characters are allowed.Maximum ValueFor Number fields, set the maximum value a user can provide.Default maximum value is 1,000,000,000,000.Minimum ValueFor Number fields, set the minimum value a user can provide.Default maximum value is -1,000,000,000,000.Decimal PlacesFor Number fields, set how many decimal digits a user can provide.Default value is 2, which allows numbers with two decimal digits, such as 23,45.Default ValueSet a default value in case users do not provide data.DescriptionAdd a description for the field.Role based field accessSelect this option to restrict data access by granting explicit permissions.Optionally, to keep the Create Field wizard open, select the Create another checkbox. This helps you create multiple fields in the selected entity faster, as it skips step 2 of this procedure.Click Save.

The new field is displayed in the Fields list.


## Updating the Fields

To update the fields you created, follow the steps below:You cannot update system built-in fields.You cannot change the Name and the Type of customized fields.

In the Fields tab, hover over the field that you want to edit.Click on the Edit field icon corresponding to the item. This is available on the right-hand side.The Edit Field panel is displayed. Apply your updates.If the field was created with the Unique values only option on, you can turn it off, allowing duplicates once again. Be aware that clearing the Unique values only checkbox refrains you from selecting it again later.Click Save.


## Deleting Fields

To delete fields that you have created follow the below steps:You cannot delete system built-in fields.

In the Fields tab, hover over the field that you want to delete.Click the More options menu at the end of the field row, then select Delete.To activate the Delete button, enter the display name of the field in the Delete Field dialog.Click Delete to confirm the action.


## Enabling or Disabling Role Based Field Access

Role based field access can be used to restrict data access. It is possible to enable Role based field access for custom fields only, it is not available for system built-in fields.After the Role based field access option is enabled for a field, the roles need to be updated to grant explicit permissions for users to access the field. See Manage access for more information.Standard Roles will no longer have access to data in fields that are enabled for Role based field access. Users who need access to this data will need to be assigned a Custom role that grants permissions to access the data in the field.

In the Fields tab, hover over the field for which you want to enable (or disable) Role based field access.Click the More options menu at the end of the field row, then select the Enable role based field access (or the Disable role based field access) option from the menu.Click on Enable (or Disable) to confirm the action.A confirmation message is displayed. See illustration below.When you enable Role based field access for a field, all users that have existing roles assigned that do not provide field level permissions will no longer have access to the data in the field.Click on Manage Roles to open the Roles tab of the User Management page. Here you can update the Custom Roles to grant permissions for the field access.

