# Message Box

UiPath.Core.Activities.MessageBox

Displays a message box with the specified text and button options.

Due to internal changes, this activity will no longer be visible in the Favorites list when upgrading to v20.4 or newer, if it was added to the Favorites list with a v19.4 or older version of UiPath.System.Activities.

# Project compatibility

Windows | Windows - Legacy

# Configuration

* Text - The text to be displayed in the message box.

# In the Properties Panel

Options

* DisplayName - The display name of the activity.
* AutomaticallyCloseAfter - Select the amount of time the message box will be displayed.
* Buttons - Specifies which buttons to be displayed in the message box.
* Caption - The title of the message box dialog.
* Text - The text to be displayed in the message box.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* TopMost - If selected, always brings the message box to the foreground.

Output

* ChosenButton - A String variable that specifies which of the buttons specified in the Buttons property has been clicked during run time. The possible options are: Ok, Yes, No, or Cancel.You cannot manually add a value into this property field at design time. To use it, create an empty variable and assign it to this field. At run time, depending on which button is clicked by the human user that interacts with the message box, you can customize the way your automation continues to run.
