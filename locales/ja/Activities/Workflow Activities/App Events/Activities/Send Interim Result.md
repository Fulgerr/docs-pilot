# Send Interim Result

UiPath.AppEvents.Activities.SendInterimResult

# Description

The Send Interim Result activity is used to render the intermediate state of the output arguments of a process. The controls you bind to the Interim Process Result (IPR) outputs are likely to be refreshed multiple times while executing the process. Because of this, we recommend not changing the data in the bound controls if an input control was used because the changed data will be lost once the next IPR result is received by UiPath Apps and when the process ends.

Enables you to send the results of an Attended job to UiPath Apps or a custom app using Robot JS before it has finished executing.

For version 1.0.0 of the App Events activity pack, this activity requires Studio 2022.4 or above.For version 2.0.0 of the App Events activity pack, this activity requires Studio 2023.4 or above.

# Project compatibility

* Cross-platform

### Cross-platform configuration

# Properties

Common

* DisplayName - The display name of the activity.

Misc

* Argument name - The output argument name for the interim result. The argument name must be an exact match for the argument. This field supports output arguments.When upgrading to version 2.0.0 of the Workflow Events activity pack, remember to update Argument name bindings and replace Strings with output arguments (Out and In/Out).
* Argument value - The value for the output argument to send. Any existing property, variable or argument, can be selected for binding. This field supports any type of text (String, Int32, Boolean).The data type of the argument value must match the one of the Out or In/Out argument provided in the Argument name field.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.The Argument name and Argument value fields are mandatory. If any of these is left blank, an error message is displayed.

