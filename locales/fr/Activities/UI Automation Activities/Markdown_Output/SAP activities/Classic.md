# Classic

The SAP activities listed in this section are part of the UI Automation Classic
            experience.

* Call Transaction
* Click Picture on Screen
* Click Toolbar Button
* Expand ALV Hierarchical
                    Table
* Expand ALV Tree
* Expand Tree
* Read Status Bar
* 
* SAP Logon
* SAP Session Attributes Change
                        Trigger
* Select Dates in Calendar
* Select Menu Item
* Table Cell Scope

### Call Transaction

UiPath.Core.Activities.SAP.CallTransaction

Enter transaction code or program, which will be executed in the current SAP GUI
            window.

# 

Enters transaction code or program, which is executed in the current SAP GUI
                window.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Transaction Code - Transaction code or program which is executed in the current SAP GUI window. Text must be quoted.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



Transaction Code - Transaction code or program which is executed in
                        the current SAP GUI window. Text must be quoted.


### Click Picture on Screen

UiPath.Core.Activities.SAP.ClickPictureOnScreen

# 

Clicks the picture displayed on a SAP GUI screen.

# 

|

# 



Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button
                            to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard
                                    where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI
                                    element selected in the visual tree.Change Informative Screenshot - Change the screenshot of
                                    the target application or web page.Remove Informative Screenshot - Remove the screenshot of
                                    the target application or web page.Show Informative Screenshot (double click) - Display the
                                    full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to
                                    a library project, from where it can be reused throughout your
                                    automation process.Click Type - Select
                        from the drop-down menu the type of mouse click to perform when simulating
                        the click event: Single, Double, Down, or Up.
                        The default option is Single.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* DisplayName - The display name of the activity.



* ClickType - Select from the drop-down menu the type of mouse click to perform when simulating the click event: Single, Double, Down, or Up. The default option is Single.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* KeyModifiers - Enables you to add a key modifier in combination with the action of the activity. The following options are available: None, Alt, Ctrl, Shift, Win. The default option is None.KeyModifiers cannot be used with the SimulateClick or SendWindowMessages options. No error is thrown when executing a workflow that contains an activity with one of these combinations of options.
* PictureOffsetX - Horizontal displacement from the picture's top left corner. This field supports only Int32 variables.
* PictureOffsetY - Vertical displacement from the picture's top left corner. This field supports only Int32 variables.


### Click Toolbar Button

UiPath.Core.Activities.SAP.ClickToolbarButton

# 

Clicks a button from the system or application SAP toolbars. After indicating the SAP
                Toolbar on the screen, the list with all available buttons is displayed in the
                activity.

![76ff72f-clck_tlbr_button=GUID-EEED297D-BFF7-41E0-BEC6-0DD2BDE6FB01=1=en=Default](/images/76ff72f-clck_tlbr_button=GUID-EEED297D-BFF7-41E0-BEC6-0DD2BDE6FB01=1=en=Default.gif)

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Toolbar Button - Specifies the button from the system or application SAP toolbars. After indicating the SAP Toolbar on the screen, the list with all available buttons is displayed in the activity.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* DisplayName - The display name of the activity.



* Button - Specifies the button from the system or application SAP toolbars. After indicating the SAP Toolbar on the screen, the list with all available buttons is displayed in the activity.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* AlterIfDisabled - If selected, the activity executes the action even if the specified UI element is disabled. This field only supports Boolean values (True, False). The default value is True.


### Expand ALV Hierarchical Table

UiPath.Core.Activities.SAP.ExpandALVHierarchicalTable

# 

Identifies any cell inside SAP ALV Hierarchical Table. After the identification of the cell all
                typical UI activities can be performed, such as Click, Double
                    Click, Get Text and
                others.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Level / Focused column - Defines which element is set as the focused.
* Level 0 / Header column - Defines which column to find in the header column.
* Value - Defines which value to find in the header column.
* Level 1 / Position column - Defines which column to find in the position column.
* Value - Defines which value to find in the position column.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.



* Level / Focused column - Defines which element is set as the focused.
* Level 0 / Header column - Defines which column to find in the header column.
* Level 0 / Value - Defines which value to find in the header column.
* Level 1 / Position column - Defines which column to find in the position column.
* Level 1 / Value - Defines which value to find in the position column.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* UiElement - The UiElement to be used in subsequent activities.


### Expand ALV Tree

UiPath.Core.Activities.SAP.ExpandALVTree

# 

Expands the
                parent ALV tree to the selected node. After indicating the SAP node element from the
                SAP GUI window, the selected node path is displayed in the activity.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Tree Path - Specifies ALV Tree Node from the parent tree. After indicating the SAP node element from the SAP GUI window, the selected node path is displayed in the activity.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.
* DisplayName - The display name of the activity.



* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.
* Tree Path - Specifies ALV Tree Node from the parent tree. After indicating the SAP node element from the SAP GUI window, the selected node path is displayed in the activity.



*


### Expand Tree

UiPath.Core.Activities.SAP.ExpandTree

# 

Expand parent tree to an active node or an active item. After indicating the SAP Tree
                element from the SAP GUI window, the Tree list with all available nodes and items is
                displayed in the activity.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Tree Item - Specifies Tree Item or Tree Node from the parent tree. The active node or item is selected. After indicating the SAP Tree element from the SAP GUI window, the Tree list with all available nodes and items is displayed in the activity.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* DisplayName - The display name of the activity.



* Item - Specifies Tree Item or Tree Node from the parent tree. The active node or item is selected. After indicating the SAP Tree element from the SAP GUI window, the Tree list with all available nodes and items is displayed in the activity.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* AlterIfDisabled - If selected, the activity executes the action even if the specified UI element is disabled. This field only supports Boolean values (True, False). The default value is True.


### Read Status Bar

UiPath.Core.Activities.SAP.ReadStatusbar

# 

Reads the message displayed in the Status Bar on the bottom of the SAP GUI
                window.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Message Type - Enables you to store the type of message in a variable.
* Message Text - Enables you to store the full message text in a variable.
* Message Data - Enables you to store the data from the status of message in a variable.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* MessageData - Enables you to store the data from the status of message in a variable. This field supports only String Array variables.
* MessageId - Enables you to store the ID of the message in a variable. Variable created in this field is of String type.
* MessageNumber - Enables you to store the number of the message in a variable. Variable created in this field is of String type.
* MessageText - Enables you to store the full message text in a variable. This field supports only String variables.
* MessageType - Enables you to store the type of message in a variable. This field supports only String variables. Messages are of the following types:S - Success.W - Warning.E - Error.


### SAP Login

UiPath.Core.Activities.SAP.Login

# 

Use the activity to log into an SAP system.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Client - The SAP client number you want to log into.
* Username - The username you want to use for logging in.
* Password - The password you want to use to log in. If you select the Secure radio button, the value of the password field is stored as SecureString.
* Language - Decide which language you want to use to display screens, menus, and fields.
* Multiple Logon Option - License information for Multiple Logon opens if a user attempts to log onto the system several times. Choose one option from the drop-down menu:Continue with this logon and end any other logonsContinue with this logon, without ending any other logons Terminate this logon





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* Is Secure - If selected, the value of the Password field is stored as SecureString. This field supports only Boolean (True, False) values. The default value is True.
* 
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the successful login before an error is thrown. The default value is 5000 milliseconds.



Client - The SAP
                        client number you want to log into. Text must be quoted.Language - Decide
                        which language you want to use to display screens, menus, and fields. Text
                        must be quoted. Multiple Logon Options - License information for Multiple Logon
                            opens if a user attempts to log onto the system several times. Choose
                            one option from the drop-down menu:Continue with this
                                    logon and end any other logonsContinue with this logon, without ending any other logons
                                Terminate this logonPassword - The
                        password you want to use to log in. Text must be quoted. Secure Password - The secure text to be written in the
                                Password field. This field supports only SecureString
                            variables.Username - The
                        username you want to use for logging in. Text must be quoted.



* SAP Session Window - Output a UI element to use in other activities as an input UI element.


### SAP Logon

UiPath.Core.Activities.SAP.Logon

# 

Use the activity to directly log on to an SAP system. Provide the exact SAP
                connection name from the SAP Logon or the SAP Logon Pad window used to log on to
                your SAP system.

# 

|

# 



* SAP Logon Path - The path to your SAP Logon or SAP Logon Pad program. The default path is obtained from the corresponding system registry entry.
* Connection Name - The exact SAP connection name from the SAP Logon or the SAP Logon Pad window used to log on to your SAP system.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* Connection Name - The exact SAP connection name from the SAP Logon or the SAP Logon Pad window used to log on to your SAP system.
* NumberOfRetries - The number of times that the activity tries to connect to SAP Scripting interface. The default value is 5.
* RetryInterval - The amount of time (in seconds) between each retry. The default amount of time is 0.5 seconds.
* SAP Logon Path - The path to your SAP Logon or SAP Logon Pad program. The default path is obtained from the corresponding system registry entry.



* 



* SAP Login Window - The newly opened SAP login window. This field only supports Window variables.


### SAP Session Attributes Change
        Trigger

UiPath.Core.Activities.SapSessionTrigger

# 

Monitors changes in specified SAP session attributes. At runtime, any changes in the
                specified SAP session attribute are logged. All available SAP session attributes are
                available here.

This activity can be used inside a Trigger Scope activity. In this case, the
                    SAP Session Attributes Change Trigger activity does not display the
                    Scheduling mode property because the property is displayed in the
                    Trigger Scope activity.

This activity does not
                support monitoring in remote environments or filtering the monitored SAP
                sessions.

# 

|

# 



* Attributes - The SAP session attributes that you want to monitor. Only sap* attributes are allowed in this field.
* Scheduling mode - It specifies how to execute the actions when a trigger is fired. Choose one of the available options from the drop-down menu:Sequential - actions are executed one after another. The monitoring continues until you stop the execution or a Break activity is met. Default value.Concurrent - actions execution can overlap. The monitoring continues until you stop the execution or a Break activity is met.OneTime - executes one action and exits monitoring.SequentialCollapse - Ignores all upcoming events, except the latest, until the current event finishes execution.SequentialDrop - Stops the previous event execution and starts the next event.





Display name - The display name of the activity.



* Attributes - The SAP session attributes that you want to monitor. Only sap* attributes are allowed in this field.



* Enabled - If set to False, the trigger starts but does not fire any events. It can be enabled later at runtime, with the Enable Local Trigger activity. This field supports only Boolean (True, False) values. The default value is True.
*


### Select Dates in Calendar

UiPath.Core.Activities.SAP.SelectDatesInCalendar

# 

Selects single dates or periods of time. This activity supports all SAP Fiori-based
                systems, such as SAP S/4HANA or SAP SuccessFactors.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Select - Select single dates or periods of time:Date - default value.Range.Week.
* Date - Allows you to select a specific day.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* Date - Allows you to select a specific day.
* End Date - The end date of the range selection.
* Select - Select single dates or periods of time:Date - default value.Range.Week.
* Start Date - The start date of the range selection.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.

* Week - The week number for the specified year.
* Year - The year of the target week.



*


### Select Menu Item

UiPath.Core.Activities.SAP.SelectMenuItem

# 

Select a Menu Item from the main SAP GUI window. After indicating the window, the
                list with all available Menu Items is displayed in the activity.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Menu Item - Specifies menu items from the main SAP GUI window. After expanding the list, all available menu items are populated in the activity.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity. The default amount of time is 300 milliseconds.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default amount of time is 200 milliseconds.
* DisplayName - The display name of the activity.



* Menu - Specifies menu items from the main SAP GUI window. After expanding the list, all available menu items are populated in the activity.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* AlterIfDisabled - If selected, the activity executes the action even if the specified UI element is disabled. This field only supports Boolean values (True, False). The default value is True.


### Table Cell Scope

UiPath.Core.Activities.CellScope

# 

A container that enables you to attach to an existing Table UI element and perform multiple
        actions within it.

# 

|

# 



* Indicate on screen - Indicate the UI element to use as target. After you indicate the target, select the Menu button to access the following options:Indicate on screen - Indicate the target again.Edit Selector - Opens the Selector Editor wizard where you can configure the selector.Open in UiExplorer - Opens UI Explorer with the UI element selected in the visual tree.Change Informative Screenshot - Change the screenshot of the target application or web page.Remove Informative Screenshot - Remove the screenshot of the target application or web page.Show Informative Screenshot (double click) - Display the full the screenshot of the target application or web page.Add to Object Repository - Add the current UI element to a library project, from where it can be reused throughout your automation process.
* Column Name / Filter - Specifies the column name from the table. After indicating the table cell, the list with all available column names is displayed in the activity.
* Row Number / Filter - Specifies how the row should be searched. For example: First Empty Row.
* Do sequence - Executes a set of child activities according to a single, defined order.





* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is set to True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.



* Column Name - Specifies the column name from the table. After indicating the table cell, the list with all available column names is displayed in the activity. Variable created in this field is of String type.
* Row Number - Specifies how the row should be searched. For example: First Empty Row.
* ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts.Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed.Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False.Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.



* 



* Table Row Index - The found row index in case First Empty Row is used. Otherwise, the value in this field is equal to the input in the Row Number property. This field supports only UInt32 variables.
* UiElement - The UiElement to be used in subsequent children activities.

