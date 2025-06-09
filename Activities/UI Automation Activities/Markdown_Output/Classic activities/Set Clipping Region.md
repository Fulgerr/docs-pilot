# Set Clipping Region

UiPath.Core.Activities.SetClippingRegion

Sets the clipping region of a UI element.

# Properties

Input

* Direction - The direction in which to expand the clipping region. The following options are available: left, top, right, bottom, rectangle, translate.
* Size - The offset to move in each direction. The pixel offset in the following directions: left, top, right, bottom. It supports both positive and negative numbers.
* Region - Enables you to start the clipping region from an already-existing region. This field supports only UiPath.Core.Region variables.
* Element - Use the Element object returned by another activity. This property cannot be used alongside Selector property. This field supports only UiElement variables.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the Set Clipping Region activity

Here you can see how the Set Clipping Region activity is used in an example that incorporates multiple activities.
