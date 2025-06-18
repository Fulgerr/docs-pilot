# Hover

UiPath.Core.Activities.Hover

Hovers over a specified UI element.

# Properties

Options

* CursorMotionType - Specifies the type of motion performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. Smooth - The cursor moves in increments. Has no effect if SendWindowMessages or SimulateClick are enabled.By default, Instant is selected.
* SimulateHover - If set to true, it simulates the hover by using the technology of the target application. This input method is the fastest of the three and works in the background. By default, this check box is not selected. If neither this nor the SendWindowMessages check boxes are selected, the default method performs the hover using the hardware driver. The default method is the slowest, it cannot work in the background, but it is compatible with all desktop apps.
* SendWindowMessages - If set to true, the hover is executed by sending a specific message to the target application. This input method can work in the background, is compatible with most desktop apps, but it is not the fastest of the methods. By default, this check box is not selected. If neither this nor the SimulateHover check boxes are selected, the default method simulates the hover by using the hardware driver. The default method is the slowest, it cannot work in the background, but it is compatible with all desktop apps.
* CursorPosition.OffsetX - Horizontal displacement of the cursor position according to the option selected in the Position field.
* CursorPosition.OffsetY - Vertical displacement of the cursor position according to the option selected in the Position field.
* CursorPosition.Position - Describes the starting point of the cursor to which offsets from OffsetX and OffsetY properties are added. The following options are available: TopLeft, TopRight, BottomLeft, BottomRight and Center. The default option is Center.

Common

* DisplayName - The display name of the activity.
* DelayMS - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to "False". Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete. SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.

# Example of using the Hover activity

Here you can see how the Hover activity is used in an example that incorporates multiple activities.
