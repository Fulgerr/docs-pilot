# Inject Js Script

UiPath.Core.Activities.NInjectJsScript

# 

Executes JavaScript code in the context of the web page corresponding to a UiElement.







# 

|  |

# 



* 
* Script code - The JavaScript code you want to run. You can write it here as a string, or add the full path of a .js file which contains the code to be executed. It should contain a single anonymous function, as in the example below:function (element, input) { return "result"; }async function (element, input) { const asyncResult = await new Promise((resolvePromiseCb) => { const timeoutMs = 100; setTimeout(() => { resolvePromiseCb("async_result"); }, timeoutMs); }); return asyncResult; }where element represents the HTML element corresponding to the calling UI node, and input represents the input string provided by the caller.
* InputParameter - Input data for the JavaScript code, as a string or string variable.
* Save script output to - Where to save the result of the JavaScript code.





* 
* 
* 
* 
* 



* Input parameter - See Input parameter in the Designer panel.
* Script code - See Script code in the Designer panel.
* 



* 
* 



* 



* Execution world - The JavaScript environment for the script execution. Choose from the drop-down menu of one two options:Isolated - Allows access to the HTML elements, but prevents access to page variables and code. Use this option to ensure that the script execution does not conflict with the page. This is the default selection.Page - Allows access to the HTML elements, page variables, and code. Use this option if you need to access page variables (e.g., jQuery $) or to interact with page code (e.g., window.alert). Using this option is required to fix this known issue specific to MV3 extensions.You can change the Execution world property for all Inject Js Script activities through Project settings.



* Script output - The string result returned from JavaScript code.

# 

* 
* Script code - The JavaScript code you want to run. You can write it here as a string, or add the full path of a .js file which contains the code to be executed. It should contain a single anonymous function, as in the example below:function (element, input) { return "result"; }async function (element, input) { const asyncResult = await new Promise((resolvePromiseCb) => { const timeoutMs = 100; setTimeout(() => { resolvePromiseCb("async_result"); }, timeoutMs); }); return asyncResult; }where element represents the HTML element corresponding to the calling UI node, and input represents the input string provided by the caller.





* 
* 
* 
* 



* Execution world - The JavaScript environment for the script execution. Choose from the drop-down menu of one two options:Isolated - Allows access to the HTML elements, but prevents access to page variables and code. Use this option to ensure that the script execution does not conflict with the page. This is the default selection.Page - Allows access to the HTML elements, page variables, and code. Use this option if you need to access page variables (e.g., jQuery $) or to interact with page code (e.g., window.alert). Using this option is required to fix this known issue specific to MV3 extensions.You can change the Execution world property for all Inject Js Script activities through Project settings.



* Script output - The string result returned from JavaScript code.



* 
*
