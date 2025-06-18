# Robot licensing

A licensing process most commonly starts with activating your Orchestrator license. Afterward, you license your Robot by connecting it to Orchestrator or from the Command Line, using the LicenseTool utility.

When your Robot is not connected to Orchestrator, you can activate the license with the help of the Command Prompt.

## Attended licenses

To execute attended automations, you need to allocate one or more user licenses to your robots.

For this, you need to have a robot account in Orchestrator. Once the user
            license is assigned to a specific username, that user can run one or more attended
            automations on the computer under their username.

The following user licenses are available for attended automations:

* Attended
* Citizen Developer
* Automation Developer


## Unattended licenses

To execute unattended automations, you need to allocate one or more robot licenses (or runtimes) to your robots, specifically to the machine that hosts your robots. The number of runtimes assigned to a machine represents the maximum number of concurrent executions. For example, with one runtime, you can execute only one unattended automation at a time. With five runtimes, you can execute up to five unattended automations at the same time, on the same host machine.

Depending on the type of automation, allocate the runtimes as follows:

* For foreground automations - allocate one runtime, as this type of automations are executed one at a time.
* For background automations - Windows machines require one runtime, as they execute one background automation at a time. Windows-Server machines can execute several background automations simultaneously, which represents a concurrent execution.
* For concurrent executions - allocate more than one runtime. The number of allocated runtimes determines how many automations you can execute simultaneously on the same machine.

The following runtimes are available for unattended automations:

* Unattended (Production)
* NonProduction
* Testing


## LicenseTool utility

The UiPath.LicenseTool.exe is a command-line utility which enables you to activate your machine online or offline, and update your license information.

The LicenseTool utility activates your license locally, which requires you to select the Standalone license type when creating a robot in Orchestrator.

The following sections provide the most common commands for online, offline, and generic licensing operations. The commands need to be initiated in the same folder where the utility resides, which be default is the "C:\Program Files\UiPath\Studio" folder.


### Online Operations

The following commands require an active internet connection in order to process your request.

# Activate

The activate command is used to activate a license online via an existing license code. The following parameters are supported:

ParameterDescriptionPriority-l, --LicenseCodeThe license code required for activation.Mandatory-u, --ProxyUrlThe URL used for the proxy connection (such as http://your.proxy.server.com).Optional-p, --ProxyPortThe Port number of the proxy connection.Optional. Mandatory if the -u parameter is used.-s, --ProxyUserThe username associated with your proxy connection.Optional. Mandatory if the -u parameter is used.-w, --ProxyPasswordThe password for the user associated with your proxy connection.Optional. Mandatory if the -u parameter is used.

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe activate -l 1234-1234-2194-5598
License registration state: ActiveLicense
License successfully activated!

Online activation can also be done from Studio.

# Update

The update command is used update an existing license online. The following parameters are supported:

ParameterDescriptionPriority-u, --ProxyUrlThe URL used for the proxy connection (such as http://your.proxy.server.com).Optional-p, --ProxyPortThe Port number of the proxy connection.Optional. Mandatory if the -u parameter is used.-s, --ProxyUserThe username associated with your proxy connection.Optional. Mandatory if the -u parameter is used.-w, --ProxyPasswordThe password for the user associated with your proxy connection.Optional. Mandatory if the -u parameter is used.

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe update
License registration state: ActiveLicense
License successfully updated!

# Deactivate

The deactivate command is used to deactivate a local license. This way, the license becomes available for activation on a different computer. The following parameters are supported:

ParameterDescriptionPriority-u, --ProxyUrlThe URL used for the proxy connection (such as http://your.proxy.server.com).Optional-p, --ProxyPortThe Port number of the proxy connection.Optional. Mandatory if the -u parameter is used.-s, --ProxyUserThe username associated with your proxy connection.Optional. Mandatory if the -u parameter is used.-w, --ProxyPasswordThe password for the user associated with your proxy connection.Optional. Mandatory if the -u parameter is used.

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe deactivate
License registration state: NoLicenseAvailable
License successfully deactivated!


### Offline Operations

# Activation-Request

The activation-request command is used to generate an activation token from your license code. The generated token needs to be used on the Activation Portal to generate the corresponding license file. The following parameters are supported:

ParameterDescriptionPriority-l, --LicenseCodeThe license code required for activation.Mandatory-o, --FileNameWrites the license information to file. If this parameter is not specified, the license information is displayed in the command prompt window.Optional

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe activation-request -l 1234-2303-2194-5598
Activation Token: eyJsaWNlbnNlQ29kZSI6Ijk1NTUtMjMwMy0yMTk0LTU1OTgiL12345WFpbCI6InNvbWUuZW1haWxAZXhhbXBsZS5vcmciLCJtZXRhZGF0YSI6eyJyYW0iOiIzNDE0NjA0MTg1NiIsImRpc3BsYXlOYW1lIjoiSW50ZWwoUikgVUhEIEdyYXBoaWNzIDYzMCIsInZlcnNpb24iOiIxOS43LjAiLCJzeXN0ZW1MYW5nIjoiMDQwOSIsInN5c3RlbU1vZGVsIjoiT3B0aVBsZXggNTA2MCIsIm9zTmFtZSI6IlBDLURPRE9JVUIiLCJ1c2VyTmFtZSI6ImJvZ2Rhbi5kb2RvaXUiLCJzeXN0ZW1OYW1lIjoiUEMtRE9ET0lVQiIsImRpc3BsYXlSZXMiOiIxMDI0IGJ5IDc2OCBwaXhlbHMsIFRydWUgQ29sb3IsIDYwIEhlcnR6IiwicHJvY2Vzc29yIjoiSW50ZWwoUikgQ29yZShUTSkgaTctODcwMCBDUFUgQCAzLjIwR0h6Iiwic3lzdGVtVHlwZSI6Ing2NC1iYXNlZCBQQyJ9LCJsaWNlbnNpbmdNb2RlbERhdGEiOnsidXNlcklkIjoiYm9nZGFuLmRvZG9pdSIsIm1hY2hpbmVJZCI6IlBDLURPRE9JVUIifX0=
Go to https://activate.uipath.com and paste the activation token in the dialogue box to generate the license file for offline activation.

# Activate-Offline

The activate-offline command is used to activate a license offline. It uses the license file generated by the Activation Portal from the provided activation token generated by the activation-request command. The following parameters are supported:

ParameterDescriptionPriority-f, --LicenseFileThe path to the license file obtained from the activation portal.Mandatory 1-i, --LicenseContentThe content of the license file received after using the Activation-Request operation.Mandatory 1

* 1 - You can only use either the -f or -i parameters with the activate-offline operation. They are not both supported at the same time.C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe activate-offline -f c:\Downloads\license.txt License registration state: ActiveLicense License successfully activated!

Offline activation can also be done from Studio.

# Update-Request

The update-request command is used to generate an update token for your license. The update token needs to be used on the Activation Portal to generate the corresponding license file. The following parameters are supported:

ParameterDescriptionPriority-o, --FileNameWrites the license information to file. If this parameter is not specified, the license information is displayed in the command prompt window.Optional

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe update-request
Update Token: eyJsaWNlbnNlQ29kZSI6Ijk1NTUtMj102345yMTk0LTU1OTgiLCJlbWFpbCI6bnVsbCwibWV0YWRhdGEiOnsicHJvY2Vzc29yIjoiSW50ZWwoUikgQ29yZShUTSkgaTctODcwMCBDUFUgQCAzLjIwR0h6Iiwic3lzdGVtTW9kZWwiOiJPcHRpUGxleCA1MDYwIiwidXNlck5hbWUiOiJib2dkYW4uZG9kb2l1IiwiZGlzcGxheVJlcyI6IjEwMjQgYnkgNzY4IHBpeGVscywgVHJ1ZSBDb2xvciwgNjAgSGVydHoiLCJ2ZXJzaW9uIjoiMTkuNy4wIiwicmFtIjoiMzQxNDYwNDE4NTYiLCJzeXN0ZW1MYW5nIjoiMDQwOSIsIm9zTmFtZSI6IlBDLURPRE9JVUIiLCJkaXNwbGF5TmFtZSI6IkludGVsKFIpIFVIRCBHcmFwaGljcyA2MzAiLCJzeXN0ZW1UeXBlIjoieDY0LWJhc2VkIFBDIiwic3lzdGVtTmFtZSI6IlBDLURPRE9JVUIifSwibGljZW5zaW5nTW9kZWxEYXRhIjp7InVzZXJJZCI6ImJvZ2Rhbi5kb2RvaXUiLCJtYWNoaW5lSWQiOiJQQy1ET0RPSVVCIn19
Go to https://activate.uipath.com and paste the update token in the dialogue box to generate the license file for offline update.

# Update-Offline

The update-offline command is used to update a license offline. It uses the generated file by the Activation Portal from the provided update token generated by the update-request command. The following parameters are supported:

ParameterDescriptionPriority-f, --LicenseFileThe path to the license file obtained from the activation portal.Mandatory 1-i, --LicenseContentThe content of the license file received after using the Update-Request operation.Mandatory 1

* 1 - You can only use either the -f or -i parameters with the update-offline operation. They are not both supported at the same time.C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe update-offline -f c:\Downloads\license-update.txt License registration state: ActiveLicense License successfully updated!

# Deactivation-Request

The deactivation-request command is used to deactivate a local license offline and generate a deactivation token. The license is immediately deactivated on the local computer and another one can be activated if needed. The generated deactivation token needs to be used on the Activation Portal to deactivate the license. Please note that the license which was deactivated offline with this command can not be reused until it is released. The following parameters are supported:

ParameterDescriptionPriority-o, --FileNameWrites the license information to file. If this parameter is not specified, the license information is displayed in the command prompt window.Optional

C:\Program Files\UiPath\Studio\UiPath.LicenseTool.exe deactivation-request
Deactivation Token: eyJsaWNlbnNlQ29kZSI6Ijk123458My0yMTk0LTU1OTgiLCJsaWNlbnNpbmdNb2RlbERhdGEiOnsidXNlcklkIjoiYm9nZGFuLmRvZG9pdSIsIm1hY2hpbmVJZCI6IlBDLURPRE9JVUIifSwibWV0YWRhdGEiOnsib3NOYW1lIjoiUEMtRE9ET0lVQiIsInVzZXJOYW1lIjoiYm9nZGFuLmRvZG9pdSIsInZlcnNpb24iOiIxOS43LjAiLCJkaXNwbGF5UmVzIjoiMTAyNCBieSA3NjggcGl4ZWxzLCBUcnVlIENvbG9yLCA2MCBIZXJ0eiIsInN5c3RlbU5hbWUiOiJQQy1ET0RPSVVCIiwicHJvY2Vzc29yIjoiSW50ZWwoUikgQ29yZShUTSkgaTctODcwMCBDUFUgQCAzLjIwR0h6Iiwic3lzdGVtVHlwZSI6Ing2NC1iYXNlZCBQQyIsInJhbSI6IjM0MTQ2MDQxODU2IiwiZGlzcGxheU5hbWUiOiJJbnRlbChSKSBVSEQgR3JhcGhpY3MgNjMwIiwic3lzdGVtTGFuZyI6IjA0MDkiLCJzeXN0ZW1Nb2RlbCI6Ik9wdGlQbGV4IDUwNjAifX0=
License successfully deactivated locally!
To release the license on the sever side and use it on another machine, go to https://activate.uipath.com and paste the deactivation request certificate as text in the <code>Deactivate your licence</code> tab.


### Generic Operations

The UiPath.LicenseTool.exe utility also contains a few generic commands. They provide information about your license, and can help you get accustomed to the supported commands and parameters.


| Command | Description |
| --- ---| info | Displays information about the license, such as:Activation IdLicense registration stateLicense codeStart dateEnd dateGrace Period (days)End date including grace periodNext check date |
| help | Displays information about all the supported commands and parameters. |
| version | Displays the version of the UiPath.LicenseTool.exe utility. |

