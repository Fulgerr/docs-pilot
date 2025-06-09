# UI Automation Project Settings

These project settings apply for Modern activities in Cross-platform projects.

Use Project Settings to configure changes at the project level. These global
            settings impact all activities in the package that have the properties listed below. For
            more information, see Configuring Activity Project Settings.

The properties
            configured in Project Settings only take effect in the activities of the workflow
            if their properties have not been edited. Editing properties manually no longer applies
            the project settings to them.

To configure the UI Automation Modern project settings, follow these steps:

1. In the Project panel, go to Project Settings .
2. Navigate to Activities
                    Settings > UI Automation .
3. Modify the settings according to what
                you want to change.
4. Click OK to save changes.

You can reset all settings to their default values or copy all values between the debug
            and production fields using the Bulk Actions drop-down menu at the top of the
            window.

# Generic

The settings below apply to UI Automation Modern activities in Cross-platform projects that have
                either one of the following properties.

Property nameDescriptionDelay after (seconds)Delay time between the current activity and the next
                                activity.Delay before (seconds)Delay time between the previous activity and the current
                                activity.Timeout (seconds)How long to wait for the current activity to be executed before
                                throwing an error.Wait for page loadBefore performing the action, wait for the application to become
                                ready to accept input. The following options are available:None -
                                        Does not wait for the target to be ready.Interactive - Waits until only a part of the
                                        application is loaded.Complete
                                        - Waits for the entire application to load.Capture screenshotsDictates if screenshots are captured at design time by all the
                                activities that support this feature. If the setting is set to
                                false, the Remove informative screenshot option from the
                                context menu is disabled.Alter disabled elementIf set to True, the Select Item action is executed
                                even if the specified UI element is disabled. This property does not
                                apply if the Input Mode property is set to Hardware
                                    Events.Wait for primary targeting method until timeoutIf set to True, this setting allows the primary targeting
                                method to consume its full timeout until any fallback targeting
                                method can be used.Enable Java automation (preview) If set to True, you can indicate Java applications. If
                                set to False, you can indicate only Chrome browser
                                windows.Automatically add UI elements to Object RepositoryIf set to True, all UI elements are automatically added to
                                Object Repository.

# Targeting methods - Web browsers

The settings below apply to
                indicated targets and anchors for desktop applications.

Property nameDescriptionInput mode for Edge, ChromeSelect how to execute the action:Simulate - Simulates the click using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events.
                                        Works even if the target application is not in focus. Test
                                        if your target application UI element supports this.ChromiumAPI - Performs actions using debugger APIs.
                                        Works for Chromium elements only. Sends all text in one go.
                                        Works even if the target application is not in focus. For
                                        more details, check out the Chromium API
                                                page.Note: When the browser is started
                                            with Chromium API, a ribbon shows up stating that the
                                            browser started in debug mode. This message does not
                                            appear if the extension is installed via
                                        policy.Strict selectorIf set to True, uses the Strict
                                    selector method.Fuzzy selectorIf set to True, uses the Fuzzy
                                    selector method.Computer VisionIf set to True, uses the Computer
                                    Vision method. The default value is True.Ignore selectors with IDX / tableRow /
                                    tableColDisable the full selector if the target selector
                                has a tableRow, tableCol, or an
                                    idx attribute with a value higher than 1 and
                                anchors exist.

# Targeting methods - SAP

The settings below apply to indicated targets and
                anchors for SAP.

Property nameDescriptionInput modeSimulate - Simulates the click using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events.
                                        Works even if the target application is not in focus. Test
                                        if your target application UI element supports this.Strict selectorIf set to True, uses the Strict
                                    selector method.Fuzzy selectorIf set to True, usesthe Fuzzy
                                    selector method.Computer VisionIf set to True, uses the Computer
                                    Vision method. The default value is False.Ignore selectors with IDX / tableRow /
                                    tableColDisable the full selector if the target selector
                                has a tableRow, tableCol, or an
                                    idx attribute with a value higher than 1 and
                                anchors exist.

# Targeting methods - Java

The settings below apply to indicated targets
            and anchors for Java applications.

Property nameDescriptionInput modeSimulate - Simulates the click using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events.
                                        Works even if the target application is not in focus. Test
                                        if your target application UI element supports this.Strict selectorIf set to True, uses the Strict
                                selector method.Fuzzy selectorIf set to True, uses the Fuzzy
                                selector method.Computer VisionIf set to True, uses the Computer
                                Vision method. The default value is True.Ignore selectors with IDX / tableRow /
                                tableColDisable the full selector if the target selector
                                has a tableRow, tableCol, or an
                                idx attribute with a value higher than 1 and
                                anchors exist.

# Browser

The settings below apply to the Use Browser activity.

Property nameDescriptionOpenIn which cases to open the target application before executing
                                activities in it. The following options are available:If not
                                            openNeverAlwaysCloseIn which cases to close the target application after executing
                                activities in it. The following options are available:If opened
                                            by Use BrowserNeverAlwaysUser data folder modeThe user data folder mode you want to set. It is used to start
                                the browser with a specific user data folder.Automatic - Picture In Picture mode uses a
                                        different folder than the default mode, automatically
                                        generated if User data folder path is not set.Default
                                            folder - Uses the default browser folder, no matter
                                        if it runs in the main or PIP session.Custom
                                            folder - Uses the folder specified in User data
                                            folder path or an auto generated path if User
                                            data folder path is not set.User data folder pathThe path to the user data folder that the browser uses.Open browser timeout (seconds)Configure the browser startup timeout.

# Keyboard Events

The settings below apply to the Type Into and
                    Keyboard Shortcuts activities.

Property nameDescriptionType Into - Click before typingWhether to click the specified UI element before typing the text,
                                and the type of click to perform. The following options are
                                available: NoneSingleDoubleType Into - Empty fieldWhether to delete the existing content before typing the text,
                                and how to clear the field. The following options are available: NoneSingle
                                            line [End, Shift + Home, Del]Multi line
                                            [Ctrl +A, Del]Keyboard Shortcuts - Delay between shortcuts
                                (seconds)Delay time between consecutive special keys.

# Other Activities

The settings below apply to the Check App State, Extract Table Data,
                    Highlight, Hover, Inject Js Script, Close Popup, and
                    SAP Logon activities.

Property nameDescriptionCheck App State - Timeout (seconds)How long to wait for the target element to appear or
                                disappear.Extract Table Data - Delay between pages (seconds)If the data spans multiple pages, how long to wait for each page
                                to be loaded.Highlight - Duration (seconds)How long to highlight the target element.Hover - Duration (seconds)How long to hover over the target element.Inject Js Script - Execution worldApplies the InjectJs.ExecutionWorld setting globally. For
                                details, see the Inject Js Script
                                activity.Close Popup - Popup Appear TimeoutThe amount of time (in seconds) to wait for a pop-up to
                                appear.SAP Logon - Number Of RetriesThe number of times that the activity is trying to connect to SAP
                                Scripting interface.SAP Logon - Retry IntervalSpecifies the amount of time (in seconds) between each
                                entry.

# Robot Logging

Information about the methods used to identify targets and
                anchors, and the performance of each method at runtime can be saved in the Robot
                execution logs. The options apply to all supported activities.

Property nameProperty DescriptionImpacted ActivitiesLog target & anchor search stepsLog the methods used to identify targets and anchors.Check/UncheckCheck App
                                            StateClickExtract
                                            Table DataGet
                                            TextHighlightHoverKeyboard
                                            ShortcutsSelect
                                            ItemType
                                            IntoLog targeting methods timingsLog the performance of each targeting method.Check/UncheckCheck App
                                            StateClickExtract
                                            Table DataGet
                                            TextHighlightHoverKeyboard
                                            ShortcutsSelect
                                            ItemType
                                            IntoLog audit informationSpecifies at what level the logs generated by the Use
                                    Browser activity are stored. The following options are
                                    available:OffInfoTraceUse Browser
