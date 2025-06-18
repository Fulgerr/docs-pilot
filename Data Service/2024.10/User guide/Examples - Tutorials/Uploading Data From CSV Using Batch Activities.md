# Uploading Data From CSV Using Batch Activities


## Tutorial Overview

Batch activities accept and return a List<T> of entity records as
            input and output for creating, updating, or deleting multiple items.

These activities can accept up to 1,000 records in a single call and each activity call
            will count as one call against your service usage quota.

To understand how to use batch activities in Data Service, download the example below and
            follow the steps in this tutorial. The example creates 50 records for an entity via 2
            batch activity calls.

Download
                example

To run the downloaded example:

* Connect to your UiPath
                organization.
* Make sure Data Service is enabled in
                your tenant.
* Create the entity from the example.
* Connect the corresponding
                Orchestrator tenant to the UiPath ® Robot.

Workflows containing batch activities typically include a For Each loop to iterate
            thought the records list, and to populate the List<T> list
            variable. The variable is then passed to the batch activity as input.


## Collecting Data

The States.csv file contains the records that the batch activity adds to your Data Service entity.

To run the batch activity, create an entity that has the same fields as your data.

![74726f7-states=GUID-D4E7E24B-768B-42DA-A991-E6AF147F6305=1=en=Default](/images/74726f7-states=GUID-D4E7E24B-768B-42DA-A991-E6AF147F6305=1=en=Default.png)


## Creating the Entity

Go to the Data Service instance of your tenant.Create New Entity called US States with the following fields:


## Designing the Workflow

Open Studio and start a new process.Make sure the
                        Data Service enabled tenant is connected to the UiPath® Robot.Install the UiPath.DataService.Activities pack.Import the previously created US States entity inside your workflow in
                    Studio.To read the data from the States.CSV file to a data table,
                    drag and drop the Read CSV
                    activity.In the Read from
                                file field, enter the name of the CSV file. In the Output to
                            field, set a name for the data table. Set a variable to store the batch size (i.e, how many records to alter in a
                    call). Use the Assign activity.The batch
                        size is limited to 1,000 records. To alter more than 1,000 entries, set the
                        batch size to 1,000.Set a variable to store the list of records (for example,
                        listUSStates). Use the Assign activity and
                    initialize the list type to New <List(Of USStates)>. This
                    creates an empty list, ready to be populated with the data from the CSV
                    file.To iterate through every row in the previously created data table (step 4), use
                    the For Each Row
                            in Data Table activity.For each row in the data table, create a new variable (i.e, currState =
                        New USStates) and set the values for the US States entity fields
                    (i.e, State, DateofAdmission,
                        Population). Use the Multiple Assign
                    activity.To add the current state to the listUSStates list, use the
                        Append Items
                            To Collection activity.After each addition, check if the list size has become equal to the batch size
                    you set at step 5. Use the If activity with
                    the condition listUSStates.Count = batchSize. The workflow
                    continues to add records until the If Condition is met.When the list size matches the batch size, create the records using the Create Multiple Entity Records activity. In
                    our example, this creates 25 records using a single call.Clear the collection after each batch of records, so the count for the next
                    batch starts from zero.Outside the For Each loop, check if there are any remaining records in
                    the collection and create them.This final step is important to cases where the records count isn't a
                        multiple of the batch size. For example, if the collection contains 80
                        records, the If Condition at step 10 is satisfied for 25, 50, and 75
                        records (multiples of 25, the example batch size). The remaining 5 records
                        are resolved by the last If Condition outside the For Each
                        loop.

