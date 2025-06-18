# Get Color at Position

UiPath.Terminal.Advanced.Activities.TerminalGetColorAtPosition

# Description

Extracts the foreground color of the text at the specified position as a .NET
                    System.Drawing.Color object.

The activity is valid only inside a Terminal Session activity.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Designer panel

* Row - The row position where the cursor is moved. Only values greater than 0 are supported.
* Column - The column position where the cursor is moved. Only values greater than 0 are supported.

Properties panel

Common

* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* DelayMS - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds (0.3 seconds).
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 5000 milliseconds (5 seconds).
* WaitType - Before performing the actions, wait for the target to become ready. The following options are available:NONE - Does not wait for the terminal keyboard to be enabled.READY / COMPLETE - Waits for the terminal keyboard to be enabled. The default value is READY.The READY and COMPLETE options have the same function, since the wait type is related to the status of the terminal keyboard, which has only two states: enabled or inhibited.

Output

* Color - The extracted color.

Position

* Column - The column position where the cursor is moved. Only values greater than 0 are supported.
* Row - The row position where the cursor is moved. Only values greater than 0 are supported.
