# Tap

UiPath.MobileAutomation.Activities.Tap

# Description

Returns a boolean variable that states whether a specified UI element exists.

# Project compatibility

Windows - Legacy | Windows

# Configuration

Designer panel

* Target - Default is set to (null). Once the target is indicated, all attributes regarding the element that was indicated are displayed. You can further create variables out of the displayed attributes of an indicated target.CV Text - The text identified by the Computer Vision model in the target UI element.CV Type - The type of control identified using Computer Vision.We recommend leaving the CV type of control unaltered after indicating the target. Otherwise, the Computer Vision model might fail to identify the target at runtime, because you changed the control type.Fuzzy selector - The parameters for the fuzzy selector. SearchSteps - Select the methods used to identify targets and anchors from the dropdown list. Strict selector - The selector that is generated for the indicated element.To learn how to create variables from the attributes of a target selector, check out the Creating variables from selector attributes tutorial.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DelayAfter - Delay time (in seconds) after executing the activity. The default value is 0.3 seconds.
* DelayBefore - Delay time (in seconds) before the activity begins performing any operations. The default value is 0.2 seconds.
* DisplayName - The display name of the activity.
* Timeout - specifies the amount of time (in seconds) to wait for a specified element to be found before an error is thrown. The default value is 30 seconds.

Input

* Tap Type - Specifies which kind of tap you want to perform on the specified UI element. The following options are available:Single Double LongPress
* Target - Default is set to (null). Once the target is indicated, all attributes regarding the element that was indicated are displayed. You can further create variables out of the displayed attributes of an indicated target.CV Text - The text identified by the Computer Vision model in the target UI element.CV Type - The type of control identified using Computer Vision.We recommend leaving the CV type of control unaltered after indicating the target. Otherwise, the Computer Vision model might fail to identify the target at runtime, because you changed the control type.Fuzzy selector - The parameters for the fuzzy selector. SearchSteps - Select the methods used to identify targets and anchors from the dropdown list. Strict selector - The selector that is generated for the indicated element.To learn how to create variables from the attributes of a target selector, check out the Creating variables from selector attributes tutorial.
* Tap offset (Optional) - Set the parameters of your target element. This property is triggered when you enable the Target.Anchoring point - Select the default positioning of the anchor point. CoordinateType - Choose how to set the target coordinates. You can select one of the following:PhysicalPixels - Use this option for workflows using a single device. Since the indication corresponds to actual pixels on the screen, it's different for each device. DeviceIndependentPixels - Use this option to run workflows on devices with similar density screens. Device-independent pixels means that you are indicating a target based on the pixel density of the selected screen area. Offset X - Horizontal displacement of the targeted area selected in the CoordinateType field. Offset Y - Vertical displacement of the targeted area selected in the CoordinateType field.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
