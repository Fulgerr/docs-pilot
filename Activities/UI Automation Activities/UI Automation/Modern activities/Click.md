# Click

UiPath.UIAutomationNext.Activities.NClick

# 

Clicks a specified UI element, for example a button or a link. It can be configured to use any
                mouse button, use a double-click, and it can be used in combination with a key
                modifier.







# 

|  |

# 



* 
* Click type - Select from the drop-down menu the type of click to perform: Single, Double, Down, or Up. The default option is Single.
* Mouse button - Select from the drop-down menu the mouse button to click with: Left, Middle, or Right. The default option is Left.
* 





* 
* 
* 
* 
* 



* Click type - See Click type in the Designer panel.
* 
* Mouse button - See Mouse button in the Designer panel.
* 
* 



* 
* 



* 



* Activate - Bring the UI element to the foreground and activate it before clicking it. This field only supports Boolean values (True, False). The default value is True.
* This property does not apply if the Input Mode property is set to Hardware Events.
* This option is selected by default if you change the default setting for any of the following properties ClickType, MouseButton, or KeyModifiers.Simulate can only be used with the Single click type and the Left mouse button options.When the browser is started with Chromium API, a ribbon shows up stating that the browser started in debug mode. This message does not show up if the extension is installed via policy.
* Key modifiers cannot be used with the Simulate input mode.

# 

* 
* 





* 
* 
* 
* 



* Click type - Select from the drop-down menu the type of click to perform: Single, Double, Down, or Up. The default option is Single.
* Mouse button - Select from the drop-down menu the mouse button to click with: Left, Middle, or Right. The default option is Left.
* Key modifiers - Add one or more key modifiers to use in combination with the click. The following options are available: Alt, Ctrl, Shift, and Win.
* Same as Browser - User the Input mode setting from the parent Use Browser activity.Chromium API - Performs actions using debugger APIs. Works for Chrome and Edge elements only. Sends all text in one go. Works if the target app is not in focus.Simulate - Simulates the click using accessibility APIs. Works for browsers. Sends all text in one go. This input method works in the background (even if the target app is not in focus).



* 
*
