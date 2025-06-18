# Retry Scope

UiPath.Core.Activities.RetryScope

# Description

Retries the contained activities as long as the condition is not met or an error is thrown.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows - Legacy, Windows configuration

Designer panel

* Action - Add activities to be re-executed in this section.
* Condition - Add a condition activity in this section. For instance, to fail and retry gracefully when indicating a UI element, you can use the Modern UI Automation Check App State activity or it's Classic Element Exists counterpart as a condition and attempt again to open the application and find the UI element.

Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank, an error is thrown, or the number of retries is exceeded, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* Number Of Retries - The number of times that the sequence is to be retried.
* Retry Interval - Specifies the amount of time between each retry.

# Cross-platform configuration

Designer panel

* ActivityBody - Add activities to be re-executed in this section.
* Condition - Add a condition activity in this section.For instance, to fail and retry gracefully when indicating a UI element, you can use the Modern UI Automation Check App State activity as a condition and attempt again to open the application and find the UI element.

Additional properties

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank, an error is thrown, or the number of retries is exceeded, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Options

* Number Of Retries - The number of times that the sequence is to be retried.
* Retry Interval - Specifies the amount of time between each retry.

# Example of using the Retry Scope activity in Windows projects

The Retry Scope activity is used for catching and handling an error, which is why it’s similar to the Try Catch one.

The following workflow attempts to open the Notepad window 3 times and uses the condition set in the Retry Scope activity to stop the loop:

* If the value of the Random variable is different than zero three times in a row, the “Notepad Window failed to start” message is displayed every time and the entire workflow fails with the “Notepad failed to start” error. The second message is the one you added in the Throw activity.
* If the value of the Random variable is zero, the Robot opens Notepad and because the condition of this loop is to find the Notepad window, the workflow is successfully completed.

1. Create a new sequence and add the Retry Scope activity.
2. In the Properties panel, set the value 3 for the Number Of Retries, and set the value 5 for Retry Interval. This means that we attempt to open the Notepad window three times and the interval between tries is five seconds.
3. In the Action section, add an Assign activity:In the Save to field of the Assign activity, create a variable and name it "Random".In the Value to save field, write the following expression:(Now.Millisecond Mod 5).ToString()
4. In the Action section, add an If activity.In the Condition field, add the following expression, where "Random" is the previously created variable. The expression checks if the variable value is different than zero:Random <> "0"In the Then section of the If activity:Add a Message box activity with the following Text: “Notepad Window failed to start”.Under the Message Box, add a Throw activity, and provide the following expression in the Exception field: New System.Exception(“Notepad failed to start”)These activities execute when the condition is true.In the Else section of the If activity:Add an Open Application activity and indicate the Notepad application on the screen. Make sure the FileName field contains the full path to the Notepad executable file on your device.This activity executes when the condition is false.
5. To exit the loop, in the Condition section of Retry Scope activity, add a Check App State activity and indicate the Notepad window.
