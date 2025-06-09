# Redirecting robots through a proxy server

For a Robot to establish direct communication with Orchestrator, it needs to be on the same network or use an open one. Otherwise, you need to set up a proxy server to facilitate the communication.Set up a proxy by either using a proxy script or supplying the proxy server address with a list of addresses to bypass. Only one method can be used. If both are configured, the proxy script takes precedence.The following configuration options are available:Configuring the web browserConfiguring the Windows proxy settingsConfiguring the proxy setting through command line parametersEditing the uipath.config fileWhen updating from versions previous to v2021.4, proxy configurations are migrated from the proxy.config file to the uipath.config in order to match the new format.

# Proxy for Use Mode robots

User Mode robots inherit the proxy settings configured for your web browser.

For proxy settings that require basic non-Windows authentication, store the necessary credentials in the Credential Manager of the machine.

To apply proxy settings on User Mode robots, you need to restart the User Host Service. You can do this by signing out of the Windows user session and then signing back in.

# Proxy for Service Mode robots

To correctly use proxy settings for Service Mode robots with the Interactive Sign In and Live Streaming features, you need to modify both the uipath.config file and the corresponding Windows Settings of the user account running the Robot.

# Proxy settings based on user types (Executor)

In the context of UiPath, Windows processes can run under two distinct identities:

* Local user—These processes run under the identity of the user who is currently logged into the Windows session.
* LocalSystem users—These processes are typically services or background tasks that run with system-level privileges.

When configuring a proxy in Windows, the proxy settings are tied to the user executing the process. Therefore, depending on the identity of the process making the HTTP request, there are two possible scenarios for proxy configuration:

* The proxy defined for the user in Windows is used.
* The proxy settings are loaded from the uipath.config file.

The table below summarizes the Robot-related Windows processes, the user identities under which they run, and the HTTP requests they perform:

Windows processUser identityHTTP requestsUiPath.ServiceHost.exeLocalSystemResponsible for service communication with Orchestrator, including:Fetching heartbeatsFetching jobs and submitting job statesHandling logs for unattended processesManaging authentication for the serviceDownloading packagesUiPath.UserHost.exeUserResponsible for service communication with Orchestrator when installed in User Mode, including:Fetching heartbeatsManaging logs for processesHandling authentication for AssistantDownloading packagesUiPath.Executor.exeLocalSystem (when running a background job)User (when running regular jobs)Responsible for handling automation-specific HTTP requests, including:Managing assets and queue itemsSending activity-specific requests (HTTP requests to external services)UiPath.Assistant.exeUserResponsible for handling Assistant-related traffic, including:Process list managementTrigger handlingMarketplace interactionsUiPath.RemoteDebugging.Agent.exeUserResponsible for handling remote debugging traffic via SignalR.UiPath.UpdateService.Worker.exeLocalSystemResponsible for downloading the MSIs from Orchestrator.

# 



# Windows Credentials Proxy Authentication

The proxy server might require credentials to allow traffic. You can configure the proxy to authenticate using the credentials of the logged-in Windows user.

To enable this feature, add the system environment variable UIPATH_PROXY_USE_DEFAULT_CREDENTIALS on the machine running the Robot and set its value to true. This tells the Robot to use the Windows Credentials of the current user for proxy authentication.

# Basic Authentication

Starting with version 2021.10, the Robot Service supports proxy servers using Basic Authentication protocols.

User Mode robots - With Basic Authentication, the Assistant identifies if a proxy configuration is implemented on the machine and prompts the user for their credentials.

Service Mode robots - The Robot Executor does not support Basic Authentication methods for proxy configurations. While you can use Basic Authentication for connecting to Orchestrator and downloading packages, you cannot use it within the actual workflow execution. To enable Basic Authentication for Service Mode robots, update the UiPath.config file with the following proxy parameters:

<webProxySettings>
<add key="ProxyAddress" value="http://my.proxy.net:8008" />
<add key="UserName" value="myUser" />
<add key="Password" value="myPassword" />
<add key="Domain" value="myDomain" />
</webProxySettings>

# Live streaming and remote control in a proxy setup

Live streaming and remote control features do not work in a proxy setup for Robot versions older than 2024.10.5. Upgrade your Robot to versions 2024.10.5+ to access these features in a proxy setup.

## Configuring the web browser

Open the Internet Properties window.On the Connections tab, select LAN settings. The Local Area Network (LAN) Settings window opens. Depending on your setup, you can set a proxy configuration script or a proxy server.To use a proxy script, select Use automatic configuration script, and provide the address to the script.To manually set up the proxy server, select Use a proxy server for your LAN, then provide the address of the proxy server and the port.To save your settings, select OK.In your web browser, test the connection by accessing the Orchestrator URL.


## Configuring the Windows proxy settings

Open the Proxy settings window.To use a proxy script, under Automatic proxy setup, switch on the Use setup script. Provide the address to the script.To manually set up the proxy server, under Manual proxy setup, switch on the Use a proxy server. Provide the address of the proxy server and the port.Adding the http:// prefix to the proxy server address prevents Robot from making HTTPS calls. To ensure the proxy works as expected, remove the http:// prefix entirely or add the proxy address with both http:// and https:// prefixes.For example:Incorrect - http://proxyaddress,Correct - https://proxyaddress, http://proxyaddress; https://proxyaddressTo save your settings, select Save.


## Editing the uipath.config file

Navigate to the installation folder, %ProgramFiles%\UiPath\Studio.Search for the uipath.config file and open it using a text editor, such as Notepad++.Add the <webProxySettings> tag and set the values based on your proxy environment.To use a proxy script, provide the following key-value pair:<webProxySettings>
    <add key="ScriptAddress" value="http://localhost/proxy.pac" />
</webProxySettings>To provide a proxy address, provide the following key-value pairs:<webProxySettings>
    <add key="ProxyAddress" value="http://1.1.1.1:1234/" />
    <add key="BypassLocalAddresses" value="True" />
    <add key="BypassList" value="server\.domain\.local$;www.google.com;192\.168\.\d{1,3}\.\d{1,3}" />
</webProxySettings>Save the uipath.config file.Restart the Robot service or the device.


## Configuring the proxy settings during Robot installation

To add the proxy settings while installing Service Mode robots, use the dedicated command line parameters in your installation command.For example, the following command installs the Robot in Service Mode and uses a script to configure proxy:UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService PROXY_SCRIPT_ADDRESS=http://localhost/proxy.pacThe following command installs the Robot in Service Mode and sets up the Basic Authentication for proxy settings:UiPathStudio.msi ADDLOCAL=DesktopFeature,Robot,RegisterService PROXY_ADDRESS=http://my.proxy.net:8008 PROXY_USERNAME="myUser" PROXY_PASSWORD="myUser" PROXY_DOMAIN="myUser"


## Checking the proxy server connection

Connect the Robot to OrchestratorDeploy some packages to an environment which contains the previously configured Robot.Navigate to the %userprofile%\.nuget\ folder and check if the corresponding process and activities packages have been downloaded.Run the corresponding job to check if it runs successfully.

