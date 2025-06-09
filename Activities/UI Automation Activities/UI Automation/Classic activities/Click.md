# Click

UiPath.Core.Activities.Click

Clicks a specified UI element.

The Double
                    Click activity has the same functionality as the Click activity, the
                only difference is that for the Double Click activity, the ClickType
                is set by default on CLICK_DOUBLE, while for the Click activity, the
                    ClickType is set by default on CLICK_SINGLE.

# Properties

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* DisplayName - The display name of the activity.

Input

* ClickType - Specifies the type of mouse click (single, double, up, down) used when simulating the click event. By default, single click is selected.
* MouseButton - The mouse button (left, right, middle) used for the click action. By default, the left mouse button is selected.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive - Waits until only a part of the app is loaded.Complete - Waits for the entire app to be loaded.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* AlterIfDisabled - If enabled, the action is executed even if the specified UI element is disabled.
* CursorMotionType - Specifies the type of motion performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. By default, Instant is selected.Smooth - The cursor moves in increments. Has no effect if SendWindowMessages or SimulateClick are enabled.
* CursorPosition.OffsetX - Horizontal displacement of the cursor position according to the option selected in the Position field.
* CursorPosition.OffsetY - Vertical displacement of the cursor position according to the option selected in the Position field.
* CursorPosition.Position - Describes the starting point of the cursor to which offsets from OffsetX and OffsetY properties are added. The following options are available: TopLeft, TopRight, BottomLeft, BottomRight and Center. The default option is Center.
* KeyModifiers - Enables you to add a key modifier. The following options are available: None, Alt, Ctrl, Shift, Win. The default option is None.KeyModifiers cannot be used with the SimulateClick or SendWindowMessages options. No error is thrown when executing a workflow that contains an activity with one of these combinations of options.
* SendWindowMessages - If selected, the click is executed by sending a specific message to the target application. This input method can work in the background, is compatible with most desktop apps, but it is not the fastest of the methods. By default, this check box is not selected. If neither this nor the SimulateClick check boxes are selected, the default method simulates the click by using the hardware driver. The default method is the slowest, it cannot work in the background, but it is compatible with all desktop apps.
* SimulateClick - If selected, it simulates the click by using the technology of the target application. This input method is the fastest of the three and works in the background. By default, this check box is not selected. If neither this nor the SendWindowMessages check boxes are selected, the default method performs the click using the hardware driver. The default method is the slowest, it cannot work in the background, but it is compatible with all desktop apps. If you select this property, it is recommended to check the state of the target UI element prior to execution. More details can be found on this page.SimulateClick can only be used with the CLICK_SINGLE and BTN_LEFT input types. Otherwise, an error is thrown when executing the workflow.
* UnblockInput - It should be used when Click triggers a modal dialog box or other blocking UI. Only works together with Simulate Click. This field supports only Boolean values. The default value for this option is False.

# Example of using the Click
                activity

Here you can see how
                the Click activity is used in an example that incorporates multiple
                activities.

# Example of using the Double Click
                activity

Here you can see how
                the Double Click activity is used in an example that incorporates multiple
                activities.
