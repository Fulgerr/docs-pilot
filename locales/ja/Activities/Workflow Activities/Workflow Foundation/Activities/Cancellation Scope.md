# Cancellation Scope

System.Activities.Statements.CancellationScope

Associates a main path of execution with a cancellation handler. The Cancellation Scope has two sections where you can include the child activities: the Body and the CancellationHandler. Activities included in the Body section can only be canceled if they have not been completed.

If a cancellation request is scheduled and the activities in the Body have not completed, then the Cancellation Scope will be marked as Canceled and the CancellationHandleractivities will be executed.

# In the Body of the Activity

* Body - Includes the activity that represents the main path of execution. This is the activity that might have to be canceled later.
* CancellationHandler - Includes the activity that is to be executed in the event of cancellation.

# Properties

Common

* DisplayName - The display name of the activity. This field supports only String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
