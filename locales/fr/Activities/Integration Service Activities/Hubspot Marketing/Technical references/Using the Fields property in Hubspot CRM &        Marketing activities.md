# Using the Fields property in Hubspot CRM &
        Marketing activities

In Get [object] activities, Hubspot does not return all the fields for objects by default. This occurs in the following Hubspot CRM & Marketing activities:

* Get Contact
* Get Company
* Get Product
* Get Deal

For example, for the Get contact activity, Hubspot CRM does not return all fields.
            Therefore, you need to pass the field names within the activity, using the optional
                Fields property.

How to retrieve property fields in Hubspot

1. In your HubSpot app, click the Settings icon:
2. Go to Data Management > Properties:
3. Select any of the properties listed:
4. Click the Code icon to view the internal name of the selected property:
5. Copy and paste this internal name in your Hubspot activity, in the Fields property. You can add multiple fields using a comma separator.
