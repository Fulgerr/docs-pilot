# Context Aware Anchor

UiPath.Core.Activities.AnchorContextAware

A container that searches for a UI element by using pairs of targets and anchors for greater precision. The advantage this activity has over the Anchor Base activity is that it does not require an anchor to be unique.

# Properties

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* Anchor Bounding Box - The coordinates of the bounding box of the anchor you want to use. These coordinates can be automatically retrieved by using the Indicate on screen functionality accessible from the body of the activity.
* Target Bounding Box - The coordinates of the bounding box of the target you want to use. These coordinates can be automatically retrieved by using the Indicate on screen functionality accessible from the body of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
