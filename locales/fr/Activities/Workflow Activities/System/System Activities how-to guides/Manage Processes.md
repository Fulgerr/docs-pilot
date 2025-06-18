# Manage Processes

The example below explains how to start an operation, verify it, and then close it by using activities such as Get Processes and Kill Process. You can find these activities in the UiPath.System.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variables:Variable NameVariable TypeDefault ValueidentifyProcessesSystem.Collections.ObjectModel.Collection<System.Diagnostics.Process>closeProcessBooleanTrue
3. Drag an Open Browser activity inside the Sequence container. Type the web address in the Url field. For this example, the address is google.com.
In the Properties panel, select the check box for the NewSession option. This starts a new session of the selected browser.
4. Drag another Open Browser activity below the first one. This opens a second browser instance. Type the web address in the Url field. The used address is the same as before, google.com.
In the Properties panel, select the check box for the NewSession option. This starts a new session of the selected browser.
5. Place a Get Processes activity below the Open Browser activity. In the Properties panel, add the variable identifyProcesses in the Processes field.
6. Drag a For Each activity below the Get Processes activity. Add the value process in the For Each field.
In the Properties panel, select the System.Diagnostics.Process from the TypeArgument drop-down list.
Add the variable identifyProcesses in the Enter a VB expression field.
7. Place an If activity inside the Body of the For Each activity. Add the expression process.ToString.Contains("explore") in the Condition field.
8. Drag a Write Line activity inside the Then field of the If activity. Add the value process.ToString in the Text field.
9. Place another If activity below the previously added If activity. Add the expression process.ToString.Contains("iexplore") And closeProcess in the Condition field.
10. Drag a Message Box activity inside the Then field of the If activity. Add the expression "An IE process will be killed" in the Text field.
Select the check box for the TopMost option for always having the message displayed in the foreground.
11. Place a Kill Process activity below the Message Box activity. In the Properties panel, add the value process in the Process field.
12. Drag an Assign activity below the Kill Process activity. In the Properties panel, add the variable closeProcess in the To field.
Add the value False in the Value field.
Here is how the For Each process should look:
13. Place a Message Box activity below the For Each activity. In the Properties field, add the expression "All the IE processes will be killed" in the Text field.
Select the check box for the TopMost option for always having the message displayed in the foreground.
14. Add a Kill Process activity below the Message Box activity. This activity closes all the open web browsers. In the Properties panel, add the value iexplorer in the ProcessName field.
15. Run the process. Two Internet Explorer windows are opened, verified and then closed, one by one.

Here you can download an example.
