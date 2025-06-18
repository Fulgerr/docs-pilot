# Return 

UiPath.Core.Activities.Return

The return activity terminates a workflow at a specific point without throwing an error, which allows you to execute only part of a workflow to better control the workflow execution.

The out arguments are returned as they are at the moment the return activity is invoked.

Using the Return activity inside a Library project skips all remaining operations in both the Library and Main workflows. This is because, during execution, the Library workflow is merged into the Main workflow.
