# Verify Control Attribute

UiPath.Testing.Activities.VerifyControlAttribute

# Description

Verifies the output of a given activity by asserting it in relation to a given expression. The activities tested with this activity must be inserted in the body of the activity and an Expression and Operator must be supplied in their respective property fields.

# Project compatibility

Windows - Legacy | Windows

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* ContinueOnFailure - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is True. As a result, the execution of the project continues regardless of any error. If the value is set to False, and an error is thrown, the execution of the project stops.If this activity is included in Try Catch and the value of the ContinueOnFailure property is True, no error is caught when the project is executed.
* Expression - The expression against which you want to verify the output of the activity.
* Operator - A drop-down list containing all of the possible mathematical operators you can use to verify the output of the activity. The following options are available:Equality Inequality GreaterThan GreaterThanOrEqual LessThan LessThanOrEqual
* TakeScreenshotIfFailed - If set to True, takes a screenshot of the target process if the verification has failed.
* TakeScreenshotIfSucceeded - If set to True, takes a screenshot of the target process if the verification has been successful.

Messages

* AlternativeVerificationTitle - Specifies an alternative display name. This property overrides the default DisplayName, which is the verification activity name that shows up in Orchestrator.
* OutputMessageFormat - Specifies the format of the output message. To set a global output message format, see Project Settings.For more information, check the Configuring the OutputMessageFormat section.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Result - Reflects the state of the verification activity. You can use this to send notifications or create reports for failed verifications.

# Wildcard characters

Use wildcard characters to match unknown or any values when you verify variables of
                type String. You can concatenate wildcard characters at the beginning, in the
                middle, or at the end of a string (e.g., "abc?" = "abc*").

Conditions

* To match wildcards as literals, you need to escape them.
* Only the second expression allows for wildcard usage.

Supported wildcards

Wildcard characterDescription# (number sign)Matches a single character (e.g., `[0-9]{1? (question mark)Matches a single alphanumeric character.*(asterisk)Matches zero or more alphanumeric characters.

# Use case scenario

In the following example, the `# wildcard has been used to match known values found
                in the first expressions.

![07f9ade-verify_control_attribute_wildcard_example=GUID-1DEA9D0B-4C46-4F9C-B155-194DDD0DC6AB=1=en=Default](/images/07f9ade-verify_control_attribute_wildcard_example=GUID-1DEA9D0B-4C46-4F9C-B155-194DDD0DC6AB=1=en=Default.png)

# Configuring the
                OutputMessageFormat

The OutputMessageFormat property can be configured with supported arguments,
                that act as placeholders for the values used in the verification operation. These
                placeholders are automatically populated with the variables or values you defined
                when invoking the activity at runtime.

For the Verify Control Attribute activity, you can implement the following supported
                arguments when creating an output message:

* {LeftExpression}: Represents the value of the expression you provided for the Expression property.
* {Operator}: Represents the operator used in the verification, set by the Operator property.
* {Result}: Represents the activity output value, which is the verification result.

The following is an example on how to configure an output message for the Verify
                Control Attribute activity: "The output value of {Result}: {LeftExpression}
                    was {Operator} in comparison to the expected value."

In the provided example, the placeholders within the curly brackets are replaced with
                the corresponding variable names and their values at runtime, providing a customized
                output message.
