# Technical references

This section includes useful information you may require when working with SAP BAPI.

## Building array inputs for table input
        types

In the  activity,
            table input types for BAPIs are represented as array inputs. This requires you to
            manually build the objects. We are actively working on a solution to simplify array
            mappings and improve the overall experience.

This section explains how to build equivalent array inputs for a native type table in SAP
            BAPI, with examples in Studio Desktop version 2023.10 and Studio Web.

We are going to explain this topic with the example of a BAPI_PO_CREATE
            object.

# Studio Desktop (Language C#)



1. In the activity, select the BAPI_PO_CREATE object.
2. After you select the object, the rest of the fields are automatically retrieved.
3. For a table of PO_ITEMS, for example, you want to build an equivalent array of objects. Select the Plus + button menu next to the PO_ITEMS field to open the Expression Editor.
4. In the Expression Editor window, type UiPath.IntegrationService.Activities.SWEntities. This loads a list of items. You can use IntelliSense to assist with traversing.
5. From the list, choose the item that corresponds to your InArgument (in this case, bapis_sub_execute_TABLES_sub_PO_ITEMS_CREATE). This item is always unique for a table.
6. Next, type a period (.), then choose Bundle.bapis_sub_execute_TABLES_sub_PO_ITEMS_Create from the available list. Add two pairs of brackets at the end: []{}.
7. At this point, the array is instantiated and you’re ready to construct the object within it.The CEBA75DCD15 ID is a unique identifier generated on our side, specific to your SAP BAPI connection for each object. The ID is unique to each object.
8. Copy the line from the previous step and add parentheses () at the end. Now, you're ready to map the properties within the object.
9. Enter a period (.) to search all the properties within the object.
10. Map the properties as needed and select Save.

Sample:

new UiPath.IntegrationService.Activities.SWEntities.CD6D3C0011F_bapis_sub_execute_TABLES_sub_PO_ITEMS_Create_CFXVARGYNSGMNQOY1M9XDRN8OK3VIHY.Bundle.bapis_sub_execute_TABLES_sub_PO_ITEMS_Create[] {
    new UiPath.IntegrationService.Activities.SWEntities.CD6D3C0011F_bapis_sub_execute_TABLES_sub_PO_ITEMS_Create_CFXVARGYNSGMNQOY1M9XDRN8OK3VIHY.Bundle.bapis_sub_execute_TABLES_sub_PO_ITEMS_Create()
    {
        PO_ITEM = 00001,
        PUR_MAT = "TG12",
        PLANT = "1710"
    },
    new UiPath.IntegrationService.Activities.SWEntities.CD6D3C0011F_bapis_sub_execute_TABLES_sub_PO_ITEMS_Create_CFXVARGYNSGMNQOY1M9XDRN8OK3VIHY.Bundle.bapis_sub_execute_TABLES_sub_PO_ITEMS_Create()
    {
        PO_ITEM = 00002,
        PUR_MAT = "TG12",
        PLANT = "1710"
    }
}

# Studio Web (Language VB)

Let’s take the same example and see how we can achieve the result in Studio Web.

In the Execute BAPI activity, select the
                            BAPI_PO_CREATE object. After you select the object, the rest of the fields are automatically
                        retrieved. For a table of PO_ITEMS, for example, you want to build an
                        equivalent array of objects. Select the See more button menu to open the Expression
                            editor. Type New,
                        followed by a space, and then bapis. This triggers
                        IntelliSense to display a list of items. From the list, select the item
                        matching your InArgument, in this case
                            bapis_sub_execute_TABLES_sub_PO_ITEMS_CREATE. This item
                        is always unique for a table.Next, add a pair of curly
                        brackets {}. Inside the brackets, type a period
                            .. You can then see the available properties within the
                            object.Map the properties as needed
                        and select Save.

Sample:

{ 
    New bapis_sub_execute_TABLES_sub_PO_ITEMS_Create With 
    { 
        .PO_ITEM = 00001,
        .PUR_MAT = "TG12",
        .PLANT = "1710"
    },
    New bapis_sub_execute_TABLES_sub_PO_ITEMS_Create With 
    { 
        .PO_ITEM = 00002,
        .PUR_MAT = "TG12",
        .PLANT = "1710"
    }
}


## Frequently asked questions

# Is the SAP BAPI activity package compatible with Windows and Cross-platform
                projects?

Yes, the SAP BAPI activity package is compatible with both Windows and cross-platform
                project types in Studio Desktop.

# Why don’t I see all the required properties of a BAPI on the activity
                canvas?

When a property of a particular BAPI is of type structure, the input (structure)
                itself is not displayed on the Execute BAPI activity canvas, but its
                underlying properties are shown. Even if certain properties within the structure are
                required by the BAPI, they are still displayed as optional on the primary canvas,
                often leading to a cluttered activity interface. SAP does not indicate which fields
                are required within the structure and only provides information about the mandatory
                structure. Therefore, you must manually identify and map the required fields
                accordingly. You can read more about this limitation in this SAP community thread:
                    BAPI Mandatory Fields.

# Why don’t I see table input types for the BAPIs?

In the Execute BAPI activity, table input types for BAPIs are represented as
                array inputs. This requires you to manually build the objects. See the examples
                provided in .

We are actively working on a solution to simplify array mappings.

# Why can’t I see all my inputs on the canvas?

By default, only the required fields are shown on the main activity canvas. You can
                access and configure optional fields in the Manage Properties panel. Select
                the additional inputs you need and use the Update fields option to bring them
                onto the primary canvas.

# Is invoking RFC supported?

Invoking RFC is not currently supported in the SAP BAPI activity package.

# Are there any installation
                prerequisites for using the SAP BAPI activities?

No installations are needed to use the new SAP BAPI activities from Integration
                Service. You need UiPath Studio version 2023.10 or higher or you can begin creating
                your automations directly in Studio Web.

# How can I determine whether the Execute BAPI activity was successful?

All BAPIs include a _RETURN array within the output Tables
                section. This provides outputs such as LOG_NO,
                    CODE, MESSAGE, etc. Check these values to
                assess the success or failure of the BAPI execution.



# Can I use an IP address instead of a DNS name for Hostname?

Using an IP address offers a significant advantage: uniqueness. When you use a DNS
                name such as mycompany.com/sap/bapi, you depend on DNS translation,
                routing, and other network components. This can lead to potential issues and network
                troubles. Therefore, we recommend you use IP addresses to ensure a more reliable
                connection creation experience.

# Can I use the SAP BAPI activity
                from Integration Service if my SAP application is hosted on-premises or in a
                dedicated cloud?

Yes. If your SAP S/4HANA system is hosted on a cloud platform such as Azure, you
                should have a public IP address, which is sufficient for access. If your SAP system
                is on-premises, you need to allow access from specific external IP addresses, which
                involves configuring your firewall settings.

# Does the system handle commits for BAPIs automatically?

Yes. Because we use the SAP Java Connector, the system automatically detects if a
                BAPI requires a commit and triggers BAPI_TRANSACTION_COMMIT to
                ensure the transaction is saved. This eliminates the need for manual
                intervention.

