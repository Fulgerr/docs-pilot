# Parallel

System.Activities.Statements.Parallel

# Description

Executes all child activities simultaneously and asynchronously. The activity completes when all activities in the body complete or when the expression in the Condition property evaluates to true.

# Project compatibility

Windows - Legacy | Windows

# Windows - Legacy, Windows configuration

Add the activities you want to execute simultaneously within the body of the Parallel activity.

Properties

* CommonDisplayNameThe display name of the activity.
* MiscConditionThe expression that, when evaluated as true, determines the completion of the Parallel activity.PrivateIf selected, the values of variables and arguments are no longer logged at Verbose level.
