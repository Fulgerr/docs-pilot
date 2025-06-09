# CV Screen Scope

UiPath.CV.Activities.CVScope

# 

Initializes the UiPath Computer Vision neural network, performing an analysis of the
                indicated window and provides a scope for all subsequent Computer Vision activities.
                The activity enables you to select which OCR engine you want to use for scraping the
                text in the target application. The default OCR engine used for this activity is
                    UiPath Screen OCR. The engine can be changed by manually replacing the
                default engine with one of your choice.

If you are using an
                on-premises Linux Computer Vision server deployment, you can also use the UiPath
                    Screen OCR engine with this activity.

![f62065a-cv_changing_ocr_engine=GUID-219E4EAC-FE18-412A-8273-D408829003D1=1=en=Default](/images/f62065a-cv_changing_ocr_engine=GUID-219E4EAC-FE18-412A-8273-D408829003D1=1=en=Default.gif)

# 

|

# 

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations. The default value for this field is 300 milliseconds.
* DisplayName - The display name of the activity.

Input

* CVMethod - A drop-down list that specifies which detection method you want to use with this activity. By default, both the ElementDetection and OCR options are selected. The following options are available:None - Uses only Image Automation. Element Detection - Uses Computer Vision. OCR - Uses OCR.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually an XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. By default, this field is set to Interactive. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive - Waits for the UI elements you are working with in the target app to exist before executing the action. Complete - Waits for all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to False. Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete.SAP applications - First the presence of the <wnd> tag is verified, after which an SAP-specific API is used to detect if the session is busy or not.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Scroll

* Scroll Offset - Scroll Offset used in scrolling to find the target of each of the Computer Vision activities in this scope.

Server (synced)

* ApiKey - The API key used for authenticating to the Computer Vision server. This field supports only strings or String variables. This is a global property, shared between all CV Screen Scope activities in the workflow.Please note that the API key is only required when connecting to the UiPath Automation Cloud server. You can find more information on acquiring a key here.Editing the ApiKey property for one scope activity changes the value for all the other scopes in the current workflow, so you don't have to do it manually.
* URL - The URL of the server that runs the Computer Vision service. By default, this property is set to https://cv.uipath.com/. This is a global property, shared between all CV Screen Scope activities in the workflow.
* UseLocalServer - If checked the local server will be used for the analysis. To use the local server, the UiPath.ComputerVision.LocalServer package needs to be installed.When using an on-prem server deployment of the neural network model, to connect to it with the Computer Vision activities, you must change the value of the URL property of the CV Screen Scope activity to the URL of your server.More details on connecting to the server are available here.

# In the body of the activity

The application you want to automate can be indicated to the CV
                Screen Scope activity by using the Indicate On Screen button in the body of
                the activity. After doing this, a capture of the screen you have indicated is
                displayed in the body of the activity.

![624c232-cv_screen_scope=GUID-934E4B04-6958-43DA-8712-19643F8090B6=1=en=Default](/images/624c232-cv_screen_scope=GUID-934E4B04-6958-43DA-8712-19643F8090B6=1=en=Default.png)

If you indicate multiple screens when automating an application, you can cycle
                between the screens by using the directional buttons (<, >) to
                easily check what screens the activity is using.

Screens can also be renamed
                by selecting them from the Screen Name drop-down and clicking the  button.
