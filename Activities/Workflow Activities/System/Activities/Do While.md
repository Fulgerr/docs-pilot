# Do While

UiPath.Core.Activities.InterruptibleDoWhile

# Description

Executes the activities in the Body section of the activity and then checks if the expression inserted in the Condition field is True. If False, execution is halted. Enables you to insert Break and Continue activities in the Body section, enabling you to break loops, or continue to the next cycle.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Condition - As long as the condition specified in this field is True, the activities in the Body of the activity are executed.
* Body - See the description of the activity.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* Condition - As long as the condition specified in this field is True, the activities in the Body of the activity are executed.
* MaxIterations - When set, the execution of the loop is performed until the number of iterations is reached. This field supports only Int32 variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Index - The zero-based index of the current element in the collection. It can be used for tracking the iterations during execution. This field supports only Int32 variables.
