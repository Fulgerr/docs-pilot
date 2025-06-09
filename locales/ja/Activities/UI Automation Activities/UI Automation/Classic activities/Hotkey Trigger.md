# Hotkey Trigger

UiPath.Core.Activities.HotkeyTriggerV2

Monitors a specified system-wide key event.

It can be used either inside a Trigger Scope activity or by itself within a
            trigger workflow. When used by itself, the activity has one more property in the
            Properties panel, namely Enabled.

# Properties

Common

* DisplayName - The display name of the activity.

Input

* Key - The key that is monitored. Special keys are supported and you can select them from the activity drop-down list.

MiscEnabled - If set to False, the trigger starts but does not
                        fire any events. It can be enabled later at runtime by using the Enable
                            Local Trigger activity. This field supports only Boolean
                        values. The default value is True.

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* BlockEvent - Specifies whether the event is blocked from acting on the indicated element. If False, the event is executed against the element. If True, the event is blocked and can be later replayed within the activity handler, by using the ReplayUserEvent activity.
* KeyModifiers - Adds a selected key modifier to the activity. The following options are available: Alt, Ctrl, Shift, Win.
* UseWindowsHotKey - If this check box is selected, the hotkey is executed by sending a specific message to the target application. Otherwise, the default method simulates the hotkey, by using the hardware driver.

# Example

You can see how the Hotkey Trigger activity is used in an example that incorporates multiple activities. You can check and download the example from here.
