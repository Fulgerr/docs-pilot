# Download Solution Package Configuration

# Description

This activity downloads a specific solution package's configuration from a designated tenant.

# Project compatibility

|

# Configuration



* Tenant - The tenant name from where the solution package configuration is downloaded.
* Solution package name - The name of the solution package.
* Path to solution package configuration (Output)- The absolute path where the solution package configuration is downloaded.



Common

* Continue on error - (Optional) Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 120000 (2 minutes).

Input

* Solution package version - (Optional) The version of the solution package. Defaults to latest if not specified.
* Solution package configuration format - Available formats are: JSON, YAML. Defaults to JSON if not specified.
