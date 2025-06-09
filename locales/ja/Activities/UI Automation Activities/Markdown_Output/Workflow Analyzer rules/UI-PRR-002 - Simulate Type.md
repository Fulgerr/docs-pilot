# UI-PRR-002 - Simulate Type

Rule ID:UI-PRR-002

Scope: Activity

Default action: Warning

This rule applies only to activities that are part of the Classic UI Automation
            experience.

# Description

This rule checks for all the activities that have the SimulateType property selected. Using SimulateType does not rely on the keyboard driver, so it provides a faster way of performing type actions. On the other hand, some applications might not support this interaction type, so this rule provides a list of all activities that have this property selected.

For more details about input methods, refer to the UI Automation page.
