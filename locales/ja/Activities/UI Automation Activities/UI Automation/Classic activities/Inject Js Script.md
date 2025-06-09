# Inject Js Script

UiPath.Core.Activities.InjectJsScript

Executes JavaScript code in the context of the web page corresponding to a UiElement.

# Properties

Input

* ScriptCode - The JavaScript code you want to run. You can write it here as a string, or add the full path of a .js file which contains the code to be executed. It should contain a single anonymous function, as in these examples:function (element, input) { return "result"; }async function (element, input) { const asyncResult = await new Promise((resolvePromiseCb) => { const timeoutMs = 100; setTimeout(() => { resolvePromiseCb("async_result"); }, timeoutMs); }); return asyncResult; }where element represents the HTML element corresponding to the calling UI node, and input represents the input string provided by the caller.
* InputParameter - Input data for the JavaScript code, as a string or string variable.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to "False". Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete. SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.

Output

* ScriptOutput - String result returned from JavaScript code.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* Execution world - The JavaScript environment for the script execution.Isolated - Allows access to the HTML elements, but prevents access to page variables and code. Use this option to ensure that the script execution does not conflict with the page. Page - Allows access to the HTML elements, page variables, and code. Use this option if you need to access page variables (e.g., jQuery $) or to interact with page code (e.g., window.alert). Using this option is required to fix this known issue specific to MV3 extensions.

You can change the Execution world property for all Inject Js
                    Script activities through Project settings.

The Execution world
                option is available starting with UiPath.UIAutomation.Activities version
                22.12.

# Example of using the Inject JS Script
                activity

The Inject JS Script activity is used for opening a
                browser and processing .js files within those pages. You must have
                the browser extensions installed and enabled.

To exemplify how to use this
                activity, we have created an example that opens a browser and displays an alert with
                the text specified by the user.

This is how the automation process can be
                built:

1. Open Studio and create a new Process.Make sure to place the .js file in the project folder. For this example we have used the file example.js.
2. Drag a Sequence to the Workflow Designer.Create the following variables:Variable NameVariable TypeDefault ValueTextToWriteGenericValue
3. Drag an Input Dialog activity inside the Sequence container.In the Properties panel, add the name Ask for message in the DisplayName field. Add the expression "Please insert the text to be written on the web page." in the Label field. Add the message "Please insert text" in the Title field. Add the variable textToWrite in the Result field.
4. Place an Open Browser activity below the Input Dialog activity.Add the address "https://www.google.com/" in the Url field.
5. Drag an Inject JS Script in the Body container of the Open Browser activity.In the Properties panel, add the name Show Alert in the Display Name field. Add the variable TextToWrite in the InputParameter field. Add the expression "Inject JS\example.js" in the ScriptCode field.
6. Run the process. The robot opens a new browser page and provides the alert with the text added by you.

Download example
