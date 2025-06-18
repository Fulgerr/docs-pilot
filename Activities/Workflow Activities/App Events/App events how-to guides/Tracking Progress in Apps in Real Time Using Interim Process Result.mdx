# Tracking Progress in Apps in Real Time Using Interim Process Result

# Overview

To better understand how interim process results work, you can build the example described on this page.

By following this procedure, you will build a process in Studio that involves sending intermediate data to UiPath Apps using the Send Interim Result activity. You will build an app that will display a progress bar (using Slider control) in real-time as the tables are populated with data.

For this example we will build the following:

* An automation process
* An app using UiPath Apps

# Tutorial

Building the process

The process from this tutorial is used to demonstrate the capabilities of the Interim Process Result activity. The process takes two inputs:

* The number of items to process.
* The number of steps in each item.

The process runs with these inputs and sends the following interim results to the app:

* The current item being executed by the process.
* The current step in the item.
* The progress percentage for the specific item.
* A table populating each step, including a timestamp.

1. Open Studio and create a new Process.
2. Create the following arguments:Argument nameDirectionArgument typeDefault valuein_number_of_stepsInInt323in_number_of_itemsInInt322out_progress_percentageOutInt32-out_progress_datatableOutDataTable-out_current_stepOutInt32-out_current_itemOutInt32-
3. Drag a Sequence to the Workflow Designer.Create the following variables:Variable nameVariable typeDefault valuevar_itemInt321var_stepInt321var_percentageInt320
4. Add a Build Data Table activity inside the Sequence container.Add the out_progress_datatable argument in the DataTable field. Add four columns to the table:Item Number as Int32. Step Number as Int32. Time as DateTime. Progress % as Int32. Add a While activity below the Build Data Table activity and configure it as below:
5. Add var_item<=in_number_of_items in the Condition field.

* Add a While activity in the Body.Add var_step<=in_number_of_steps in the Condition field. Add an Add Data Row activity in the Body.Add {var_item,var_step,now(),(var_step/in_number_of_steps) * 100} in the ArrayRow field. Add out_progress_datatable in the DataTable field. Add a Delay activity below Add Data Row. Add 00:00:02 in the Duration field (2 second). Add a Send Interim Result activity below Delay.Add out_progress_datatable in the Argument name field and out_progress_datatable in the Argument value field. Add a Multiple Assign activity below Send Interim Result.Add var_percentage in the To field and Convert.ToInt32((var_step/in_number_of_steps) * 100) in the Value field. Add a Send Interim Result activity below Multiple Assign.Add out_progress_percentage in the Argument name field and var_percentage in the Argument value field. Add a second Send Interim Result activity before the previous one.Add out_current_step in the Argument name field and var_step in the Argument value field. Add a third Send Interim Result activity.Add out_current_item in the Argument name field and var_item in the Argument value field. Add a Multiple Assign activity below the last Send Interim Result activity.Add var_step in the To field and var_step+1 in the Value field. Add a Multiple Assign activity below the last While. Add var_step in the To field and 1 in the Value field. Add var_item in the To field and var_item+1 in the Value field. Add var_percentage in the To field and 1 in the Value field.

Result

In the end, your workflow should look similar to the one below.

![1e532e5-Workflow=GUID-15DA9FAD-1102-4B8D-A405-FCE588BDD58F=1=en=Default](/images/1e532e5-Workflow=GUID-15DA9FAD-1102-4B8D-A405-FCE588BDD58F=1=en=Default.jpg)

Building the app

The app from this tutorial receives information from the process built before. The app displays the following interim results received from the process:

* The current item being executed by the process.
* The current step in the item.
* The progress percentage for the specific item.
* A table populating each step, including a timestamp.

Before you start building your app, make sure that the automation process from the Building
                    the process section is created and published in your Orchestrator.

1. Open your already existing application or start a new one.
2. Reference the process from the Prerequisites section.
3. Add a container to the page.
4. Add a Header control in the container. Add App - Interim Process Results in the Text property. This will be the app title.
5. Add a second Header control below the previous one. Add Input in the Text property. Make sure that the font size is a bit smaller (for example, 20 px).Add a Textbox control inside the container. Add the in_number_of_items argument from the previously referenced process in the Value binding property. Add 2 in the Default text property and Number of items (iterations) in the Label property.Add a Divider to the right of the Textbox control.Add a Textbox control to the right of the Divider. Add the in_number_of_steps argument from the previously referenced process in the Value binding property. Add 3 in the Default text property and Number of steps in item in the Label property.Add a Button control to the right of the Textbox. Add Start Process in the Text property. Configure a Start process rule for the Clicked on event. Configure the rule to start the process referenced at the beginning and mark it as Attended.
6. Add a Divider below the container.
7. Add a Header below the divider. Add Interim Process Result in the Text property.
8. Add a Container below the header.
9. Add two more Container control one inside each other.Add a Label inside the last container. Add Current item being processed: in the Text property.Add a second Label next to the previous one. Add out_current_item argument from the referenced process in the Text property.
10. Add a Container below the last one.Add a Label inside the last container. Add Current step: in the Text property.Add a second Label next to the previous one. Add out_current_step argument from the referenced process in the Text property.
11. Add a Divider to the right of the last two containers.
12. Add a Container to the right of the Divider and another Container inside the first one.Add a Label control and add Step completion % : in the Text property.Add two more Container controls, one inside each other, and a Label control and a Slider control in the last one. Add the out_progress_percentage argument of the process in the Text property of the Label. Configure the Slider properties: Slide increment to 0 and Default value to 0.
13. Add a Divider below.
14. Add a Table control below the divider.Add the out_progress_datatable argument of the process in the Data Source field.Add an Item Number column and provide Item Number from the datatable process as Source.Add an Step Number column and provide Step Number from the datatable process as Source.Add a Time column and provide Time from the datatable process as Source.Add a Progress % column and provide Progress % from the datatable process as Source.

Result

In the end, your app should look similar to the one below:

![c7c39b3-Final_App=GUID-29AECC1B-1FCF-4694-8723-81D752B81DC1=1=en=Default](/images/c7c39b3-Final_App=GUID-29AECC1B-1FCF-4694-8723-81D752B81DC1=1=en=Default.png)

Result

When previewing the app, you can press the Start Process button.

The app will provide the following interim information for the process:

* Current item being processed
* Current step
* Step completion (percentage)
* Table with information regarding the item, step number, timestamp, and progress.

You can also change the number of items or the steps in an item using the textfields.

# Sample Workflow

To check the complete workflow and app or to have a future reference, download the files from
                    here.
