# Device Interaction

Device interaction consists of the actions that you take on a mobile device, within the
            Mobile Device Manager (MDM), that you can record and then import into your test
            case.

# Device Interaction Conditions

When an action is executed, device interaction is locked until its completion.

# Starting an Application

To interact with your device you must first start an application. In MDM, you have three options
                to choose from, as listed in the following table.

MethodProcedureStart an application from a deviceGo to the Devices tab and select a device.Click Start an application on this device.Choose an application from the dropdown list and
                                        click Connect.Start an application from a configured appGo to the Applications tab and select an application.Click Start application.Choose a device from the dropdown and click Connect.Start an application using Quick Actions within the Welcome tabGo to the Welcome tab and select Start an application.Choose a device and an application from the dropdown.Click Connect.For more information about Quick Actions, refer to Quick Actions.

# Interacting with the device

You can interact with your device in MDM as you would with an actual physical device, using your mouse or the action bar. The screen and the actions are locked when you perform an action.

![6489755-device_interaction=GUID-1A49D285-0F19-4A2C-B117-28C89F19B5D9=1=en=Default](/images/6489755-device_interaction=GUID-1A49D285-0F19-4A2C-B117-28C89F19B5D9=1=en=Default.png)

# On-Screen Interaction

The following table lists the on-screen actions that you can take to interact with your device.

ActionDescriptionProcedureTapAccess an on-screen element.Click an element on the device screen.Double TapPerform double tap action on-screen.Double-click an element on the device screen.Long TapLong press.Click and hold on an element.Pinch (Zoom In/Out)Zoom in and out. This action is not recorded.Right-click and hold, and then drag to the bottom of the screen to zoom in, or towards the upper part to zoom out.SwipeSwipe on-screen.Click and drag towards any part of the screen.Keyboard InputType in your text and send it to the mobile. For example, you can use the search bar to quickly access a website.Double-click on a text area to open the input window.
Type in your text.
Select Press Enter key after sending text to type in and enter your input directly.Click Send Text.

# Action Bar

The following table lists the actions that you can take to interact with your device. The action bar is right next to the device.

ActionDescriptionProcedureiOS HomeReturn to the home screen.Click the iOS Home button.Android BackGet back to the previous screen/page.Click the Android Back button.Android HomeReturn to the home screen.Click the Android Home button.Android Switch AppsSwitch between apps.Click the Android Switch Apps button, and choose your next action.Change orientation to landscape/portraitToggle between portrait (vertical) and landscape (horizontal) mode for your device. Screen orientation is not supported by all applications.Click the Change Orientation toggle to switch between modes.RefreshRefresh the device connection.Click the Refresh button.Alternatively, click the Reconnect button when the connection has been lost.Save ScreenshotSave the current screen.Click Save Screenshot and choose a location to save the file.Send TextType in your text and send it to the mobile. For example, you can use the search bar to quickly access a website.Select a focusable element and then click Send Text.Type in your text.
Select Press Enter key after sending to type in and enter your input directly.Deselect Clear the existing text to paste your text
                                        next to the existing text without clearing it.Click Send Text to confirm.Draw PatternDraws whatever pattern on the device screen. Several points from the finger path are recorded and displayed on a X-Y axis.Select Draw Pattern and draw whatever pattern you want inside a UI element.To import the action in Studio, click Import recorded actions. The pattern that you drew in MDM shows up as a Draw pattern activity, that prints out the points recorded from the finger path.Enable CV recordingEnables recording for automating UI elements
                                identified by the Computer Vision feature. This feature uses a UiPath® neural network that is
                                able to identify UI elements without the use of selectors. This
                                method, in turn, manages to identify elements that are otherwise
                                impossible to automate.Select Enable CV recording and select whatever UI
                                        element you want to automate.To import the action in Studio, click Import recorded
                                            actions. The UI element that you recorded in MDM
                                        shows up as a corresponding activity in your workflow.Selection by identified elementsSelects UI elements that are identified by MDM.Click the Selection by identified elements to choose to select UI elements that are identified by MDM.Selection by absolute positionUses fixed element coordinates for selecting a UI element. The coordinates are recorded as a Positional Swipe activity.Click Selection by absolute position and choose the default coordinates for selecting a UI element.Record element actionRecords a manually configured action completed on certain UI elements.  It is recommended for recording more granular actions, such as adding an offset to an on-screen tap.Click Record element action.Select a UI element on the device’s screen.
Click Single tap, and choose a type
                                        of on-screen interaction from the drop-down list. For
                                        example, choose Single tap.Click Configure Action to further configure the action, for more granularity.Click Execute Action to run the action that you’ve just recorded, in the Recorded Actions panel.Toggle WebView selectors as native selectorsTries to convert future selectors of type WebView, to selectors of type native, in accordance with the operating system used. This feature makes automating web apps easier.Click Toggle WebView selectors as native selectors.Start recording your actions.Install AppInstall an application on your device.Click the horizontal ellipsis to open Advanced Settings.
Click the Install App button and enter your app full location.Click Install to confirm.Manage AppManage the current application.Click the horizontal ellipsis to open Advanced Settings.
Click the Manage App and select one of the
                                        following actions from the dropdown:Launch: Launch the default app page.Reset: Restart the app.Click
                                            Execute to confirm.Manage Other AppManage other applications on your device. You can use this when you test integrations between apps.Click the horizontal ellipsis to open Advanced Settings.
Click the Manage Other Apps and enter your app's name.Choose on of the following commands from the
                                        dropdown: Remove: Uninstall the app.Activate: Open the app.Terminate: Close the app.Click
                                            Execute to confirm.Open URLOpen URL in browser.Open a browser on your device.
Click the horizontal ellipsis to open Advanced Settings.
Click the Open URL and enter a full URL. For example: https://www.google.com/.Click Open to confirm.Open Deep LinkLaunch an app that opens a specific page.Click the horizontal ellipsis to open Advanced Settings.
Click the Open Deep Link and configure the
                                            following:App: App pathDeep Link: Specify the page that you want to
                                                open.Click
                                            Open to confirm.Save SourceSave the XML source file of the device.Click the horizontal ellipsis to open Advanced Settings.
Click the Save Source and select a location to save the file.Set Geo LocationSet geographic coordinates.Click the horizontal ellipsis to open Advanced Settings.
Click the Set Geo Location and use the Latitude, Longitude, Altitude finder on map to get coordinates. Alternatively, you can search for your location.Click Set to confirm.

### Record element action

The Record element action feature can be found inside the Action bar. This allows you to record highly granular actions, that can't be captured through a regular on-screen interaction. The Record element action feature works by recording an action that is completed on one, or more UI elements, and configuring it. The configuration of the action depends on the type of on-screen interaction that you choose. For example, if you choose Single Tap as your on-screen interaction, you can configurate into Double Tap or Long Tap.

![9506e09-record_element_action_example=GUID-BBE84044-90EB-4C8B-A789-56F94B2507D3=1=en=Default](/images/9506e09-record_element_action_example=GUID-BBE84044-90EB-4C8B-A789-56F94B2507D3=1=en=Default.png)

The Record element action feature is recommended for recording more granular actions, such as adding an offset to an on-screen tap.


### WebView selectors as native selectors

The WebView selectors as native selectors feature can be found inside the Action bar. When toggled, it tries to convert all future selectors from WebView to Native. This allows a better, faster, and more familiar interaction with UI elements inside web views.

Keep in mind that there are scenarios where this selection strategy may not work as expected, especially for complex web pages or web pages with elements that update frequently.


### Recorded actions

You can interact with your device through the action bar or by indicating your actions on-screen to record the steps. For example, you can record and manage your actions to prepare mobile automation workflows in MDM. For more information, see Create Workflow Using Recorded Actions.

![9fa1ed1-recorded_actions=GUID-E8F8448A-500B-4FFD-8806-F6634355C015=1=en=Default](/images/9fa1ed1-recorded_actions=GUID-E8F8448A-500B-4FFD-8806-F6634355C015=1=en=Default.png)

The following table lists the actions that you can take using Recorded Actions.


| Action | Description | Procedure |
| --- --- ---| Execute | Execute the action. | Click the Play button on an action to execute it. |
| Copy | Copy the action to your clipboard. You can use the Import Recorded Actions in Studio to paste it to your workflow. | Click the Copy button to copy the action to your clipboard. |
| Delete | Delete the action. | Click Delete to remove the action from the list. Alternatively, you can click Clear All to remove all actions. |
| Reorder | Reorder the list of actions in alternate order. | Drag and drop an action to different position within the list. |
| Wait for page update | Wait for the page source to retrieve a screenshot of each action. | Toggle the Wait for new screenshot after each action. |

