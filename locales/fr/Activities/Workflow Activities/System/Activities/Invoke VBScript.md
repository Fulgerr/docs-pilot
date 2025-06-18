# Invoke VBScript

UiPath.Core.Activities.InvokeVBScript

Invokes a VBScript file and executes the commands it contains. For more information on VBScript, check the official documentation here.

# Properties

Common

* DisplayName - The display name of the activity.
* Timeout - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. Only works if the WaitForOutput property is set to true. Leaving this property empty waits for an infinite amount of time before throwing an exception. By default, this property field is empty.

Input

* Arguments - The parameters that can be passed to the code that is invoked.
* VBScriptFileName - The full path of the VBScript file you want to invoke. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* HidePopups - If set to true, display alerts and scripting errors are shown when running the VBScript. By default, this property is set to false.
* KillOnTimeout - If set to true, the execution of the VBScript is interrupted after the specified timeout period. By default, this property is set to false.
* UnicodeSupport - If set to true, allows usage of special characters in input and output values. By default, this property is set to false.
* WaitForOutput - If set to true, waits for an output from the VBScript in the amount of time specified in the Timeout property. If set to false, the process continues with the next activity immediately. By default, this property is set to true.

Output

* Result - The result of invoking the VBScript.
