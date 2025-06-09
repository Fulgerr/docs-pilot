# Element Scope

UiPath.Core.Activities.ElementScope

A container that enables you to attach to an existing UI element and perform multiple actions within it.

# Properties

Output

* UiElement - The UiElement to be used in subsequent children activities.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to "False". Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete. SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

# Example of using the Element Scope activity

Here you can see how the Element Scope activity is used in an example that incorporates multiple activities.
