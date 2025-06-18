# UI Automation

Automation processes that use UIAutomation activities cannot run under a locked screen.

Sometimes the usual manual routine is not the optimal way for automation. Carefully explore the application’s behavior and UiPath integration/features before committing to a certain approach.

Using the Parallel activity with UI Automation activities is not supported and will often result in unforeseen consequences.

## Desktop Automation

UI automation is best utilized when Robots and applications run on the same machine because UiPath can integrate directly with the technology behind the application to identify elements, trigger events and get data behind the scenes.


### Input Methods

There are three methods UiPath uses for triggering a Click or a Type Into activity on an application. These are displayed as properties in all activities that deal with UI automation.

# The SimulateType and SimulateClick Properties

If the SimulateType or SimulateClick properties are selected, Studio hooks into the application and triggers the event handler of an indicated UI element (button, text box). The outcome is always dependent of the target technology, such as a web browser or business application.

It is highly recommended to check the state of the target UI element prior to execution, when you enable the SimulateType or SimulateClick for the following activities:

* Click
* Type Into
* Type Secure Text

The same recommendation should be considered for the applications below, because they use the SimulateType or SimulateClick properties by default and can not be changed:

* Check
* Select Item
* Select Multiple Items
* Set Text

# The AlterIfDisabled Property

The property instructs the target activity whether or not to interact with disabled elements. Please note that this property is only taken into consideration if the SimulateType or SimulateClick are enabled. You can find the AlterIfDisabled property for the following activities:

* Click
* Type Into
* Type Secure Text
* Check
* Select Item
* Select Multiple Items
* Set Text

# The SendWindowMessages Property

If the SendWindowMessages property is selected, Studio posts the event details to the application message loop and the application’s window procedure dispatches it to the target UI element internally.

![7d62670-property_best_practices=GUID-BFA5BE21-4038-4A0B-9CE7-E33CFED073F5=1=en=Default](/images/7d62670-property_best_practices=GUID-BFA5BE21-4038-4A0B-9CE7-E33CFED073F5=1=en=Default.png)

Studio signals system drivers with hardware events if none of the above option are selected and lets the operating system dispatch the details towards the target element.

![6e62e69-hardware_events_best_practices=GUID-57351ABF-0B1E-4770-BC5B-20D90326A661=1=en=Default](/images/6e62e69-hardware_events_best_practices=GUID-57351ABF-0B1E-4770-BC5B-20D90326A661=1=en=Default.png)

These methods should be tried in the order presented, as the SimulateClick and SendWindowMessages properties are faster and also work in the background, but they depend mostly on the technology behind the application.

Hardware events work 100% as Studio performs actions just like a human operator, such as moving the mouse pointer and clicking at a particular location. However, in this case, the application being automated needs to be visible on the screen. This can be seen as a drawback since there is the risk that the user can interfere with the automation.


### Selectors

Sometimes the automatically generated selectors propose volatile attribute values to identify elements and manual intervention is required to calibrate the selectors. A reliable selector should successfully identify the same element every time in all conditions, in development, test and production environments and no matter the usernames logged on to the applications.

Here are some tips on how to improve a selector in the Selector Editor or UI Explorer:

* Replace attributes with volatile values with attributes that look steady and meaningful.
* Replace variable parts of an attribute value with wildcards (*).
* If an attribute’s value is all wildcard (e.g. name=’*’ ) then the attribute should be removed.
* If editing attributes doesn’t help, try adding more intermediary containers.
* Avoid using the idx attribute unless its value is a very small number like 1 or 2.

In the selector above, we notice the page title has a reference to the time when the selector was recorded and also that some attributes have randomly looking IDs. Tweaking the attributes, we can come up with a better selector than UiPath recorder proposed.

![99e06db-selector_bla_bla_best_practices=GUID-3DF51093-7B06-4769-BE46-A64B4B68AC5D=1=en=Default](/images/99e06db-selector_bla_bla_best_practices=GUID-3DF51093-7B06-4769-BE46-A64B4B68AC5D=1=en=Default.png)


### Containers

Similar to file paths, selectors can be full or partial (relative). Full selectors start with a window or an HTML identifier and have all the necessary information to find an element on the whole desktop, while partial selectors work only inside an attach/container that specifies the top-level window where the elements belong:

* OpenBrowser
* OpenApplication
* AttachBrowser
* AttachWindow

Here is a bit more info on Full versus Partial Selectors.

There are several advantages to using containers with partial selectors instead of full selectors:

* Visually groups activities that work on the same application.
* Is slightly faster, not seeking for the top window every time.
* Makes it easier to manage top-level selectors in case manual updates are necessary.
* Essential when working on two instances of the same application.


## Image Automation

Image recognition is the last approach to automating applications if nothing else works to identify UI elements on the screen (like selectors or keyboard shortcuts). Because image matching requires elements to be fully visible on the screen and that all visible details are the same at runtime as during development, when resorting to image automation extra care should be taken to ensure the reliability of the process. Selecting more/less of an image than needed might lead to an image not found or a false-positive match.


### Resolution Considerations

Image matching is sensitive to environment variations like desktop theme or screen resolution. When the application runs in Citrix, the resolution should be kept greater or equal than when recording the workflows. Otherwise, small image distortions can be compensated by slightly lowering the captured image Accuracy factor. Check how the application layout adjusts itself to different resolutions to ensure visual elements proximity, especially in the case of coordinate based techniques like relative click and relative scrape.

If the automation supports different resolutions, parallel recordings can be placed inside a PickBranch activity and the Robot uses either match.


### OCR Engines

If OCR returns good results for the application, text automation is a good alternative to minimize the environment influence. The Google Tesseract engine works better for smaller areas, while Microsoft MODI for larger ones.

Using the MODI engine in loop automations can sometimes create memory leaks. This is why it is recommended that scraping done with MODI be invoked via a separate workflow, using the Isolated property.


## UI Synchronization

Unexpected behavior is likely to occur when the application is not in the state the workflow assumes it to be. The first thing to watch for is the time the application takes to respond to the Robot interactions.

The DelayMS property enables you to wait a while for the application to respond. However, there are situations when an application’s state must be validated before proceeding with certain steps in a process. Measures may include using extra activities that wait for the desired application state before other interactions. Activities that might help include:

* Element Exists , Image Exists , Text Exists , OCR Text Exists .
* Find Element , Find Image , Find Text Position .
* Wait Element Vanish , Wait Image Vanish .
* Wait Screen Text (in terminals).


## Background Automation

If an automation is intended to share the desktop with a human user, all UI interaction must be implemented in the background. This means that the automation has to work with UI element objects directly, thus allowing the application window to be hidden or minimized during the process.

* Use the SimulateType , SimulateClick , and SendWindowMessagesoptions for navigation and data entry via the Click and Type Into activities.
* Use the Set Text , Check , and Select Item activities for background data entry.
* The Get Text , Get Full Text , and WebScraping activities are the outputs that run in the background.
* Use the Element Exists activity to verify application state.


## How-tos




### How to Execute Chrome/Edge/Firefox Automation in PiP Without Interrupting Your Work in the Main Session

When executing web automation with Chrome/Edge/Firefox browsers in the child session of a PictureInPicture (PiP) mode and you want to continue using the browser in the main session, please know that both Chrome and Edge cannot be launched simultaneously, in different sessions, while using the same user data directory.

The default folder is created by the browser, at its first launch.  On Windows, the default folder location is %LOCALAPPDATA%\Google\Chrome\User Data. Your browser profiles data is kept here and every new browser profile you create has its own space: navigation history, bookmarks, and cookies.

If, as a user, for any particular reason, you choose to start the browser with your own custom data folder, you can do that by launching the browser with the following command: chrome.exe --user-data-dir=c:\foo. All your profiles data will be kept under that custom folder.

To bypass this limitation, the Modern UseApplicationBrowser and the Classic OpenBrowser activities provide an out-of-the-box solution: the UserDataFolderMode and UserDataFolderPath properties which instruct the activity on launching the browser with either its default folder, the one automatically generated by the activity, or a custom one, specified by the latter property.

Let’s take a closer look at how these properties work.

# Case 1

You don’t want to know all the details about the user data folder, you simply want the automation to launch the browser in PiP and do its job, allowing you to do your own job in the main session. Then, just leave the UserDataFolderMode empty. Its default value will be inherited as Automatic from the Project Settings/ApplicationBrowser section: the robot will automatically create for you a temporary data folder/profile to run the automation in PiP.

# Case 2

You want to execute the automation in PiP with the default user data folder since it contains your default profile and all your business apps login history and cookies. Set UserDataFolderMode to DefaultFolder. Please keep in mind that simply launching the browser in your working session is not be possible until the PiP automation finishes and/or the PiP browser stops.

# Case 3

You know what you’re doing and you understand both the browser limitation and the UiPath provided capabilities. Set UserDataFolderMode to CustomFolder and set UserDataFolderPath to a path of your choice.

For all of the above cases, we recommend installing the extension per group policy. This way, the extension is available and activated for any browser profiles, regardless if they are created in default or custom user data folders.

