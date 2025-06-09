# Export UI Tree

UiPath.Core.Activities.ExportUiTree

Exports all UI elements and their respective attributes and values found in the indicated element as an XML or JSON file. This activity helps you understand why a selector failed during execution by inspecting the output of the activity and comparing it with the selector configuration.

# Properties

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.

Input

* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to "False". Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete. SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* ExportFormat - A drop-down that specifies the format in which you want the UI elements to be exported. You can choose between XML and JSON. By default, XML is selected.
* ExportPath - The path where you want the file containing the extracted UI Tree to be created. If this field is left blank, the file is exported as an ExportedString Out argument. This field supports only strings and String variables.
* Filter - A filter that enables you to export only certain types of selectors. The exported UI Tree contains only UI elements depending on the types of selectors specified in this field.
* IncludeScreenshots - If selected, saves screenshots of the UI Tree alongside the file containing the selectors. By default, this check box is cleared.
* OperationTimeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to generate the file containing the exported UI Tree.
* Overwrite - If selected, the activity overwrites any files existing at the path specified in the ExportPath property field. By default, this check box is cleared.
* UIFramework - A drop-down menu that specifies the UI Framework used to detect top level UI elements. There are three possible choices: Default, Active Accessibility, and UiAutomation. By default, Default is selected. This property field is used only when exporting the content of the entire desktop.

# In the body of the activity

The body of the activity enables you to configure several parameters of the activity without interacting with the Properties panel, such as:

The Indicate on Screen button enables you to select the target application whose UI Tree you want to export.

The Export Format drop-down menu enables you to select between the XML or JSON formats which can be used for the exported file.

The Destination File field enables you to specify the path where you want the file to be saved or Browse for the folder.

The Include Screenshots check box specifies whether screenshots of the actual UI elements are to be saved alongside the file containing the UI Tree or not. By default, the check box is cleared.
