# Objects and Attachments

# Overview

The purpose of this guide is to help you create a working sample that uses the
                following ServiceNow activities:

* Insert ServiceNow Record
* Get ServiceNow Record
* Delete ServiceNow Record

This working sample enables you to quickly verify the connection to your ServiceNow
                instance and get familiar with the activity's input/output datatypes.

After completing the steps in this guide, you'll have an automation sequence that
                does the following:

1. Establishes a connection to your ServiceNow instance.
2. Creates a new ServiceNow incident (Insert Record).
3. Retrieves the record and outputs the expected error message (Get Record, If).
4. Deletes the created incident (Delete Record).

# Prerequisites

Before you begin:

1. Complete the ServiceNow Authentication steps.
2. A local file to attach to a ServiceNow record.

# Steps

Build your project

1. Follow the steps described in the connector documentation to establish a connection.
2. Add the ServiceNow Scope activity. Click the Configure button, select and test the desired connection, then click Save.
3. Add the Insert ServiceNow Record activity inside the ServiceNow Scope activity.Click the Configure button inside the Insert ServiceNow Record activity. In Select Object drop-down list, select Incident. Create and enter a String variable for the sys_idValue (e.g., sysID) Using the Add Single Field textbox, enter short_description. Enter a short_descriptionValue (e.g., "UiPath-Attachment"). Click Done. Create and enter a ResponseStatus variable for the ServiceNowStatus value (e.g., insertRecordResponse).
4. Add a Write Line activity after the Insert Record activity. Enter the following Text: "Record created: "+insertRecordResponse.Success.ToString+" | sys_id: "+sysID (where sysID is the variable created for the sys_idValue field above).

Test your project

1. Add the Get Record activity after the Delete Attachment activity.Click the Configure button inside the Insert ServiceNow Record activity. In the Select Object drop-down list, select Attachment. In the sys_idValue field, enter the sys_id variable you created for the Insert Record activity. Click Done. Create and enter a ResponseStatus variable for the ServiceNowStatus value (e.g., getRecordResponse).
2. Add an If activity after the Get Record activity.In the Condition property, enter getRecordResponse.Success=False And getRecordResponse.Message.Contains("No Record") to determine if the attachment record was successfully deleted by checking the error message (where getRecordResponse is the variable your created for the ServiceNowStatus property above). In the Then statement box, add a Write Line activity. In the Text property, enter "Test passed: "+getRecordResponse.Message. Add the Delete ServiceNow Record after the Write Line activity.Click the Configure button inside the Add Attachment activity. In the Select Object drop-down list, select Incident. In the Id property, enter the sys_id variable you created for the Insert Record activity (e.g., sysID). Create and enter a ResponseStatus variable for the ServiceNowStatus value (e.g., deleteRecordResponse). Add a Write Line activity after the Delete ServiceNow Record activity. In the Text property, enter "Record deleted: "+deleteRecordResponse.Success.ToString. In the Else statement box, add a Write Line activity. In the Text property, enter "Test failed: "+getRecordResponse.Message.
3. Click Run and verify the Output window includes the expected write line values.

You're done!
