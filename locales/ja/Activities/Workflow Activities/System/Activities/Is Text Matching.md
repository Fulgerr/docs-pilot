# Is Text Matching

UiPath.Core.Activities.IsMatch

# Description

Indicates whether the specified regular expression finds a match in the specified input string, using the specified matching options. This activity has a RegEx Builder wizard that can be used to configure it, on which you can read more here.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Text to search in - The string to be searched for matches.
* Pattern - The regular expression pattern to match.

Additional properties

* Pattern options - A bitwise combination of the enumeration values that specify options for matching.
* Result - A boolean variable that is set to true if the regular expression finds a match, and is set to false otherwise.

# Windows - Legacy, Windows configuration

Designer panel

* Configure Regular Expression... - Opens the RegEx Builder wizard where you can specify the regular expression pattern to be matched.

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* Pattern - The regular expression pattern to match.
* Pattern options - A bitwise combination of the enumeration values that specify options for matching.
* Text to search in - The string to be searched for matches.
* Timeout (ms) - The maximum duration, in milliseconds, that a pattern-matching operation can run before it is terminated. This property is essential for preventing the app from slowing down or freezing when processing complex or inefficient patterns. If the pattern match does not complete in the set time, an exception is thrown, ensuring the application remains responsive and safe from possible attacks that try to overload it.We highly recommend setting a timeout value, to improve application stability and security.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* Result - A boolean variable that is set to true if the regular expression finds a match, and is set to false otherwise.

# Example of using the Is Text Match activity

This workflow explains how to verify the validity of an email address by using the Is Text Matching activity with a custom Regular Expression.

This is how the automation process can be built:

1. Open Studio and create a new Process.
2. Drag a Sequence container in the Workflow Designer.
3. Create the following variables:Variable NameVariable TypeDefault ValueEmailToCheckStringJohn.Doe@server.orgIsMatchBoolean
4. Drag an Is Text Matching activity inside the Sequence container.
5. In the Properties panel, add the variable EmailToCheck in the Text to search in field.
6. Add the variable IsMatch in the Result field.
7. Click the Configure Regular Expression button and customize your RegEx. For this example add the expression ^([\w\.-]+@[\w\.-]+\.\w{2,4})$ in the Value field.More information about how to customize and configure a Regular Expression can be found here.
8. Drag an If activity below the Is Text Matching activity.
9. Add the variable IsMatch in the Condition field.
10. Drag a Message Box activity inside the Then field of the If activity.
11. Add the expression String.Format("{0} is a valid email addess", EmailToCheck) in the Text field.
12. Drag a Message Box activity inside the Else field of the If activity.
13. Add the expression String.Format("{0} is not a valid email addess!", EmailToCheck) in the Text field.
14. Run the process. The email address added as input is verified and the result is displayed in a message box.Download example
