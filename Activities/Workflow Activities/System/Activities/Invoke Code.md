# Invoke Code

UiPath.Core.Activities.InvokeCode

# Description

Synchronously invokes VB.NET or C# code, optionally passing it a list of input arguments. This activity can also return out arguments to the caller workflow.

The Invoke Code activity from UiPath.System.Activities pack version 21.10 is only compatible with UiPath Studio 21.10 or newer versions.

The assemblies referenced by your code need to be added into the Imports panel in order to function. You can find more info here.

Due to internal changes, this activity will no longer be visible in the Favorites list when upgrading to v20.4 or newer, if it was added to the Favorites list with a v19.4 or older version of UiPath.System.Activities.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Code - The code that is to be invoked. This field supports only strings and String variables.
* Language - A drop-down menu that specifies what language the invoked code is written in. The available options are VBNet and CSharp.
* Arguments - The parameters that can be passed to the code that is invoked.

# Windows - Legacy, Windows configuration

# Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* Arguments - The parameters that can be passed to the code that is invoked.
* Code - The code that is to be invoked. This field supports only strings and String variables.
* Language - A drop-down menu that specifies what language the invoked code is written in. The available options are VBNet and CSharp.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the Invoke Code activity

The Invoke Code activity is used for directly calling vb.net code from the UiPath platform. Using this activity you can specify exactly what code to be executed and what arguments to be passed to and from the activity.

This is how the automation process can be built:

1. Open Studio and create a new Process.
2. Drag a Sequence to the Workflow Designer.Create the following variables:Variable NameVariable TypeDefault ValueExampleInArgumentStringOutValueInt32
3. Drag an Assign activity inside the sequence container.Add the variable ExampleInArgument in the To field and the expression "Example for In Arguments" in the Value field.
4. Add an Invoke Code activity below the Assign activity.Select the Edit Code button for introducing the desired code.Type the code in the Code Editor window. For this example we have added a simple code that writes a string on the screen. Here is the code we have used:Dim TextToWrite As String TextToWrite = "Example" Console.WriteLine(TextToWrite)Select the OK button to close the Code Editor window.Select the Edit Arguments button and create the following arguments:Argument NameArgument DirectionArgument TypeArgument ValueExampleInArgumentInStringExampleInArgumentExampleOutArgumentOutInt32OutValueSelect the OK button to close the Invoked code arguments window.
5. Place a Write Line activity under the Invoke Code activity.Add the expression OutValue.ToString in the Text field.
6. Run the process. The robot displays in the Output panel the code and arguments specified by you in the Invoke Code activity.

Download example
