# Try Catch

System.Activities.Statements.TryCatch

# Description

Catches a specified exception type in a sequence or activity, and either displays an error notification or dismisses it and continues the execution.

There is no limit to how many Catches you can use in a Try Catch activity. This activity requires at least one catch to be added.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Configuration

The activity body contains three fields:

* Try - The activity performed which has a chance of throwing an error.
* Catches - The activity or set of activities to be performed when an error occurs.Exception - The exception type to look for. You can add multiple exceptions.
* Finally - The activity or set of activities to be performed after the Try and Catches blocks are executed. This section is executed only when no exceptions are thrown or when an error occurs and is caught in the Catches section.If an activity is included in the Try section, and the value of the ContinueOnError property is True, no error is caught when the project is executed.The Try Catch activity does not catch fatal exceptions such as:FatalException OutOfMemoryException ThreadAbortException FatalInternalException

# Properties

Common

* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.Pressing “Ctrl + T” places the selected activity inside the Try section of a Try Catch activity.

# Example of using the Try Catch activity

To better understand the importance of the Try Catch activity, we created an automation that gathers multiple names from a random name generator website and writes them in an Excel spreadsheet.

You can download the initial workflow here.

Due to a technical limitation, the reported exception Source in a Try-Catch scenario might differ if the exception occurs inside of an invoked workflow.

A Build Data Table activity is used to create a table in which to store the gathered names. Another workflow is invoked to read the web data. Finally, an Excel application scope activity is used to write the gathered information in the Excel file.

First of all, let’s run the automation to check for any errors. Notice that a Workflow Exception window is displayed. The Exception Type field tells us what the problem is. This is used in the Catches section of a Try Catch as the exception type to look for during the workflow execution.

![9051786-exception_window=GUID-0342A1C4-2E0D-4D04-853F-DDCCEF607420=1=en=Default](/images/9051786-exception_window=GUID-0342A1C4-2E0D-4D04-853F-DDCCEF607420=1=en=Default.png)

As you can see in the screenshot above, when running the example workflow, there seems to be a problem with the Attach Browser container selector. The issue is that the selector fails to identify the browser window with the “Generate a Random Name - Fake Name Generator” name.

To catch this exception, we need to perform the following:

1. Drag the Try Catch activity from the Activities panel above the Invoke workflow activity.
2. Place the Invoke workflow activity in the Try section of the Try Catch activity. This watches the Invoke workflow activity in case it throws an error.
3. In the Catches section, select the UiPath.Core.SelectorNotFoundException exception from the drop-down. If it’s not there, you can find it in the Browse and Select a .Net Type window.
4. Optionally, you can add a Message Box activity in the Catches section. You can fill in the Content field with an informative message between quotes, in our case “Internet Explorer was closed. It will now open to continue the workflow execution”. This means that whenever the exception is caught, this message box is displayed, to inform the user that the browser is about to open so that the workflow is successfully executed.
5. Drag the Element Exists activity in the Finally section. This is used to check if Internet Explorer is open on the page of interest, https://www.fakenamegenerator.com.
6. Open Internet Explorer and access the previously mentioned page.
7. Use the Indicate on screen functionality to select the Internet Explorer window.
8. Select the Element Exists activity and edit its selector so that it looks like this <wnd app='iexplore.exe' title='Generate a Random Name - Fake Name Generator - Internet Explorer' />. This selector ensures that the Element Exists activity only looks for an active Internet Explorer window in which the aforementioned page is open.
9. In the Output property, create a variable with a relevant name, such as browser. This is a boolean variable which helps you determine whether or not Internet Explorer is active on the indicated page.
10. Add an If activity under the Element Exists activity. This is used to open Internet Explorer if it’s closed, and continue the workflow otherwise.
11. In the Condition field, write browser=false. This condition is used to verify if the browser is opened or not, and perform other actions, based on its value.
12. Drag an Open Browser activity in the Then section. If the Condition is met (the browser is closed), then the Open Browser activity is used to open it, without affecting the workflow.
13. In the Url field type https://www.fakenamegenerator.com.
14. Leave the Else section empty so that the workflow continues as expected if Internet Explorer is already opened on the indicated website.
15. Run the workflow and notice one of the following:

* If Internet Explorer is closed - The user is informed that Internet Explorer is about to open so the workflow can continue. The browser opens, all expected data is gathered and written to the Excel file.
* If Internet Explorer is open - The workflow is executed as expected.Download example
