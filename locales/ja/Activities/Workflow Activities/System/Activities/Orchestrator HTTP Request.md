# Orchestrator HTTP Request

UiPath.Core.Activities.OrchestratorHttpRequest

# Description

Performs HTTP requests to the Orchestrator API by authenticating under the Robot it is executed on. You can use the GET, POST, PUT, PATCH and DELETE verbs to extract data or manipulate it, and send specific information through JSON. Please note that for each request you might need different rights on the Orchestrator Robot role, depending on what requests you are doing, and the Robot has to be connected to Orchestrator. For example, to run PUT requests on organization units, you need View, Create, and Edit permissions. The activity runs under the Robot which executes it.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Cross-Platform configuration

* Orchestrator Folder - The path to the Orchestrator folder to use in the activity.
* Method - The request method to be used when calling the Orchestrator API. The following HTTP verbs are supported: GET, POST, PUT, PATCH and DELETE. By default, the GET verb is selected.
* Relative Endpoint - The endpoint at which to make requests, relative to your base Orchestrator URL.
* JSON Payload - The information you want to send to the indicated Orchestrator endpoint, in a JSON format. The JSON must not be indented. This field supports only strings, string variables or string expressions.

Additional options

Options

* Timeout(milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* Continue on error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (true, false). The default value is false. As a result, if the field is not configured and an error is thrown, the execution of the project stops. If the value is set to true, the execution of the project continues regardless of any error.

Output

* Headers - Reference to the headers returned by the request.
* JSON Response - The JSON returned by the HTTP request, as a string variable.
* Status Code - The status code returned by the HTTP request, as an integer variable.

# Windows - Legacy configuration

Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (true, false). The default value is false. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to true, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.
* Timeout(milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* JSON Payload - The information you want to send to the indicated Orchestrator endpoint, in a JSON format. The JSON must not be indented. This field supports only strings, string variables or string expressions.
* Method - The request method to be used when calling the Orchestrator API. The following HTTP verbs are supported: GET, POST, PUT, PATCH and DELETE. By default, the GET verb is selected.
* Relative Endpoint - The endpoint at which to make requests, relative to your base Orchestrator URL.

Misc

* Folder Path - The path of the folder where the request should be made, if different from the folder where the process is running. This field only supports string values, with / as the separator to indicate subfolders. For example "Finance/Accounts Payable".
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Headers - Reference to the headers returned by the request.
* JSONResponse - The JSON returned by the HTTP request, as a string variable.
* StatusCode - The status code returned by the HTTP request, as an integer variable.

For example, the request in the following screenshot enables you to create a new organization unit, Documentation, on the Orchestrator your Robot is connected to. The JSON response and status code are saved as variables.

![0fa6367-orchestrator_http_request=GUID-85002DEF-8A31-4DE2-B3D8-65E332889714=1=en=Default](/images/0fa6367-orchestrator_http_request=GUID-85002DEF-8A31-4DE2-B3D8-65E332889714=1=en=Default.png)
