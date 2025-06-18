# Creating an Object Repository

The Object Repository works with the UiPath.UIAutomation.Activities or the MobileAutomation.Activities package versions 20.10 and higher in projects with Modern Design Experience enabled.

An object repository is a collection of elements grouped by applications, versions, and screens that can come from a:

* Local project, i.e. the local repository.
* Library, i.e. UI Library dependencies to the current project.

A Local Repository can be created either by:

* Using the Capture Elements recorder to capture UI descriptors.
* Manually, by creating applications, screens, and elements directly in the Object Repository panel.

A UI Library can be created by:

* Extracting the local repository from any project into a library project and publishing it as a NuGet package.
* Starting from a new library, building the repository there, and publishing it as a NuGet package. You can then use the UI Library NuGet packages and add them as dependencies to your processes. The Capture Elements recorder only records objects for reuse in projects, the recorder does not generate a workflow in the Designer panel.

## Creating a repository by capturing
        elements

In a library or process, click the Capture Elements button in the Object Repository to open
            the Capture Elements recorder.

![c0b8199-capture_elements2=GUID-436DAD1B-A6A4-476A-907A-505C01BBD29A=1=en=Default](/images/c0b8199-capture_elements2=GUID-436DAD1B-A6A4-476A-907A-505C01BBD29A=1=en=Default.png)

Click Start recording to begin capturing elements. The Capture
                Elements recorder uses the Unified Target
            technology available in the UIAutomation.Activities pack version 20.10 and higher
            to capture targets and anchors with a certain degree of accuracy for each selector,
            image, or anchor.

![0706230-object_recorder2=GUID-F1918AF5-E55E-4FD0-A3E5-9BE2C66C749B=1=en=Default](/images/0706230-object_recorder2=GUID-F1918AF5-E55E-4FD0-A3E5-9BE2C66C749B=1=en=Default.png)

UI Elements are captured together with a Selector, Fuzzy Selector, and Image, each with a
            degree of accuracy. You can choose to keep only one or all of these target elements. The
            same is applicable for anchor elements associated to each UI element in the
            application.

In the recorder, you can:

* Click Add Application or Add Screen to add a new application or screen.
* Pause recording at any time by
                clicking Pause . To resume recording, click Record again.
* Manage recorded elements: Update the properties of a
                        screen or element by selecting it in the left panel and editing it in the
                            Properties panel on the right. Rearrange and group elements
                        by dragging and dropping them in the left panel. Highlight elements you have
                        already captured to easily identify them by hovering over their name in the
                        Capture Elements window and using the  button. While recording is
                            paused:Remove an element by
                                right-clicking it and selecting Delete. Create a new element
                                as a child of a screen or element by right-clicking the existing
                                element and selecting Create Element. Optionally, click
                            Settings, and then select if you want to
                        configure each element or auto-apply changes (both settings are enabled by
                        default).
* Click Save objects to
                    library to save the changes, close the recorder,
                and return to your project.

# Capturing all elements

You
                can use the Capture all elements feature to capture all the available
                elements of an application by using Computer Vision technology and add them to the
                Object Repository. This method is useful for scenarios where the automation relies
                heavily on Object Repository usage, as you no longer have to manually add all the UI
                elements, thus saving time when creating the process.

1. Click the Capture all elements button in the Capture Elements wizard. You are prompted to indicate the window that contains the elements you want to add to the Object Repository. You can also select only a region of the target application by clicking and dragging a rectangle of the area you want to capture elements from.
2. Indicating the application detects all elements and highlights them green. You can also manually deselect the elements you don't want to add to the Object Repository. The Scan Wizard window lets you choose to Select all or Deselect all elements by using the respective buttons. If you select the Capture text checkbox, text elements are captured as well. Once your selection is done, hitting Capture closes the Scan Wizard and returns you to the Capture Elements window.If there are elements that weren't identified, you can help us improve detection by sending an image to UiPath for analysis. Click Report issues, select an area with unidentified elements, and then select Send.This feature requires that you have configured a Computer Vision server for use. There are multiple methods available of achieving this, as follows:Using the Cloud Computer Vision serverUsing an on premises Computer Vision serverAfter choosing your preferred server type, you must select it for use in the current project by editing the Server and ApikeyProject Settings.

# Descriptor
                properties

Applications, screens, and elements should be given descriptive
                names from within the Capture Elements recorder to make them easily
                recognizable in the Object Repository.

# Element types

A selector in
                an application can represent a button, a checkbox, a text field, toggle, list box,
                any type of element that can interact with the Robot. The captured element can be
                defined from within the Capture Elements recorder.

From the Type
                drop-down list, search and pick the type suitable for each element. In the Object
                    Repository the element receives an icon specific to its type making it
                easier to distinguish between objects.

![7ac727f-element_type=GUID-27529836-A0F1-481B-91F9-1A9976DCB852=1=en=Default](/images/7ac727f-element_type=GUID-27529836-A0F1-481B-91F9-1A9976DCB852=1=en=Default.png)

After capturing elements, click the Save objects to library button, and
                the objects are added to the Object Repository. To add additional elements,
                right-click a screen or element in the repository, and select Create Element.
                To add additional screens, right-click the application and select Create
                    Screen.

![37e4520-ob=GUID-A3DA50C9-509A-4BCD-8B97-2DA99152DB53=1=en=Default](/images/37e4520-ob=GUID-A3DA50C9-509A-4BCD-8B97-2DA99152DB53=1=en=Default.png)

# Using Capture Elements for
                existing applications and screens

If you exited the recorder before
                capturing all the desired elements, or you want to add or modify elements using
                Capture Elements for an application or screen that is already added to the Object
                Repository, you can launch the recorder at any time in the context of that
                application or screen:

1. Right-click any application or screen under Project UI Descriptors, and then select Capture Elements. This opens the Capture Elements window in the context of that application or screen:If you selected an application, all the screens and elements under that application are pre-populated in Capture Elements. If you selected a screen, all the elements under that screen are pre-populated in Capture Elements.
2. Update the screens and elements as needed. You can add new screens, start recording to add new elements, edit or delete existing screens or elements. If you make changes to existing screens and elements, the changes are applied to the descriptors in the Object Repository when you save.
3. Click Save objects to library to save the changes, close the recorder, and return to your project.


## Creating a repository From the Object Repository panel

You can create your own repository from within the Object Repository panel by defining the
            application, each screen, and element manually.

# Create a UI application

From the Object Repository panel, click the plus sign in the Descriptors tab or right-click Project Descriptors in the same tab and select Create Application. The Create Application window opens:

![f190047-create_app=GUID-1BBAE808-68AA-4694-BFFE-6768ECEADD1E=1=en=Default](/images/f190047-create_app=GUID-1BBAE808-68AA-4694-BFFE-6768ECEADD1E=1=en=Default.png)

Add a unique application name, version, and description. Click Create application. Your application is visible in the Descriptors tab, under Project UI Descriptors.

# Create a screen

In the Descriptors tab, select your application, click the plus sign or right-click your application and select Create Screen. The Add Screen window opens:

![417da6b-add_screen=GUID-EBE7B3F3-BC3E-47F3-9FB7-F4F64E99B299=1=en=Default](/images/417da6b-add_screen=GUID-EBE7B3F3-BC3E-47F3-9FB7-F4F64E99B299=1=en=Default.png)

Add a unique name for the screen, and a description. Indicate the screen that you would like to automate, and edit the captured element with Unified Target:

* Change the application path if needed.
* Add application arguments.When completed, click Create screen.

# Create a UI element

In the Descriptors tab, select your app screen, click the plus sign in or right-click the screen and select Create Element. The Add Element window opens:

![ccbbe32-add_element=GUID-622A3677-56CE-4969-8727-DD0D5927459A=1=en=Default](/images/ccbbe32-add_element=GUID-622A3677-56CE-4969-8727-DD0D5927459A=1=en=Default.png)

From the Descriptor Type section click Indicate element to use Unified Target to indicate and capture the element from the screen.

Add an intuitive name in the Element Name field, and select the type of the element from the drop-down list under Type. Click Save when done.

![50ec9c0-object_repo=GUID-7E53A17A-7949-4248-B734-87C7DDEFADD7=1=en=Default](/images/50ec9c0-object_repo=GUID-7E53A17A-7949-4248-B734-87C7DDEFADD7=1=en=Default.png)

To edit an element from the Object Repository, right-click it, and then select Edit Element, or double-click the element in the tree.To edit the descriptor of an element, use the Edit Descriptor option from the Edit Element window, or right-click the element in the tree, and then select Edit Descriptor.


## Using Object Repository with recorders

If the Object Repository is enforced in your instance of Studio (as per instructions in the About Object Repository page), when using the App/Web Recorder, the generated activities do not automatically reference descriptors from the repository.

At the level of activities, an informative tooltip informs you to add descriptors to the Object Repository or use existing ones.

![d35bdaa-recorder_tooltip=GUID-DD276653-94CF-4436-9D4B-55A3F328FFA5=1=en=Default](/images/d35bdaa-recorder_tooltip=GUID-DD276653-94CF-4436-9D4B-55A3F328FFA5=1=en=Default.png)

To do so, click on the icon inside the activity, and follow the steps for adding or reusing descriptors, or select Options > Add to Object Repository to add the element to the Object Repository.

![01c6365-recorder=GUID-7F5DD968-0999-470D-B970-BF9394E7F3DD=1=en=Default](/images/01c6365-recorder=GUID-7F5DD968-0999-470D-B970-BF9394E7F3DD=1=en=Default.png)


## Add elements from activities to a repository

After you've created an object repository you can add more UI elements directly from the Designer panel.

In the Designer panel add an activity that supports selectors, like Click or Type Into. Make sure that the added activity is within a Use Application/Browser activity.

Within the body of the activity, click the Object Repository icon to open the Selection Options window. Capture the element, select Confirm and the Add Element to Object Repository window opens. Add a name to the element and click Save. Notice that the element is added to the Object Repository panel.

![d1611a1-activity=GUID-E795AB47-0283-440D-B774-74B814404514=1=en=Default](/images/d1611a1-activity=GUID-E795AB47-0283-440D-B774-74B814404514=1=en=Default.png)


## Use objects in current project

From the Object Repository, drag and drop a screen or element on top of an
            activity in your workflow. The object's image, arguments, and other details are
            automatically added to the activity. When an activity uses a screen or element from the
            Object Repository, clicking the Object Repository icon in the activity highlights the
            descriptor it uses in the Object Repository tree.If your workflow is connected to a versioning system, such as Git,
                any updates made to an object in the Object Repository only appear as modified in
                the Object Repository panel from a versioning perspective. All workflows using the
                updated object automatically reference the modified content (e.g., selectors or any
                targeting method) during runtime, ensuring seamless operation with the updated
                object. However, certain properties inherited from the Object Repository, such as
                screenshots or other activity-related informational properties, are not updated in
                the workflow files until you manually open, and save each workflow.This manual
                    update is required for design-time changes to reflect in the versioning system,
                    but it does not impact runtime behavior or functionality, as the workflows still
                    use the updated object content. The limitation affects only versioning, as some
                    activity properties are embedded in the workflow file, and are not automatically
                    refreshed.

In the below example, we dragged the MyAppScreen object on top of the
                Use Application/Browser activity. The application path was automatically
            added to the activity.

![339665c-dragdrop=GUID-BAE05759-551E-473B-BEB1-6C5C2643B5EA=1=en=Default](/images/339665c-dragdrop=GUID-BAE05759-551E-473B-BEB1-6C5C2643B5EA=1=en=Default.png)

Alternatively, drag and drop an object on top of the plus sign inside the workflow. If
            you drag and drop a screen, a Use Application/Browser activity is automatically added.
            If you drag and drop an element, a list of compatible activities is displayed. Select
            the desired activity and the object is automatically added. Inside the process, the
            activity receives the following label: activity name + object name. After the object is
            added, the activity receives the descriptor properties from the Object Repository,
            visible in the activity's Properties panel.

* To indicate or edit the descriptor from the
                activity, select Options , and then Indicate target on screen or Edit Target . A dialog is displayed informing you that the action is
                performed on the descriptor in the Object Repository. Confirm your choice by
                selecting Indicate Descriptor and Edit Descriptor respectively.
* To indicate or edit the descriptor
                    for the current activity only, you must first remove the link between the
                    activity and the Object Repository by selecting Options, and then Unlink from Object
                        Repository. Please note that when the Object Repository is enforced,
                    unlinking removes the target from the activity.

Once objects are added to the workflow, the UI Activities tab in the Object
                Repository panel displays the activities and the objects they contain in a
            hierarchical order. If they are not visible, please save the project and check
            again.

The workflows are marked:

* With a gray dot, if at least 1
                activity from the workflow file references a UI Descriptor from the Objects
                panel.
* With a blue dot, if all activities
                from the workflow reference UI Descriptors from the Objects panel.

The UI activities are marked:

* With an empty dot, if the activity
                does not reference a UI Descriptor from the Objects panel.
* With a blue dot, if it references a
                UI Descriptor from the Objects panel.

# Using objects in coded automations with UIAutomation

When working with UI Automation coded automation APIs, there are two primary methods for
                accessing UI elements:Calling UI elements as
                        Strings.Using
                            IElementDescriptors from the Object Repository.

1. Calling UI elements as Strings

1. Create an application in your project's Object Repository named MyApplication.Create a screen for the application called MainScreen.Create an element named HomePageIcon.
2. Create a variable for the screen.
3. Use the Open coded automation API to open the screen using the code below: var screen = uiAutomation.Open("MainScreen");To find the ObjectRepository namespace, and the Descriptors, press CTRL + space on your keyboard.
4. Use the Click coded automation API on the UI element, using the code below:screen.Click("HomePageIcon");

2. Calling UI elements as IElementDescriptors

Use the format below when calling objects as
                    IElementDescriptors:
                    ObjectRepository.Descriptors.<ApplicationName>.<ScreenName>.<UiElementName>,
                where ObjectRepository is a namespace that integrates the
                    Descriptors class. The Descriptors class
                further includes all the UI elements that you captured in the Object
                Repository.

It is recommended not to use
                    Object as the name of your application in the Object
                Repository.

1. Create an application in your project's Object Repository named MyApplication.Create a screen for the application called MainScreen.Create an element named HomePageIcon.
2. To enhance readability, you can define your application as a variable applying a using statement at the beginning of your workflow. Here is an example: using app = <ProjectName>.ObjectRepository.Descriptors.<AppName>.With this approach, you can easily call descriptors in the following format: app.<ScreenName>.<UiElementName>
3. Create a variable for the screen.
4. Use the Open coded automation API to open the screen using the code below: var screen = uiAutomation.Open(ObjectRepository.Descriptors.MyApplication.MainScreen);To find the ObjectRepository namespace, and the Descriptors, press CTRL + space on your keyboard.
5. Use the Click coded automation API on the UI element, using the code below:screen.Click(ObjectRepository.Descriptors.MyApplication.MainScreen.HomePageIcon);
6. If you want to use object repository elements from an imported library project, perform the following steps:In the project where you exported the library from, create a new coded test case or coded workflow file.Update the UiPath.CodedWorkflows package to the latest version.In the file where you want to use the imported object repository elements, reference the project from where you exported the elements in the namespaces section, using the following format: <ProjectName> = <LibraryName>.ObjectRepository.Descriptors.When using coded automation APIs, such as Click or Open, call the UI elements using the following format:screen.Click(<LibraryName>.ObjectRepository.Descriptors.MyApplication.MainScreen.HomePageIcon);

# Using object in coded automations with Mobile Automation

When working with Mobile Automation coded automation APIs, there two primary methods for
                accessing UI elements through Object Repository:

1. Using IScreenDescriptors and IElementDescriptors from the ObjectRepository namespace and Descriptors class.
2. Using paths relative to the screen in the Object Repository. If you have more than one application or more than one screen, you must specify them in the method call.

1. Using IElementDescriptors from the Descriptors
                class

Use the format below when calling objects as
                    IElementDescriptors:
                    ObjectRepository.Descriptors.<ApplicationName>.<ScreenName>.<UiElementName>,
                where ObjectRepository is a namespace that integrates the
                    Descriptors class. The Descriptors class
                further includes all the UI elements that you captured in the Object
                Repository.

It is recommended not to use
                    Object as the name of your application in the Object
                Repository.

1. Create an application in your project's Object Repository named MyApplication.Create a screen for the application called HomeScreen.Create an element named ParentElement.Nested under the ParentElement, create the element named ChildElement.
2. To enhance readability, you can define your application as a variable applying a using statement at the beginning of your workflow. Here is an example: using app = <ProjectName>.ObjectRepository.Descriptors.<AppName>.With this approach, you can easily call descriptors in the following format: app.<ScreenName>.<UiElementName>
3. Create a connection between the mobile device and the application recorded in the Object Repository.
4. Call the Tap coded automation API on the connection, to click the ChildElement element, using the code below: connection.Tap(Descriptors.MyApplication.HomeScreen.ParentElement.ChildElement);To find the ObjectRepository namespace, and the Descriptors class, press CTRL + space on your keyboard.
5. Use the GetAttribute coded automation API on the ParentElement, using the code below:var isChecked = connection.GetAttribute(Descriptors.MyApplication.HomeScreen.ParentElement, Attributes.Android.CHECKED);
6. If you want to use object repository elements from an imported library project, perform the following steps:In the project where you exported the library from, create a new coded test case or coded workflow file.Update the UiPath.CodedWorkflows package to the latest version.In the file where you want to use the imported object repository elements, reference the project from where you exported the elements in the namespaces section, using the following format: <ProjectName> = <LibraryName>.ObjectRepository.Descriptors.When using coded automation APIs, call the UI elements using the following format:connection.Tap(<LibraryName>.ObjectRepository.Descriptors.MyApplication.HomeScreen.ParentElement.ChildElement);

2. Using paths relative to the screen in Object
                Repository

Using paths relative to the screen in Object Repository allows you
                yo use Strings to access Object repository elements. Paths are
                string representations of the element hierarchy on the mobile screen. You can also
                access any descriptors, even if their names are duplicate in the repository, because
                you can specify the target application and screen for every element.

These
                targets are created using the MobileTarget.FromObjectRepository
                constructor, that takes in the path of the UI element, relative to the screen and
                app used. The return value of this constructor is an
                    ObjectRepositoryTarget.

There are two ways through which
                you specify the path of the UI element in the Object Repository:

1. Using Strings arranged as parent-child relationships in a format such as "parentOfparent///parent///child".For example, see the following code, that taps a mobile target element called ChildElement which is a child of the ParentElement, located on the current screen of the current app.connection.Tap(MobileTarget.FromObjectRepository("ParentElement///ChilElement"));Take the same example, but this time the code taps the same CheckedOnlyCheckBox element, but now on a different screen (anotherScreen) in a different app (anotherApp).connection.Tap(MobileTarget.FromObjectRepository("ParentElement///ChildElement", "anotherApp", "anotherScreen");
2. Using an array of Strings arranged as parent-child relationships in a format such as ["parentOfParent", "parent", "child"].For example, see the following code, that taps the same UI element, but it inputs the path into separate strings arranged inside an array.connection.Tap(MobileTarget.FromObjectRepository(new string[]{"ParentElement", "ChildElement"}));The same example can be used when you want to specify a different screen or app for the method call.connection.Tap(MobileTarget.FromObjectRepository(new string[]{"ParentElement", "ChildElement"}, "anotherApp", "anotherScreen"));


## Edit descriptors

# Element descriptors

Descriptors can be edited from the Object Repository in two scenarios that we'll refer to as "online" and "offline" editing:

* Online editing - the application or browser can be accessed on the current machine. The app/browser is displayed on the screen, allowing elements to be selected again or modified.
* Offline editing - the application or browser cannot be accessed on the current machine, either the app is not installed, or the machine is offline. The element's selectors are made visible allowing changes to be made.Both Selectors and Fuzzy Selectors in your Descriptors can be edited directly in the UIExplorer by using the button.

# Online editing

In the Descriptors tab, right-click an element and select Edit Descriptor. The selection screen opens allowing you to capture a different element, edit selectors, and anchors.

![1ee2192-editdescriptor=GUID-6EC46F00-90E2-4BAE-A59B-DBED1A66D423=1=en=Default](/images/1ee2192-editdescriptor=GUID-6EC46F00-90E2-4BAE-A59B-DBED1A66D423=1=en=Default.gif)

The same can be achieved by clicking on the Edit Descriptor button from within the Edit Element window.

![4de4698-editdescriptor1=GUID-B18D9C09-BD9A-4E5D-867A-5D8CE4544822=1=en=Default](/images/4de4698-editdescriptor1=GUID-B18D9C09-BD9A-4E5D-867A-5D8CE4544822=1=en=Default.gif)

At runtime, the UI Descriptors are resolved from the Object Repository panel, if the activities reference such UI Descriptors.

# Offline editing

The same steps from online editing apply here as well. In the Descriptors tab, right-click an element and select Edit Descriptor.

Offline editing offers the option to make changes directly to the element descriptor settings. However, you cannot indicate new elements. To do so make sure the application/browser is opened in the correct state.

![9098840-offline=GUID-0DC6EE76-6799-4624-97D4-F52EDCCA910E=1=en=Default](/images/9098840-offline=GUID-0DC6EE76-6799-4624-97D4-F52EDCCA910E=1=en=Default.png)

# Screen descriptors

To edit a screen descriptor, in the Descriptors tab, right-click the screen and select Edit Descriptor. The Edit Screen window is displayed.

![d166e98-screen_descriptor=GUID-A26864B4-E3F9-4EA2-94FF-7C0BD9CEFD32=1=en=Default](/images/d166e98-screen_descriptor=GUID-A26864B4-E3F9-4EA2-94FF-7C0BD9CEFD32=1=en=Default.png)

You can edit the application path or browser URL, application arguments, and window selector, and select whether only applications with a title that is an exact match can be used in the automation. The application path, browser URL, and application arguments fields support expressions, variables, and arguments.


## Resolve UI descriptors

Whenever you indicate a screen or UI Element which is already referenced in the Object Repository either under Project UI Descriptors or UI Libraries, the match is automatically detected and the following window is prompted:

![8200b51-found_match=GUID-AACA45C2-F3A8-405A-9502-65C6CD722F4B=1=en=Default](/images/8200b51-found_match=GUID-AACA45C2-F3A8-405A-9502-65C6CD722F4B=1=en=Default.png)

The following options are available:

* Reuse - adds the matching descriptor from the Object Repository to the current activity.
* Create New - opens the options window for creating a new screen/element or updating an existing one in the Object Repository .
* Cancel - keeps the currently indicated selector inside the activity, without making any changes to objects in the repository.

Indicating a screen searches for a corresponding UI descriptor, while indicating a target element searches for a matching UI descriptor. When using the Recorder, corresponding matches for screen and elements are searched within the local UI library from Project UI Descriptors or the imported dependencies from UI Libraries.

At runtime, the UI Descriptors are resolved from the Objects Browser panel, if the activities reference such UI Descriptors.


## Variables in descriptors

To increase their degree of reusability, you can use variables in descriptors.

You can edit a target, add variables to it, and then add it to the Object Repository, or you can add variables to selectors in existing screens or elements from the Object Repository. Whenever you add a descriptor that contains a variable to a process, make sure to create the variable in the process, otherwise the expression cannot be read.

To add a variable to a descriptor selector, right-click the element inside the Object Repository, then select Edit Descriptor and add the variable from the Selection Options window.

Variables added in selectors must be enclosed in double curly brackets. For example, as seen in the image below, <name='{{VarNumber}}'/> adds the value of the variable VarNumber to the name attribute in the selector.

![d7ba618-offline_variables1=GUID-85EB2C77-B55F-4EB3-AD90-727035388825=1=en=Default](/images/d7ba618-offline_variables1=GUID-85EB2C77-B55F-4EB3-AD90-727035388825=1=en=Default.png)

In the below example, we used a variable inside the Browser URL field of the Use Application/Browser activity, and then added the target to the Object Repository as a screen object. In this way, we make sure the descriptor accounts for cases in which the URL changes.

![dc8b325-url_variable=GUID-9F295F37-2163-43DE-8A52-C9B7B559CCBA=1=en=Default](/images/dc8b325-url_variable=GUID-9F295F37-2163-43DE-8A52-C9B7B559CCBA=1=en=Default.png)


## Highlight elements

In the Object Repository panel right-click a screen or element and select Highlight to highlight elements inside the application, provided that the app is launched on the machine or the web page is opened in the browser.

![cda99b4-highlight=GUID-6FD811FC-3ABD-4B00-8ACF-50D5F4402283=1=en=Default](/images/cda99b4-highlight=GUID-6FD811FC-3ABD-4B00-8ACF-50D5F4402283=1=en=Default.png)

