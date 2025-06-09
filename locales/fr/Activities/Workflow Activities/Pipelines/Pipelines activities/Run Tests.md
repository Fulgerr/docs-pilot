# Run Tests

# Description

The Run Tests activity allows you to run tests marked as publishable against the workflow as part of the pipeline. The robot machine that the tests run on must have a testing license. If the robot machine running the pipeline process is also assigned to the Test folder, it must have a testing license. Otherwise, only the robot assigned to the Test folder is required to have a testing license.

The Run Tests activity runs the tests in the provided Orchestrator folder. The Pipelines robot account publishes the package in the respective folder, but the tests can be run by any robot account in that folder that qualifies for the test run, not only by the Pipelines robot account.

For Pipelines projects that use the Run Tests activity, you must make sure that the Supports Persistence parameter is enabled (set to Yes) at project level. The workflow resumes only if tests are run in the same tenant.

# Project compatibility

|

# Configuration



* Tenant - The name of the Orchestrator tenant where the project is published.
* Folder name - The name of the Orchestrator folder feed. This is the Orchestrator folder where the tests will be run. Make sure you have the right machines and the Testing license allocated.
* Repository path - The path to the repository where the project resides.
* Project path - (Optional) The path of the project.json file relative to Repository path. If not provided, defaults to project.json.



Common

* Continue on error - (Optional) Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

Input

* Author - (Optional) The author to be set on the package. If not provided, it is set to the user account under which the automation runs.
* Version - (Optional) The package version. The default value uses the major.minor.timestamp format, where major and minor are retrieved from the project version.
* Skip validation - (Optional) Skips project validation. The default value is Off (the validation is performed).
* Separate runtime dependecies - Enables the output split to runtime and design libraries.
* Repository type - (Optional) The used source control type (such as git, svn, uip etc.).
* Repository URL - (Optional) The remote repository URL of the project.json file.
* Repository branch - (Optional) The source branch for the package.
* Repository commit - (Optional) The commit ID (the commit SHA for git repositories).
* Release notes - (Optional) The release notes for the package.
* Attach Robot logs - (Optional) Select to include the test set execution logs in the report. Defaults to false.
* Number of retries - (Optional) Specifies how many times failed test cases should reexecute. Defaults to 0.

OutputResults file path - Absolute path to the test results in JUnit XML format.Test set report (Output) - Returns the test report as object.
