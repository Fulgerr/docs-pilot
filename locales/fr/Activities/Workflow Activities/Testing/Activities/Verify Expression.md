# Verify Expression

UiPath.Testing.Activities.VerifyExpression

# Description

Verifies the truth value of a given expression. An Expression must be supplied in its respective property field.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows - Legacy configuration

Designer panel

* Expression - The expression that you want to verify.

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* ContinueOnFailure - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is True. As a result, the execution of the project continues regardless of any error. If the value is set to False, and an error is thrown, the execution of the project stops.If this activity is included in Try Catch and the value of the ContinueOnFailure property is True, no error is caught when the project is executed.
* Expression - The expression that you want to verify.
* TakeScreenshotIfFailed - If set to True, takes a screenshot of the target process if the verification has failed.
* TakeScreenshotIfSucceded - If set to True, takes a screenshot of the target process if the verification has been successful.

Messages

* AlternativeVerificationTitle - Specifies an alternative display name. This property overrides the default DisplayName, which is the verification activity name that shows up in Orchestrator.
* OutputMessageFormat - Specifies the format of the output message. To set a global output message format, see Project Settings. For more information, check the Configuring the OutputMessageFormat section.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Result - Reflects the state of the verification activity. You can use this to send notifications or create reports for failed verifications.

# Windows, Cross-platform configuration

* Expression - The expression that you want to verify.

Advanced options

Input

* ContinueOnFailure - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* TakeScreenshotIfFailed - If set to True, takes a screenshot of the target process if the verification has failed.
* TakeScreenshotIfSucceded - If set to True, takes a screenshot of the target process if the verification has been successful.

Messages

* AlternativeVerificationTitle - Specifies an alternative display name. This property overrides the default DisplayName, which is the verification activity name that shows up in Orchestrator.
* OutputMessageFormat - Specifies the format of the output message. To set a global output message format, see Project Settings.
* Result - Reflects the state of the verification activity. You can use this to send notifications or create reports for failed verifications.

# Configuring the
                OutputMessageFormat

The OutputMessageFormat property can be configured with supported arguments,
                that act as placeholders for the values used in the verification operation. These
                placeholders are automatically populated with the variables or values you defined
                when invoking the activity at runtime.

For the Verify Expression activity, you can implement the following supported
                arguments when creating an output message:

* {LeftExpression}: Represents the value of the expression you provided for the Expression property.
* {Result}: Represents the activity output value, which is the verification result.

The following is an example on how to configure an output message for the Verify
                Expression activity: "{LeftExpression} is {Result}."

In the provided example, the placeholders within the curly brackets are replaced with
                the corresponding variable names and their values at runtime, providing a customized
                output message.
