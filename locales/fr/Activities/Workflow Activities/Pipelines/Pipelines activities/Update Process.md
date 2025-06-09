# Update Process

# Description

This activity is used to update a process with an existing package from the same folder.

# Project compatibility

|

# Configuration



* Tenant- The name of the Orchestrator tenant where the project is published.
* Folder name - The name of the Orchestrator folder in which the process is found. If it is a subfolder ,you can use backslashes to separate hierarchical levels (Parent/Children).
* Process name - The name of the process to be updated.



Common

* Continue on error - (Optional) Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

Input

* Package name - (Optional) If specified, a check is performed to ensure the process is based on that package. If empty, no check is done.
* Package version - (Optional) Specifies the package version to be used for the process. If empty, the process is updated to the latest version.

# Exceptions

In the event of an error, the Update Process Activity displays the following exceptions:

* UiPath.Pipelines.Activities.Core.DifferentPackageNameException - This exception is thrown when the package name specified in the activity does not match the name of the actual process package.
* UiPath.Pipelines.Activities.Core.SameVersionUpdateException - This exception is thrown when the process is already based on this version of the package. This is also expected when you don't provide a Package version and the process is already updated to the latest version of the package.

This exception is thrown when a version conflict occurs. For example:

* When you provide a specific version that is already in use by the process.
* When you do not provide a specific version but the process you try to update already uses the version in the package.

You can handle it if you want your Pipeline to continue execution for these cases or set the ContinueOnError flag to continue the job even if an error is thrown.
