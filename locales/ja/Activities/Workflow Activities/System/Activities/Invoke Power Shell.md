# Invoke Power Shell

UiPath.Core.Activities.InvokePowerShell

# Description

The Invoke Power Shell activity executes a PowerShell command or script with specified input parameters.

Antivirus policies that
        restrict PowerShell access may prevent the use of PowerShell-related activities. For
        example, you cannot use Invoke Workflow File and Invoke Power Shell when rule
        ID 6151 is enabled in McAfee Endpoint Security.

# Project Compatibility

Windows - Legacy | Windows

# Configuration

* Command Text - The PowerShell command to be executed. This value can be the name of a cmdlet or the text of a PowerShell Script.

# Properties Panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

# Untitled Section

Input

* Parameters - A dictionary of PowerShell command parameters. A specific command (cmdlet) or script can be used. Specific command: When you invoke a specific command, the name of the parameter should match the name of the command’s parameter.For example, if you use Get-Command -Module CimCmdlets as an input, the input value must be Get-Command and the parameter should be named Module with the value set to "CimCmdlets".Script: At the start of the script you need to specify the type of the parameter. Optionally, you can also make a parameter mandatory to enforce a script to always be called with the parameter set by the caller. For example, the following script takes two parameters, one of type string, and another of type int: Param( [Parameter(Mandatory=$true)] [string]$Name, [int]$Age )These parameters can then be referenced in the script by adding $ in front of the parameter name.

* Input: - A collection of PSObjects that are passed to the writer of the pipeline used to execute the command. Can be the output of another InvokePowerShell activity. You can reference piped input in a script by using $input.This variable is created implicitly by PowerShell. Defining variables or parameters named input may generate errors or may result in conflicts. It is recommended for the term input to be reserved for piping.

Misc

* Execution mode - Select a version of PowerShell in which to execute the command or script provided. This is only available for Windows projects, Windows-Legacy projects target Windows PowerShell 5.1 (32-bit) version.The following options are available:PowerShell 7.2 (64-bit) - Uses PowerShell Core shell based on .NET6. In this version, PowerShell is hosted within the .NET 6 runtime. Any data used is directly accessible by the activity, and can be imported in the workflow.PowerShell 5.1 (64-bit) - Uses the 64-bit Windows PowerShell executable. In this version, PowerShell is bundled with Windows, and is located by default in C:\Windows\System32\WindowsPowerShell\v1.0\. In this execution mode, PowerShell is remoted locally on the machine using the preinstalled shell. Remoting introduces the need to serialize and deserialize information between different .NET runtimes, and as such objects which can not be reconstructed are wrapped within a PSObject or PSCustomObject. PowerShell 5.1 (32-bit) - Uses the 32-bit Windows PowerShell executable. In this version, PowerShell is bundled with Windows, and is located by default in C:\Windows\SysWOW64\WindowsPowerShell\v1.0\). In this execution mode, PowerShell is remoted locally on the machine using the preinstalled shell. Remoting introduces the need to serialize and deserialize information between different .NET runtimes, as such objects which can not be reconstructed are wrapped within a PSObject or PSCustomObject. PSObject and PSCustomObjects hold information about the overall structure of the original object and can be used to reconstruct the objects manually.
* IsScript - Specifies if the command text is a script or a direct command. Piping, Variables, and Parameters can be used with a single command or script.
* PowerShellVariables - A dictionary of named objects that represent variables used within the current session of the InvokePowerShell activity. A PowerShell command or script can retrieve information from In and In/Out variables and can set Out variables. To reference variables in your script, use the variable identifier character $ to denote that the text after is a variable name. Example: $firstVariable. Variable names are not case sensitive.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* TypeArgument - Sets the type of the output variable.

Output

* Output - A collection of TypeArgument objects returned by the execution of the command. Can be used to pipe several InvokePowerShell activities.
