# Type Text

UiPath.MobileAutomation.Activities.TypeText

# Description

Takes the content typed through the keyboard and pastes it into the currently active UI element.
                To paste the text inside the element that you want, you need to focus wherever on
                the UI where you want to paste the text. You can use this activity when automating
                applications for which you need to type text through the keyboard, but without a
                target element that is recognized by Mobile Automation.

This activity pastes the text without clearing any previous content inside the active UI element.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Designer panel

* Standard - Select this to send standard text.
* Secure - Select this to send secure text.
* Text - The standard text that you want to type into the active UI element. This field supports String values only.
* SecureText - The secure text that you want to type into the active UI element. This field supports SecureString variables only.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DelayAfter - Delay (in seconds) between the time this activity is completed and the time the next activity begins any operations. The default value is 0.3 seconds. Adding a delay between activities ensures that one activity has enough time to complete before the next activity begins.
* DelayBefore - Delay (in seconds) between the time the previous activity is completed and the time this activity begins performing any operations. The default value is 0.2 seconds. Adding a delay between activities ensures that one activity has enough time to complete before the next activity begins.
* DisplayName - The display name of the activity.

Input

* SecureText - The secure text that you want to type into the active UI element. This field supports SecureString variables only.
* Send new line - Add a new line to the text. Similar to pressing the OK button on a mobile device keyboard. This field supports Boolean values only.
* Text - The standard text that you want to type into the active UI element. This field supports String values only.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example

For an example or future reference, check out the sample project
