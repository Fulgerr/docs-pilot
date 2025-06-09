# Attach Browser

UiPath.Core.Activities.BrowserScope

A container that enables you to attach to an already opened browser and perform multiple actions within it. This activity is also automatically generated when using the Web recorder.

# Properties

Input

* Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents. If both this property and the Browser property are configured, the Selector property is used at design time, and the Browser property is used at runtime.
* BrowserType - Choose the type of browser you want to use. The following options are available: IE, Firefox, Chrome, Edge, Custom. The Custom type is suitable for other Chromium-based browsers, such as JxBrowser. the Hidden property is not supported when using the Custom browser type. For more information on configuring the custom browser, view the Custom Browser section.
* Browser - The existing browser variable that you want to attach to. If both this property and the Selector property are configured, the Selector property is used at design time, and the Browser property is used at runtime.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Options

* SearchScope - The application window in which to search for the UI element defined by the Selector property.

Output

* UiBrowser - The Browser variable returned by the activity. To avoid the need of indicating again the same instance of a browser and to also make sure the browser instance you are automating does not change, you can reuse this output variable as an input variable in another activity, Attach Browser or Use Application/Browser for example, or you can even reuse it as an argument in another workflow.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Custom Browser

A Custom browser is a browser that is different from the widely used browsers (Chrome, Chromium Edge, Firefox, IE etc.) and that is built on top of Chromium project. We support two categories of such browsers: browsers built with Chromium Embedded Framework (CEF) and browsers that use the JxBrowser framework.

These custom browsers can be automated by using the WebDriver communication method.

For this to happen, they must support the --remote-debugging-port command line parameter, the same way all Chromium-based browsers support it.

Configuring a Custom Browser

The custom browser you want to use must have a chromedriver.exe executable suitable for the Chromium version on top of which the Custom browser was built in PATH.

In the registry key HKEY_CURRENT_USER or HKEY_LOCAL_MACHINE, under Software\UiPath\UiPath Platform\CustomBrowser the Command value must hold the path to the custom browser executable, or a command that starts that custom browser.

Optionally, in cases when you need to run only a single instance of the custom browser and, for security reasons, want to specify the remote-debugging-port on which communication with the custom browser is done, a registry value called RemoteDebuggingPort must be added in the same registry key where Command was specified.

Selectors from pages of such a custom browser have the browser app name custom_browser.
