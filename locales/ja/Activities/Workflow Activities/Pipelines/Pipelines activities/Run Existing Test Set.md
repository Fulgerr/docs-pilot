# Run Existing Test Set

# Description

The Run Existing Test Set activity allows you to run an existing test set created in Orchestrator.

This activity needs a Testing license to run.

# Project compatibility

|

# Configuration



* Test set name - The name of the test set to be run.
* Tenant - The name of the Orchestrator tenant where the test set is located.
* Folder name - The name of the Orchestrator folder feed. This is the Orchestrator folder where the tests will be run. Make sure you have the right machines and the Testing license allocated.



Common

* Continue on error - (Optional) Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

Input

* Attach Robot logs - (Optional) Select to include the test set execution logs in the report. Defaults to false.
* Number of retries - (Optional) Specifies how many times failed test cases should reexecute. Defaults to 0.

OutputResults file path (Output) - Absolute path to the test results in JUnit XML format. The result is always returned. It is returned even in case of an Exception being thrown as a result of analysis failure or if Continue on error is checked.Test set report (Output) - Returns the test report as object.
