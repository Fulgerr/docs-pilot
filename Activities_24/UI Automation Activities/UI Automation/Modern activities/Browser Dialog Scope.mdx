# Browser Dialog Scope

UiPath.UIAutomationNext.Activities.NBrowserDialogScope

# 

Captures and handles JavaScript dialogs such as: Alert, Confirm, Prompt. This activity should be used as a scope for the activities that may generate a browser dialog, so the activities that could trigger the dialog must be placed in the body of the Browser Dialog Scope activity.



# 

|

# Configuration



* From the Dialog type drop-down menu, select the type of JavaScript browser dialog handled by the Browser Dialog Scope activity:AlertConfirmPrompt
* Dialog response - Response to JavaScript confirm dialogs: Cancel or OK. It is only available for Confirm or Prompt dialog types.
* Prompt response text - Text response for JavaScript prompt dialogs.. It is only available for Prompt dialog type.
* Dialog message - String output variable to store the message of the dialog handled by the dialog scope.





* Wait for dialog to appear timeout - Specify the amount of type (in seconds) to wait for the dialog to appear before throwing an error. The default value is 30 seconds.

### How-to guide

In business process automation, users encounter cases when browser dialogs block the execution of the current browser page. Typically, the user would want to dismiss the browser dialog and also get the dialog message for later use in the business scenario.

For Windows projects this type of scenario can be handled by setting Window attach mode to Application instance for the Use Application/Browser container activity and generating the browser dialog selector with Active Accessibility (AA) UI framework.

But for Cross-platform projects (including Studio Web) we didn’t have any solution to handle this type of scenario.

JavaScript has three kind of popup boxes: Alert, Confirm and Prompt. The Browser Dialog Scope activity can handle this type of dialogs and it should be used as a scope for the activities that may generate a browser dialog.

The Browser Dialog Scope activity must be added inside a Use Application/Browser activity and the activities that could trigger the dialog must be placed in the body of the Browser Dialog Scope activity.



# Configuration for Alert

An Alert dialog is used to make sure information comes through to the user. When it pops up, the user will have to click the OK button to proceed, otherwise the execution is blocked.

This is how the Browser Dialog Scope activity can be configured to handle an Alert dialog that is triggered when you click a Submit button.





# Configuration for Confirm

A Confirm dialog is used when the user needs to verify or accept something. When it pops up, the user will have to click either the OK or Cancel button to proceed.

This is how the Browser Dialog Scope activity can be configured to handle a Confirm dialog that is triggered when you click a Submit button.



# Configuration for Prompt

A Prompt dialog is used when user needs to provide a text input for an operation. When it pops up, the user will have to click either OK or Cancel to proceed after entering an input value.



# Example for multiple dialog boxes

There are rare situations where a page opens multiple dialogs, one after another, when the user clicks a button. Let’s consider the following scenario:

* When the Submit Data button is clicked, a Prompt dialog is opened for the user to fill-in his/her name.
* After closing the Prompt dialog with the OK button, when the submit operation is finished, an Alert dialog is displayed.

The Browser Dialog Scope activity can be used to handle this situation by nesting multiple dialog scopes. They have to be arranged in the same order as the dialogs that they handle appear in the page. The workflow will continue once all the dialogs are handled. For the above scenario:

1. First, create a Browser Dialog Scope to handle the first dialog, in this case a Prompt dialog.
2. Inside the first scope, create a second Browser Dialog Scope to handle the second dialog, in this case an Alert dialog.
3. Inside the second scope, place the activity that triggers the dialogs, in this case a click on the Submit Data button.



# Dialog Handling App Card Options

Besides the Browser Dialog Scope activity, we added browser dialog handling options to the Use Application/Browser activity.

The new Dialog Handling settings in the App Card allow the user to describe how to auto-dismiss browser dialogs (which types of dialogs to dismiss and what response to give to confirm and prompt dialogs).

* Dismiss Alerts
* Dismiss Confirms + Confirm dialog response
* Dismiss Prompts + Prompt response text + Prompt dialog response



# Dialog Handling App Card Project Settings

Similar project settings have been added for Dialog Handling, which work as defaults for the Use Application/Browser Dialog Handling options.

* Windows projects: UI Automation Modern > Application/Browser
* Cross-platform projects: UI Automation > Application/Browser



# Browser Dialog Scope and App Card Dialog Handling Priority

When multiple Browser Dialog Scope activities and App Cards with Dialog Handling are nested it’s important to keep a few things in mind in order to determine how dialogs will be handled:

1. Browser Dialog Scope activities have priority over the App Card Dialog Handling options.
2. Nested Browser Dialog Scope activities handle multiple dialogs, in the order that they appear: the first Dialog Scope handles the first dialog, the second Dialog Scope handles the second dialog and so on.
3. Nested App Cards with Dialog Handling override each other: the inner App Card will override the settings of the outer App Card. For example, a top-level App Card can be configured to dismiss all dialogs with Cancel throughout the workflow, but for a small part of the workflow a short-lived App Card can used inside the top-level one to accept Confirm dialogs with OK, changing dialog handling only for that part of the workflow. Alerts and Prompts will still be dismissed according to the top-level App Card.

When a browser dialog appears and there are multiple Browser Dialog Scopes and App Cards with Dialog Handling which can handle the dialog, the Browser Dialog Scope or App Card that handles the dialog is selected in the following way:

1. The first (most outer) Browser Dialog Scope activity which: has a matching dialog type and didn't capture any dialog yet.
2. If no Browser Dialog Scope is found, then the last (most inner) App Card which is configured to handle the dialog type is used.
3. If no viable Browser Dialog Scope or App Card is found, then the dialog is not handled and will be displayed to the user.

