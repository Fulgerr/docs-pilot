# Text to Left/Right

UiPath.Core.Activities.TextToLeftRight

# Description

Retrieves the text to the left and right of the first occurrence of the indicated subtext.

# Project compatibility

Windows -  Legacy | Windows | Cross-platform

# Cross-platform configuration

* Full Text - The text you want to perform the split operation on. This field supports only strings and String variables.
* Separator - The string you want to use as a separator. The text that is to the left and to the right of the string provided in this property field is retrieved. The separator itself is not included in the output result. This field supports only strings and String variables.

Advanced options

Options

* Case sensitive separator - Specifies if the separator should be case sensitive. By default, this toggle is On.

Output

* Save text to left as - The variable in which you want to save the text that is to the left of the separator. This field supports only strings and String variables.
* Save text to right as - The variable in which you want to save the text that is to the right of the separator. This field supports only strings and String variables.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* Full Text - The text you want to perform the split operation on. This field supports only strings and String variables.
* Separator - The string you want to use as a separator. The text that is to the left and to the right of the string provided in this property field is retrieved. The separator itself is not included in the output result. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* Case sensitive separator - Specifies if the separator should be case sensitive. By default, this check box is selected.

Output

* Save text to left as - The variable in which you want to save the text that is to the left of the separator. This field supports only strings and String variables.
* Save text to right as - The variable in which you want to save the text that is to the right of the separator. This field supports only strings and String variables.
