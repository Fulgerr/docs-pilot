# Activities Generated from Web Services

Studio enables you to generate activities directly from web services by using the New Service wizard, as explained here. After being generated and loaded into the project library, the activities can be easily browsed in the Activities panel.

These activities have a dual structure, one part being standardized, while the other depends on the actual web services you generate the activities from.

First, the class of the activity has the structure UiPath.WebClient.[ServiceName].[RequestName], where [ServiceName] is the name of the web service, and [RequestName] is the name of the API call based on which the activity is generated.

The properties in the Client property section vary according to what kind of web service the activity was generated from. The two main properties they can have are Request and Response. The Request property can contain sub-properties as they are defined in the web service you are using.

Activities generated from SOAP and Swagger services cannot be localized in Studio.

A typical property structure looks like this:

Client

* Request - The request that you want to send to the web service.
* Response - The response received from the web service.

Client Certificate Authentication

* ClientCertificate - The full path to the client certificate file on your hard drive. This field supports only strings and String variable.
* ClientCertificatePassword - The password for the specified client certificate file. This field supports only strings and String variable.

Common

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Misc

* Headers - Enables you to include custom headers in the HTTP request. Click the Ellipsis button to open the Headers window.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Simple Authentication

* Username - Indicates that the web service uses simple authentication and enables you to input your username. Adding a password is also required. This property supports strings and string variables.
* Password - Indicates that the web service uses simple authentication and enables you to input your password. Adding a username is also required. This property supports strings and string variables.

Windows Authentication

* UseWindowsCredentials - If selected, this check box indicates that Windows Credentials should be used with the specified web service.
