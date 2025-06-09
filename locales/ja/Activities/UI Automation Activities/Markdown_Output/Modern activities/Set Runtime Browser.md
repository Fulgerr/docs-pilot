# Set Runtime Browser

UiPath.UIAutomationNext.Activities.NSetRuntimeBrowser

# 

Sets the currently active runtime browser.

This configuration remains in effect for both Modern and Classic activities until
                either the execution ends or another Set Runtime Browser activity is
                encountered within the same project.

# 

|  |

# 



* Browser type - Choose the type of browser you want to be used at runtime. This property accepts only NBrowserType variables or arguments.None - Enum value: NBrowserType.None. The Runtime browser project setting (Project Settings > UI Automation Modern > Application/Browser) is no longer overridden.DefaultOSBrowser - Enum value: DefaultSystemBrowser.BrowserType. Uses the default browser set on the target machine.Chrome - Enum value: NBrowserType.Chrome. Uses the Google Chrome browser.Edge - Enum value: NBrowserType.Edge. Uses the Microsoft Edge browser.Firefox - Enum value: NBrowserType.Firefox. Uses the Mozilla Firefox browser.





* 
* 
* 
* 
* 



* Browser type - Choose the type of browser you want to be used at runtime. This property accepts only NBrowserType variables or arguments.None - Enum value: NBrowserType.None. The Runtime browser project setting (Project Settings > UI Automation Modern > Application/Browser) is no longer overridden.Default System Browser - Enum value: DefaultSystemBrowser.BrowserType. Uses the default browser set on the target machine.Chrome - Enum value: NBrowserType.Chrome. Uses the Google Chrome browser.Edge - Enum value: NBrowserType.Edge. Uses the Microsoft Edge browser.Firefox - Enum value: NBrowserType.Firefox. Uses the Mozilla Firefox browser.



* 

# 

* Browser type - Choose the type of browser you want to be used at runtime. The following options are available: Chrome, Edge, Safari. The default options is Chrome.





* 
* 
* 
* 

# Handling order

The order used for setting the browser type used at runtime is the following:Through the Set Runtime Browser activity.Through the Runtime browser project setting (Project Settings > UI
                        Automation Modern > Application/Browser).Through the Use Application/Browser activity or other UI Automation
                        activities.

# Configure the browser type from Orchestrator

Orchestrator has built-in support for a limited number of base data types, such as
                    string, integer, boolean,
                etc. For more details, you can check out the About input and output arguments page.

For data types that are not supported by default in Orchestrator, you must use a JSON
                representation of that value. For instance, in the case of enums,
                the JSON representation is either the integer value of the
                    enum value or the string value.

To configure an NBrowserType argument in Orchestrator, you need to
                follow the steps below:Create an input argument in
                        your Studio project, for example in_RuntimeBrowser.Set the Browser type
                        property of the Set Runtime Browser activity with the value of the
                        argument.Publish your project to
                        Orchestrator.In Orchestrator, go to
                            Automations > Processes > Add Process.Under Runtime
                            Arguments, provide a value for the
                            in_RuntimeBrowser argument. You need to specify the
                        browser type in this format: "BrowserName". For example: "Edge". Quotes need
                        to be included. The following browser options are supported:"None""Chrome""Edge""Firefox"Save the value for the
                        argument. After creating the process, the value determines the browser type
                        used by the automation.
