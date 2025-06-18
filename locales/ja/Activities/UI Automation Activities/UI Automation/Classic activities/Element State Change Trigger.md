# Element State Change Trigger

UiPath.Core.Activities.ElementStateChangeTrigger

Monitors a specific UI element's state. Can only be used inside a Trigger Scope activity.

You can see an example of using this activity in conjecture with other Trigger activities here.

# Properties

Common

* Display Name - The display name of the activity.

Input

* Element Visibility Trigger - The type of visibility that is expected from the target element. Accessible checks if the element exists in the UI tree, and Visible also checks if the element is functionally visible.
* Event - When the On Appear option is selected, the trigger is fired when the UI element appears on the screen. When the On Disappear option is selected, the trigger is fired when the UI element disappears from the screen.
* Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI you are looking for and of some of its parents.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
