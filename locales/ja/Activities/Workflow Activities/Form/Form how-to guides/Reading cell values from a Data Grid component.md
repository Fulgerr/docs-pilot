# Reading cell values from a Data Grid component

You can read the cell values from a Data Grid
            component. For example, you will learn how to dynamically sum all values in a Data
                Grid column. For any new item, the Total Quantity field displays the new
            total value.

Create a new form and add a Data Grid component.Inside the Data Grid, drag and drop a Text Field component and a
                        Number component. Name them Item and Quantity.For the further logic to work, ensure that the Property Names for the
                    two components are exactly like the ones below:Text Field - textFieldNumber - numberAdd another Text Field component in the form, but outside the Data
                        Grid. Name it as Total Quantity and set the Property Name
                    as lastNumber.In the Display tab of the Total Quantity text field, select
                        Disabled. This makes the component read-only.In the Logic tab of the Total Quantity text field, configure a
                    logic for summing up the data grid number cells into this field.Select Add Logic to configure the trigger and the action to sum
                            up the values.In the Trigger section, and in the Logic Name field,
                            enter a name for your logic.Select the trigger Type as Simple. Leave the rest of the
                            fields empty so the logic triggers for any change in the Data
                                Grid.In the Actions section, and in the Action Name field,
                            enter a name for your action. In this case, the triggered action is to
                            update the total value, so we used updateValue as the
                            action name.Select the Value action type, and then enter the following
                            script in the Value (Javascript) section:var result = 0;
for (var i = 0; i < data.dataGrid.length; i++) {
  result += +(data.dataGrid[i].number);
}
return result;The code snippet above iterates through the existing values in the
                                Data Grid and sums them up. Any new value restarts the
                            iteration, thus updating the total value.Save the action and the logic, and then the component.

At runtime, when you add a new item to the grid, the
                Total Quantity value updates.

Workflow exampleTo check the complete workflow and try the tutorial yourself, download the sample workflow.
