# Working with Data components

When you design forms, you can use Data components
            to handle the way data is visualized and saved. This step-by-step tutorial shows you how
            to bind data from CSV files or Dictionary variables to Data components inside
                forms.See the following tutorials to learn how to work with Data
                components:Data Grid

### Data Map

This tutorial demonstrates how to create and work with a Data Map
            component. You will learn how to pass data to it, update it dynamically while the form
            is displayed, and extract the data. In this example, we will focus on currency rates,
            using a dictionary with key-value pairs representing different currencies and their
            equivalent values in USD. By interacting with buttons, you can extract and modify the
            currency rates in real-time while the form remains visible.

Create a new form and add the following components: Add a Data Map component. Remember the Property Name you
                            assign to it, because you will use it to extract and dynamically update
                            the data in the component.In this example, use dataMap as the Property
                                Name.Add a Button component to extract the data in the component. Set
                            the Action of the button as Event.Name the button Extract data.Add another Button component to change the data in the
                            component. Set the Action of the button as Event.Name the button Update value.In the Main workflow create a dictionary variable and add key-value
                    pairs to it.In this example, use the key-value pairs shown in the image below.Add a Show Form activity with Continue workflow execution
                    enabled. This allows the form to display while other trigger workflows run
                    simultaneously.In the Arguments collection, pass the previously created
                            dictionary variable to the Data Map component in your form.Add a Run Local Triggers activity to enable all triggers in your
                    project.Create a trigger workflow for updating values in the Data Map at runtime.Name the trigger workflow fieldChangedTrigger.Add a Form trigger activity, and set the Event as the
                            button used for updating the Data Map values.In this example, set the Event to Update value
                                clicked.Add a Get Form Values activity to extract the current values of
                            the Data Map into a dictionary variable.In this example, save the current values to a variable named
                                dataMap2.Use a For Each activity to iterate through each key-value pair
                            and update them with a specific value.Inside the For Each activity, add an Assign activity to
                            initialize a new key-value pair that you want to update the Data Map
                            with.  Save the pair to a variable named newItem using
                                    the Save to field.Specify the new key-value pair using the Value to save
                                    field: New KeyValuePair(Of String,
                                        String)(currentKeyValuePairOfTextAndText.Key,
                                        currentKeyValuePairOfTextAndText.Value).Within the For Each activity, add an If activity to
                            conditionally modify the EUR pair. Configure the
                            condition using the object used to iterate through the Data Map.In this example, configure the following condition:
                                currentKeyValuePairOfTextAndText.Key =
                            "EUR"Inside the Then body of the If activity, add an
                                Assign activity to update the newItem value
                            with the desired new value.Use the Save to field to assign the
                                        newItem variable.Use the Value to save field to provide the new value of
                                    the pair: CType(New KeyValuePair(Of String,
                                        String)("EUR", "1.19 USD"), KeyValuePair(Of String,
                                        String)).Add another Assign activity to map the new value back into the
                            dictionary.Use the Save to field to update the corresponding
                                    key-value pair in the dataMap2 variable.Use the Value to save field to assign
                                        newItem.Value to
                                        dataMap2(newItem.Key).At the end of the workflow, add a Set Form Values activity to
                            update the Data Map inside the form with the modified values.Create a trigger workflow to extract values from the Data Map at runtime.Name the trigger workflow extractDataTrigger.Add a Form trigger activity and set the Event as the
                            button used for data extraction.In this example, set the event to Extract data
                                clicked.Add a Get Form Values activity to extract the current values of
                            the Data Map at runtime. Save the Data Map into a dictionary
                            variable.Use a For Each activity to iterate through each key-value pair
                            in the Data Map and output them in the console.

In the animated image below, witness the dynamic update of
            values within the Data Map as you click the Update value button.

Workflow exampleTo follow the steps and try out the tutorial yourself, check out the sample project
                    here.


### Data Grid

This tutorial provides step-by-step instructions on how to create
            and use a Data Grid component. You will learn how to pass data into the Data Grid,
            update it in real-time, and extract the information. The tutorial utilizes a CSV file
            for data input into the Data Grid.

This automation uses a CSV record of students and their
            exam results and displays it inside a form, where you can update the exam results and
            their corresponding status ("passed" or "failed") in real-time. Also, the automation
            allows you to trigger the extraction of the record and output in the console.

Create a new Form. For this example, name it DataGrid.Add a Data Grid component inside the form.Add corresponding components for each column in the CSV file that you want to pass into the form.For this example, add a Text Field (fullName), a Checkbox (seniorYear), and a Drop-down List (examResults).Note that the Property Names of the components are case-sensitive
                                and should precisely match the column names in the CSV file, as well
                                as the column names of Data Tables. Additionally, add an extra Text Field inside the Data Grid named Status. This will be used for form updates.Add a Button outside of the Data Grid. This button will trigger the extraction of the Data Grid.In the Main workflow, add and configure the following activities:Read CSV - Input the CSV file containing the data for the Data Grid. Create a DataTable variable to store the output CSV file.For this example, name it dataGridDataTable.Go back to your form and set the Property Name of the Data Grid
                            component as the DataTable variable you created at substep a, where you
                            store the output CSV file. For this example, set the Property
                                Name as dataGridDataTable.Show Form - Select the DataGrid form, and pass the data
                            from the DataTable to the Data Grid. In the Arguments dictionary, add an entry for the
                                dataGrid argument with the type
                                System.Data.DataTable and direction
                                In and set the value to
                                dataGridDataTable.KeyTypeDirectionValuedataGrid (the Property
                                                  Name of the Data Grid)System.Data.DataTableIndataGridTableRun Local Triggers - Enable all triggers inside the project.Create a trigger workflow named fieldChangedTrigger, responsible for setting the status of a student as failed or passed, according to their exam result.Add a Form trigger activity, and set the event when the examResults field changes.Add a Build Data Table activity, to create a DataTable where the DataGrid values will be stored when the trigger fires. Name the output variable as editedDataTable.Add a Get Form Values activity to retrieve the Data Grid into the DataTable you created at substep b (editedDataTable).Add a For Each Row activity, to iterate through each exam result and set the Status field accordingly. Input the DataTable you created at substep b (editedDataTable) in the Data Table field.In the body of the For Each Row activity, add an If activity, and set the condition as CurrentRow("examResults").ToString="f".Note that Values are case-sensitive. This is the reason why we used lower-case "f"
                            inside the condition, instead of upper-case "F".In the Then body, add an Assign activity to assign the status of the student as "failed" when their exam result is F.Save toValue to saveCurrentRow("status")"failed"In the Else body, add an Assign activity again, this time for the situation where the status of a student is "passed", because their exam result is not F.Save toValue to saveCurrentRow("status")"passed"Outside the For Each Row activity, add a Set Form Values activity, to pass the updated Data Grid back into the form. In the Key field, use dataGrid with the TypeSystem.Data.DataTable and set the value to editedDataTable.KeyTypeValuedataGridSystem.Data.DataTableeditedDataTableCreate a trigger workflow named extract clicked, responsible for extracting the DataGrid and outputting it as String in a CSV format.Add a Form trigger activity and set the event when the extract button is clicked.Add a Get Form Values activity to extract the Data Grid into a DataTable. Add an entry in the Arguments dictionary for dataGrid with the TypeSystem.Data.DataTable and set the Value as output.dataGridSystem.Data.DataTableoutputAdd an Output Data Table activity to output the extracted Data Grid as String in a CSV format. In the Data Table field input the variable that you used to extract the Data Grid at substep b (output). Input a String variable that you will log in the Output console in the Text fieldAdd a Log Message activity to output the extracted Data Grid.Add a Stop Local Triggers activity, to close the form and stop the execution, assuming that you don't want to interact with the form after you extract it.

The image below shows the result of updating data while the form is still showing.

Workflow exampleTo follow the steps and try the tutorial yourself, see the sample workflow.

