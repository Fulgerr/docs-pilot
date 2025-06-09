# Click Event Trigger

UiPath.UIAutomationNext.Activities.NClickTrigger

# 

Sets up a click event trigger on the indicated UI element.



The trigger must be the first activity in the workflow and the workflow is triggered
                when a certain UI event occurs. Only one trigger per workflow is allowed. For more
                details, check out Trigger-based Attended Automation.

If you are using a Studio version lower than 2023.4, you need to place the
                        Application Event Trigger activity inside a Trigger Scope activity. In this case,
                    the Click Event Trigger activity does not display the Scheduling
                        mode and Enabled properties and the Scheduling mode
                    property is available in the Trigger Scope activity.

# 

|

# 



* Click Indicate target on screen to indicate the UI element to use as target.
* Mouse button - The mouse button triggering the event. Choose one of three options from the drop-down menu: Left, Middle or Right. The default value is Left.
* Trigger mode - Specifies if the event is triggered when the mouse is pressed or released. Choose one of two options: Down or Up. The default value is Down.
* Block event - Specifies whether the event is blocked from acting on the indicated element. If False, the element is executed against the element. If True, the event is blocked and can be later replayed within the activity handler, by using the Replay User Event activity (with the EventInfo property set to TriggerEventArgs.Event as the event to be replayed). This field supports only Boolean values. The default value is False.
* Include children - Triggers the event if any of the child elements are targeted by the action. When selected, the children of the specified UI element are also monitored. This field supports only Boolean values. The default value is True.





* 



* Mouse button - See Mouse button in the Designer panel.
* Target - The target element: top-level window or UI element. Only strict selectors are supported, without anchors. Target element must be set. Before indicating on screen, this field is set to (null). Once the target is indicated, all properties regarding the element that was indicated are displayed.Strict selector - The strict selector generated for the target UI element. It is empty for top-level windows.Window selector (Application instance) - The selector for the application window (application/browser).



* Enabled - If set to False, the trigger starts but does not fire any events. It can be enabled later at runtime, by using the Enable Local Trigger activity. This field supports only Boolean values. The default value is True.
* 



* Block event - See Block event in the Designer panel.
* Include children - See Include children in the Designer panel.
* 
* 
* Trigger mode - See Trigger mode in the Designer panel.
