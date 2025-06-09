# Anchor Base

UiPath.Core.Activities.AnchorBase

A container that searches for a UI element by using other UI elements as anchors. This should be used when a reliable selector is not available.

For reliability reasons, it is recommended to avoid the usage of the idx attribute in selectors. In such cases, consider adding information about ancestor elements, using relative elements or the Anchor Base activity.

# Properties

Input

* AnchorPosition - Specifies to which edge of the container the UI element is anchored. The following options are available:Auto - If selected, the Bottom case is not considered. Searches for the UI element to the left, right or bottom of the container. The closest one is selected. If multiple elements are found at equal distance from the anchor, the target is selected in this order: Right, Left, Bottom.Left - Searches for the UI element to the right of the container.Top - Searches for the UI element at the bottom of the container.Right - Searches for the UI element to the left of the container.Bottom - Searches for the UI element at the top of the container.OnTop - Searches for an UI element that has a label on it.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the Anchor Base activity

Anchors are used when you want to interact with an element that has an unstable selector. In this example, the workflow writes a particular text string in a field which changes its position every time the www.rpachallenge.com web page loads.

![a06bf4d-anchor_base=GUID-94EB529C-A045-4908-8375-6BA95BF8DC27=1=en=Default](/images/a06bf4d-anchor_base=GUID-94EB529C-A045-4908-8375-6BA95BF8DC27=1=en=Default.png)

The workflow contains the following activities:

* Open Browser - Opens www.rpachallenge.com in Internet Explorer.
* Anchor Base - Identifies the target field and writes the sample text:Left side - The Find Element activity identifies the First Name field.Right side - The Type Into activity writes "Example" in the First Name field.

Download example
