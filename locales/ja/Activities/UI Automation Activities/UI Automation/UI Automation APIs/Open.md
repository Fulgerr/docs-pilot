# Open

Opens a desktop application or web browser page to use in UI automation.

This API is used by calling the UiAutomation service, based on the following format:
                uiAutomation.API(). For example,
                uiAutomation.Open().

# 



# Overloads

OverloadDescriptionOpen(String, TargetAppOptions, String,
                                String)Opens a specific desktop application or web page to use in UI
                                automation, identified by the screen name from the Object
                                Repository.Open(TargetAppModel, TargetAppOptions)Opens a specific desktop application or web page to use in UI
                                automation, identified by the TargetAppModel
                                object.Open(String, String, String, NAppOpenMode, NWindowResize,
                                    NInteractionMode)Opens a specific desktop application or web page to use in UI
                                automation, identified by the screen name from the Object
                                Repository, along with other customizations of the app or web
                                page.

# Open(String, TargetAppOptions, String, String)

Opens a specific desktop application or web page to use in UI automation, identified
                by the screen name from the Object Repository.

Open(
    string screenName,  
    TargetAppOptions targetAppOptions, 
    [string appName],
    [string appVersion])

screeNameStringThe name of the screen you want to focus on, as a String recorded inside the
                        Object Repository.targetAppOptionsAdditional options and settings for attaching to the application or web
                            page:Timeout Double - Specify a number
                                of seconds for which to wait for the activity to be executed before
                                throwing an error. The default value is 30 seconds. When indicating
                                a window in a Remote Desktop environment, the Timeout default
                                setting is set to 60 seconds.InteractionMode
                                    NInteractionMode:HardwareEvents - Uses the hardware
                                        driver to perform the action. This is the slowest API, it
                                        cannot work in the background, but it is compatible with all
                                        desktop apps.Simulate - Simulates the action using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events. Sends all
                                        text in a single action. Works even if the target
                                        application is not in focus. Please test if your target
                                        application UI element supports this.DebuggerApi - Performs actions using
                                        debugger APIs. Works only for Chromium elements. Sends all
                                        text in one go. Works even if target app is not in focus.
                                        For more details, check out this page.WindowMessages - Sends the mouse and
                                        keyboard input through Win32 messages. Recommended for
                                        desktop apps. Usually more reliable than Hardware Events.
                                        Sends all text in a single action. Works even if target app
                                        is not in focus. Please test if your target application UI
                                        element supports this.Background - Runs actions in the
                                        background. Tries to use either Simulate or Chromium API
                                        where possible, while complex APIs (image, native text)
                                        run as usual, in the foreground. It is highly recommended to
                                        use this API with the Verify Execution
                                        feature.OpenMode NAppOpenMode - choose when
                                to open the app:Never (never open the
                                        application)IfNotOpen (open only if the
                                        application is closed, this is the default selection, only
                                        works if FilePath or URL
                                        are provided)Always (open another instance of the
                                        application even if one is already open, only works if
                                            FilePath or URL are
                                        provided)WindowResize NWindowResize - choose
                                the size of the window:NoneMaximizeRestoreMinimizeUserDataFolderMode
                                    BrowserUserDataFolderMode - The
                                    UserDataFolderMode you want to set. It is used
                                to start the browser with a specific user data folder.Automatic - Picture In Picture mode
                                        uses a different folder than the default mode, automatically
                                        generated if UserDataFolderPath is not
                                        set.DefaultFolder - Uses the default
                                        browser folder, no matter if it runs in the main or PIP
                                        session.CustomFolder - Uses the folder
                                        specified in UserDataFolderPath or an auto
                                        generated path if UserDataFolderPath is not
                                        set.UserDataFolderPath String - The
                                user data folder that the browser uses. Defaults to
                                    %LocalAppData%\UiPath\PIP Browser
                                    Profiles\BrowserType if not set.IsIncognito Boolean - input
                                    True if you want to open the browser in
                                incognito mode. By default it's set to False.WebDriverMode NWebDriverMode -
                                Indicates how the WebDriver is used when opening a new browser
                                session. The following options are available:Disabled - Disables the use of
                                        WebDriver.WithGUI - The GUI of the browser is
                                        displayed.Headless - The browser is launched
                                        silently, with no GUI.appNameStringThe name of the application to attach to. This parameter is applicable for
                        desktop applications.appVersionStringThe version of the application to attach to. This parameter is applicable
                        for desktop applications.

# Open(TargetAppModel, TargetAppOptions)

Opens a specific desktop application or web page to use in UI automation, identified
                by the TargetAppModel object.

Open(
    TargetAppModel targetApp,
    [TargetAppOptions targetAppOptions])

targetAppTargetAppModelThe target application or web page to attach to. It is an object of type
                            TargetAppModel that provides information about the
                            application:Selector - An XML fragment that stores the
                                attributes of a user interface element.FilePath - If the application is not a web
                                browser, specifies the full path of the executable file to
                                open.Arguments - If the application is not a web
                                browser, you can specify parameters to pass to the target
                                application at startup.Url
                                - If the application is a web browser, specifies the URL of the web
                                page to open.Title - The title of the application or
                                browser.targetAppOptionsAdditional options and settings for attaching to the application or web
                            page:Timeout Double - Specify a number of seconds
                                for which to wait for the activity to be executed before throwing an
                                error. The default value is 30 seconds. When indicating a window in
                                a Remote Desktop environment, the Timeout default setting is set to
                                60 seconds.InteractionMode NInteractionMode:HardwareEvents - Uses the hardware driver
                                        to perform the action. This is the slowest API, it cannot
                                        work in the background, but it is compatible with all
                                        desktop apps.Simulate - Simulates the action using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events. Sends all
                                        text in a single action. Works even if the target
                                        application is not in focus. Please test if your target
                                        application UI element supports this.DebuggerApi - Performs actions using
                                        debugger APIs. Works only for Chromium elements. Sends all
                                        text in one go. Works even if target app is not in focus.
                                        For more details, check out this page.WindowMessages - Sends the mouse and
                                        keyboard input through Win32 messages. Recommended for
                                        desktop apps. Usually more reliable than Hardware Events.
                                        Sends all text in a single action. Works even if target app
                                        is not in focus. Please test if your target application UI
                                        element supports this.Background - Runs actions in the
                                        background. Tries to use either Simulate or Chromium API
                                        where possible, while complex APIs (image, native text)
                                        run as usual, in the foreground. It is highly recommended to
                                        use this API with the Verify Execution
                                        feature.OpenMode NAppOpenMode - choose when to open
                                the app:Never (never open the application)IfNotOpen (open only if the application is
                                        closed, this is the default selection, only works if
                                            FilePath or URL are
                                        provided)Always (open another instance of the
                                        application even if one is already open, only works if
                                            FilePath or URL are
                                        provided)WindowResize NWindowResize - choose the size
                                of the window:NoneMaximizeRestoreMinimizeUserDataFolderMode BrowserUserDataFolderMode
                                - The UserDataFolderMode you want to set. It is
                                used to start the browser with a specific user data folder.Automatic - Picture In Picture mode uses a
                                        different folder than the default mode, automatically
                                        generated if UserDataFolderPath is not
                                        set.DefaultFolder - Uses the default browser
                                        folder, no matter if it runs in the main or PIP
                                        session.CustomFolder - Uses the folder specified in
                                            UserDataFolderPath or an auto generated
                                        path if UserDataFolderPath is not set.UserDataFolderPath String - The user data
                                folder that the browser uses. Defaults to
                                    %LocalAppData%\UiPath\PIP Browser
                                    Profiles\BrowserType if not set.IsIncognito Boolean - input
                                    True if you want to open the browser in
                                incognito mode. By default it's set to False.WebDriverMode NWebDriverMode - Indicates how
                                the WebDriver is used when opening a new browser session. The
                                following options are available:Disabled - Disables the use of
                                        WebDriver.WithGUI - The GUI of the browser is
                                        displayed.Headless - The browser is launched
                                        silently, with no GUI.

# Open(String, String, String, NAppOpenMode, NWindowResize,
                    NInteractionMode)

Opens a specific desktop application or web page to use in UI automation, identified
                by the screen name from the Object Repository, along with other customizations of
                the app or web page.

Open(
    string screenName,
    [string appName],
    [string appVersion],
    [NAppOpenMode openMode],
    [NWindowResize windowResize],
    [NInteractionMode interactionMode])

screeNameStringThe name of the screen you want to focus on, as a String recorded inside the
                        Object Repository.appNameStringThe name of the application to attach to. This parameter is applicable for
                        desktop applications.appVersionStringThe version of the application to attach to. This parameter is applicable
                        for desktop applications.openModeNAppOpenModeSelect when to open the target application for the execution of the
                            automation:Never (never open the application)IfNotOpen (open only if the application is closed,
                                this is the default selection, only works if the
                                    Url parameter is configured)Always - (open another instance of the application
                                even if one is already open, only works if the Url
                                parameter is configured).NWindowResize Choose the size of the window:NoneMaximizeRestoreMinimizeNInteractionModeChoose which API the Robot should use to interact with the target
                            application:HardwareEvents - Uses the hardware driver to
                                perform the action. This is the slowest API, it cannot work in
                                the background, but it is compatible with all desktop apps.Simulate - Simulates the action using accessibility
                                APIs. Recommended in browser automation, Java apps, or SAP. More
                                reliable than Hardware Events. Sends all text in a single action.
                                Works even if the target application is not in focus. Please test if
                                your target application UI element supports this.DebuggerApi - Performs actions using debugger APIs.
                                Works only for Chromium elements. Sends all text in one go. Works
                                even if target app is not in focus. For more details, check out this
                                    page.WindowMessages - Sends the mouse and keyboard input
                                through Win32 messages. Recommended for desktop apps. Usually more
                                reliable than Hardware Events. Sends all text in a single action.
                                Works even if target app is not in focus. Please test if your target
                                application UI element supports this.Background - Runs actions in the background. Tries
                                to use either Simulate or Chromium API where possible, while complex
                                APIs (image, native text) run as usual, in the foreground. It is
                                highly recommended to use this API with the Verify Execution
                                feature.

# Running WebDriverMode as Headless

To operate WebDriverMode in a headless configuration, these steps can serve as a
                guide.

Begin by defining a variable for your screen. Use the function
                    uiAutomation.Open to open a new application in the browser of
                your choice - in this instance, Edge. After that, use the Options
                class in the overload to specify certain browser options. Among these options, set
                    webDriverMode to NWebDriverMode.Headless.

The corresponding code looks like this:

var screen = uiAutomation.Open(Descriptors.NewApplication.Edge, Options.AppOpen().WithBrowserOptions(webDriverMode: NWebDriverMode.Headless));

This code functions to set your WebDriver to Headless mode, enabling the browser
                automation without the browser being visibly open.
