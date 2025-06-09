# APIs

# 



# Mobile Automation APIs

This section includes the APIs found in the UiPath.MobileAutomation.API.Models
                service.

APIDescriptionReleases resources used during automation, clears memory taken up
                                by these actions, and returns the Connection back
                                to its original state. This makes these resources available for
                                other tasks on a Connection.Draws a path marked by multiple points on the device screen. The
                                points that create the path are recorded from the path of the finger
                                on the device screen. You can add multiple finger paths to simulate
                                screen interactions that involve multiple fingers.Returns a boolean variable that states whether a specified UI
                                element exists.Execute native mobile commands that are not associated with a
                                specific endpoint. Enables an object to perform cleanup operations and release
                                resources before it is reclaimed by garbage collection. Implements
                                the Object.Finalize method.Retrieves an attribute of a specified UI element.Retrieves the current orientation of the specified mobile
                                device.Retrieves the log types from a device connected via the mobile
                                device Connection.Retrieves the page source from a mobile device connected via the
                                    Connection class.Retrieves the selected item from a target UI element.Retrieve the session ID of the current Mobile Device Manager
                                connection to route HTTP commands to Appium endpoints so you can
                                perform custom actions.Retrieves the current time of the device.Extracts the text from a specified UI element and returns it as a
                                    String variable.Installs a specified app on a mobile device connected via
                                    Connection.Resets or launches the current app for this session.Manages other applications using commands. Opens a deep link inside an application. Opens a URL in Chrome. The current active application should be
                                Chrome, having at least one opened tab, before calling this
                                method.Swipes to a predefined location on the screen with starting and
                                ending points.Presses a hardware button on the connected device.Save logs of a specific type to a file. Sets the current geo-location of the device.Changes and then retrieves the orientation of the connected
                                device.Sets the selected item on a target UI element.Types the specified text into a target UI element, recognized by
                                Mobile Automation.The swipe operation iterates through multiple swipes on the list
                                (up to MaxNumberOfSwipes) until it locates the specified
                                element.Takes a screenshot of the screen of the mobile device you are
                                using with custom dimensions specified in the Height and
                                    Width parameters.Returns a boolean variable that states whether a specified UI
                                element exists. The API doesn't have a return value, but if the
                                specified UI element exists (boolean value), then it performs tap
                                operations on it.Takes the content typed through the keyboard and pastes it into
                                the currently active UI element. To paste the text inside the
                                element that you want, you need to focus wherever on the UI where
                                you want to paste the text. You can use this API when automating
                                applications for which you need to type text through the keyboard,
                                but without a target element that is recognized by Mobile
                                Automation.

# 



# Using Mobile Automation
                APIs

To use Mobile Automation APIs, you first establish a connection to your device and
                application (visit  to learn more), then call the desired automation methods on this
                connection, such as connection.Tap(<selector>); or var
                    orientation = connection.GetDeviceOrientation();.

### Dispose

Releases, frees, or resets all resources used while automating actions on a certain
                Connection.

Releasing resources refers to freeing up or closing the resources acquired while working
            with a connection. This could involve releasing memory, resetting the mobile device,
            terminating the connection between the mobile device and application, or any other
            actions necessary for efficient resource management.

Implements IDisposable.Dispose Method.

# 



# Overloads

OverloadDescriptionDispose()Releases all resources used while automating actions on a certain
                                    Connection.Dispose(bool)Releases the unmanaged resources used by a certain
                                    Connection, and can also release the managed
                                resources if specified.

# Dispose()

Releases all resources used while automating actions on a certain
                    Connection.

Dispose()

# Dispose(bool)

Releases the unmanaged resources used by a certain Connection, and
                can also release the managed resources if specified.

Dispose(
	    bool disposing
)

disposingSpecify true to release both managed and unmanaged
                        resources. Specify false to release only unmanaged
                        resources.


### DirectionalSwipe

Perform a swipe operation with the following pre-defined directions: Down, Up, Left,
            Right.

# 



# DirectionalSwipe(SwipeDirection, short, float)

Perform a swipe operation with the following pre-defined directions: Down, Up, Left,
                Right.

DirectionalSwipe(
    SwipeDirection swipeDirection,
    [short swipeSize],
    [float waitTime])

swipeDirectionSwipeDirectionThe direction of the swipe action. You access this parameter using the
                            SwipeDirection enumeration. The available swipe
                        directions are the following:SwipeDirection.DownSwipeDirection.UpSwipeDirection.LeftSwipeDirection.RightswipeSize (Optional)The length of the swipe action, which is a percent of the screen size. The
                        swipe of the size can be between 0 and 100.waitTime (Optional)The time, in seconds, that the API pauses during transitions between
                        points.


### DrawPattern

Draws a path marked by multiple points on the device screen. The points that create the path are
            recorded from the path of the finger on the device screen. You can add multiple finger
            paths to simulate screen interactions that involve multiple fingers.

# 



# Overloads

OverloadDescriptionDrawPattern(FingerPath, CoordinatesTypeEnum,
                                    PressTypeEnum, float,
                                MobileOptions.DrawPatternOptions)Draws a single path marked by multiple points on the device
                                screen.DrawPattern(List<FingerPath>, CoordinatesTypeEnum,
                                    PressTypeEnum, float,
                                MobileOptions.DrawPatternOptions)Draws multiple paths marked by multiple points on the device
                                screen. Suitable for scenarios where the user performs an action
                                that requires two finger on the device screen.

# DrawPattern(FingerPath,
                    CoordinatesTypeEnum, PressTypeEnum, float,
                    MobileOptions.DrawPatternOptions)

Draws a single path marked by multiple points on the device screen.

DrawPattern(
	    FingerPath fingerPath,
	    CoordinatesTypeEnum coordinatesType = CoordinatesTypeEnum.DeviceIndependentPixels,
	    PressTypeEnum pressType = PressTypeEnum.ShortPress,
	    float waitTime = 0f,
	    MobileOptions.DrawPatternOptions options = null

fingerPathFingerPathAll the points recorded from the path of the finger on the device screen, on
                        a X-Y axis. Visit  to learn how to create the finger path, using the
                            FingerPath Constructor and FingerPath
                            Methods, part of the FingerPath class.coordinatesTypeCoordinatesTypeEnum (Optional)Specifiy the coordinates of the finger as an
                            CoordinatesTypeEnum object for the ElementExists
                        API. Default value is null. The available types are:PhysicalPixelsDeviceIndependentPixelspressTypePressTypeEnum (Optional)Specify the press type for the CoordinatesTypeEnum inputted
                        above for the above parameter. Default value is
                            CoordinatesTypeEnum.DeviceIndependentPixels. The types
                        of press you can use are:ShortPressLongPresswaitTime (Optional)The time (in milliseconds) that you wait for a point in the finger path to
                            complete.To work as expected, the
                                waitTime should be higher than 0
                            for iOS devices.optionsMobileOptions.DrawPatternOptions (Optional)Specify the MobileOptions.DrawPatternOptions for the
                            DrawPattern action. Default value is null.

# DrawPattern(List<FingerPath>, CoordinatesTypeEnum, PressTypeEnum,
                    float, MobileOptions.DrawPatternOptions)

Draws multiple paths marked by multiple points on the device screen. Suitable for
                scenarios where the user performs an action that requires two finger on the device
                screen.

DrawPattern(
	    List<FingerPath> fingerPaths,
	    CoordinatesTypeEnum coordinatesType = CoordinatesTypeEnum.DeviceIndependentPixels,
	    PressTypeEnum pressType = PressTypeEnum.ShortPress,
	    float waitTime = 0f,
	    MobileOptions. DrawPatternOptions options = null
)

fingerPathsList<FingerPath>A list of finger paths created by multiple fingers on a screen, on a X-Y
                        axis (for example, in a zoom-in or zoom-out scenario, the user touches the
                        screen with two fingers in order to perform the action). Visit  to
                        learn how to create the finger path, using the FingerPath
                            Constructor and FingerPath Methods, part of
                        the FingerPath class.coordinatesTypeCoordinatesTypeEnum (Optional)Specify the coordinates of the finger as an
                            CoordinatesTypeEnum object for the ElementExists
                        API. Default value is null.pressTypePressTypeEnum (Optional)Specify the press type for the CoordinatesTypeEnum inputted
                        above for the above parameter. Default value is
                            PressTypeEnum.ShortPress. The types of press you can
                        use are:ShortPressLongPresswaitTime (Optional)The time (in milliseconds) that you wait for a point in the finger path to
                            complete.To work as expected, the
                                waitTime should be higher than 0
                            for iOS devices.optionsMobileOptions.DrawPatternOptions (Optional)Specify the MobileOptions.DrawPatternOptions for the
                            DrawPattern action. Default value is null.


### ElementExists

Returns a boolean variable that states whether a specified UI element exists.

# 



# Overloads

OverloadDescriptionElementExists(IElementDescriptor,
                                    MobileOptions.ElementExistsOptions)Returns a boolean variable that states whether an Object
                                Repository element (IElementDescriptor)
                                exists.ElementExists(ObjectRepositoryTarget,
                                    MobileOptions.ElementExistsOptions)Returns a boolean variable that states whether an Object
                                Repository target (ObjectRepositoryTarget)
                                exists.ElementExists(SelectorTarget,
                                    MobileOptions.ElementExistsOptions)Returns a boolean variable that states whether a native selector
                                    (SelectorTarget) exists.

# ElementExists(IElementDescriptor,
                    MobileOptions.ElementExistsOptions)

Returns a boolean variable that states whether an Object Repository element
                    (IElementDescriptor) exists.

ElementExists(
	    IElementDescriptor element,
	    MobileOptions. ElementExistsOptions options = null
)

optionsMobileOptions.ElementExistsOptionsSpecifies the MobileOptions.ElementExistsOptions for the
                            ElementExistsOptions action. Default value is
                        null.

# ElementExists(ObjectRepositoryTarget,
                    MobileOptions.ElementExistsOptions)

Returns a boolean variable that states whether an Object Repository target
                    (ObjectRepositoryTarget) exists.

ElementExists(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    MobileOptions. ElementExistsOptions options = null
)

optionsMobileOptions.ElementExistsOptionsSpecifies the MobileOptions.ElementExistsOptions for the
                            ElementExistsOptions action. Default value is
                        null.

# ElementExists(SelectorTarget,
                    MobileOptions.ElementExistsOptions)

Returns a boolean variable that states whether a native selector
                    (SelectorTarget) exists.

ElementExists(
	    SelectorTarget targetSelector,
	    MobileOptions. ElementExistsOptions options = null
)

optionsMobileOptions.ElementExistsOptionsSpecifies the MobileOptions.ElementExistsOptions for the
                            ElementExistsOptions action. Default value is
                        null.

# Return value



True if element exists, and False if element
                doesn't exist.


### ExecuteCommand

Execute native mobile commands that are not associated with a specific endpoint. For example, you
            can retrieve the battery info or dismiss alerts (see Appium Commands).

# 



# ExecuteCommand(string,
                    Dictionary<string,Object>,MobileOptions.ExecuteCommandOptions)

ExecuteCommand(
	    string command,
	    Dictionary<string, Object> parameters = null,
	    MobileOptions.ExecuteCommandOptions options = null
)

commandThe command that you want to execute.parameters<, > (Optional)A Dictionary<TKey, TValue>)
                        containing the list of parameter names and their corresponding values.optionsMobileOptions.ExecuteCommandOptions (Optional)Specifies the MobileOptions.ExecuteCommandOptions for the
                            ExecuteCommand action. Default value is null.

# Return value



Returns the result of the executed command as object of type ()


### Finalize

Enables an object to perform cleanup operations and release resources before it is
            reclaimed by garbage collection. Implements the Object.Finalize method.

# 



# Finalize()

Finalize()


### GetAttribute

Retrieves an attribute of a specified UI element.

# 



# Overloads

OverloadDescriptionGetAttribute(IElementDescriptor, string,
                                    MobileOptions.GetAttributeOptions)Retrieves an attribute of a specified UI element, identified as
                                an IEelementDescriptor.GetAttribute(ObjectRepositoryTarget, string,
                                    MobileOptions.GetAttributeOptions)Retrieves an attribute of a specified UI element, identified as
                                an ObjectRepositoryTarget.GetAttribute(SelectorTarget, string,
                                    MobileOptions.GetAttributeOptions)Retrieves an attribute of a specified UI element, identified as a
                                    SelectorTarget.

# GetAttribute(IElementDescriptor, string,
                    MobileOptions.GetAttributeOptions)

Retrieves an attribute of a specified UI element, identified as an
                    IEelementDescriptor.

GetAttribute(
	    IElementDescriptor element,
	    string attributeName,
	    MobileOptions. GetAttributeOptions options = null
)

elementIElementDescriptorA UI element from the Object Repository that you access using the
                            ObjectRepository.Descriptors class.Visit Using objects in coded
                                automations to learn how to use Object Repository elements in
                            coded automations.attributeName The name of the attribute you want to retrieve from the specified UI
                        element.optionsMobileOptions.GetAttributeOptions (Optional)Specifies the MobileOptions.GetAttributeOptions for the
                            GetAttribute action. Default value is null.

# GetAttribute(ObjectRepositoryTarget, string,
                    MobileOptions.GetAttributeOptions)

Retrieves an attribute of a specified UI element, identified as an
                    ObjectRepositoryTarget.

GetAttribute(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    string attributeName,
	    MobileOptions. GetAttributeOptions options = null
)

objectRepositoryTargetAn object of type ObjectRepositoryTarget. Can be
                        constructed using FromObjectRepository(String, String, String,
                            String) or FromObjectRepository(String[] , String,
                            String, String) methods.attributeName The name of the attribute you want to retrieve from the specified UI
                        element.optionsMobileOptions.GetAttributeOptions (Optional)Specifies the MobileOptions.GetAttributeOptions for the
                            GetAttribute action. Default value is null.

# GetAttribute(SelectorTarget, string,
                    MobileOptions.GetAttributeOptions)

Retrieves an attribute of a specified UI element, identified as a
                    SelectorTarget.

GetAttribute(
	    SelectorTarget targetSelector,
	    string attributeName,
	    MobileOptions. GetAttributeOptions options = null
)

selectorTargetSelectorTargetAn object of SelectorTarget type. Can be constructed using
                            FromSelector(String) method.attributeName The name of the attribute you want to retrieve from the specified UI
                        element.optionsMobileOptions.GetAttributeOptions (Optional)Specifies the MobileOptions.GetAttributeOptions for the
                            GetAttribute action. Default value is null.

# Return value



The value of the retrieved attribute.


### GetDeviceOrientation

Retrieves the current orientation of the specified mobile device.

# 



# GetDeviceOrientation(MobileOptions.GetDeviceOrientationOptions)

GetDeviceOrientation(
	    MobileOptions. GetDeviceOrientationOptions options = null
)

optionsMobileOptions.GetDeviceOrientationOptionsSpecifies the MobileOptions.GetDeviceOrientationOptions for
                        the GetDeviceOrientation action. Default value is
                        null.

# Return value

ScreenOrientation

The orientation of the device, stored in a ScreenOrientation
                object.


### GetLogTypes

Retrieves the log types from a device connected via the mobile device Connection.

# 



# GetLogTypes(MobileOptions.GetLogTypesOptions)

GetLogTypes(
	    MobileOptions.GetLogTypesOptions options = null
)

options
                        (Optional)Specifies the MobileOptions.GetLogTypesOptions for the
                            GetLogtypes action. Default value is null.

# Return value

String []

Returns an array of strings containing the list of log types.


### GetPageSource

Retrieves the page source from a mobile device connected via the Connection class.

# 



# GetPageSource(MobileOptions.GetPageSourceOptions)

GetPageSource(
	    MobileOptions. GetPageSourceOptions options = null
)

optionsSpecifies the MobileOptions.GetPageSourceOptions for the
                            GetPageSource action. Default value is null.

# Return value



A string containing the page source.


### GetSelectedItem

Retrieves the selected item from a target UI element.

# 



# Overloads

OverloadDescriptionGetSelectedItem(IElementDescriptor,
                                    MobileOptions.GetSelectedItemOptions)Retrieves the selected item from a target UI element, identified
                                as an IElementDescriptor.GetSelectedItem(ObjectRepositoryTarget,
                                    MobileOptions.GetSelectedItemOptions)Retrieves the selected item from a target UI element, identified
                                as an ObjectRepositoryTarget.GetSelectedItem(SelectorTarget,
                                    MobileOptions.GetSelectedItemOptions)Retrieves the selected item from a target UI element, identified
                                as a SelectorTarget.

# ElementExists(IElementDescriptor,
                    MobileOptions.ElementExistsOptions)

Retrieves the selected item from a target UI element, identified as an
                    IElementDescriptor.

GetSelectedItem(
	    IElementDescriptor element,
	    MobileOptions. GetSelectedItemOptions options = null
)

elementA UI element from the Object Repository that you access using the
                            ObjectRepository.Descriptors class.Visit Using objects in coded
                                automations to learn how to use Object Repository elements in
                            coded automations.MobileOptions.GetSelectedItemOptions
                        (Optional)Specifies the  MobileOptions.GetSelectedItemOptions for the
                            GetSelectedItem  action. Default value is null.

# GetSelectedItem(ObjectRepositoryTarget,
                    MobileOptions.GetSelectedItemOptions)

Retrieves the selected item from a target UI element, identified as an
                    ObjectRepositoryTarget.

GetSelectedItem(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    MobileOptions. GetSelectedItemOptions options = null
)

objectRepositoryTargetAn object of type ObjectRepositoryTarget. Can be
                        constructed using FromObjectRepository(String, String, String,
                            String) or FromObjectRepository(String[] , String,
                            String, String) methods.MobileOptions.GetSelectedItemOptions
                        (Optional)Specifies the  MobileOptions.GetSelectedItemOptions for the
                            GetSelectedItem  action. Default value is null.

# GetSelectedItem(SelectorTarget,
                    MobileOptions.GetSelectedItemOptions)

Retrieves the selected item from a target UI element, identified as a
                    SelectorTarget.

string GetSelectedItem(
	    SelectorTarget targetSelector,
	    MobileOptions. GetSelectedItemOptions options = null
)

targetSelectorAn object of SelectorTarget type. Can be constructed using
                            FromSelector(String) method.MobileOptions.GetSelectedItemOptions
                        (Optional)Specifies the  MobileOptions.GetSelectedItemOptions for the
                            GetSelectedItem  action. Default value is null.

# Return value



The selected item, stored in a string.


### GetSessionIdentifier

Retrieve the session ID of the current Mobile Device Manager connection to route HTTP commands to
            Appium endpoints so you can perform custom actions.

# 



# GetSessionIdentifier(MobileOptions.GetSessionIdentifierOptions)

GetSessionIdentifier(
	    MobileOptions. GetSessionIdentifierOptions options = null
)

optionsMobileOptions.GetSessionIdentifierOptions (Optional)Specifies the MobileOptions.GetSessionIdentifierOptions for
                        the GetSessionIdentifier action. Default value is
                        null.

# Return value



A string containing the identifier of the currently active session.


### GetSystemTime

Retrieves the current time of the device.

# 



# GetSystemTime(MobileOptions.GetSystemTimeOptions)

GetSystemTime(
	    MobileOptions. GetSystemTimeOptions options = null
)

optionsMobileOptions.GetSystemTimeOptions (Optional)Specifies the MobileOptions.GetSystemTimeOptions for the
                            GetSystemTime action. Default value is null.

# Return value



Returns the current time of the device.


### GetText

Extracts the text from a specified UI element and returns it as a String
            variable.

# 



# Overloads

GetText(IElementDescriptor,
                                    MobileOptions.GetTextOptions)Extracts the text from a specified UI element as an
                                    IElementDescriptor.GetText(ObjectRepositoryTarget,
                                    MobileOptions.GetTextOptions)Extracts the text from a specified UI element as an
                                    ObjectRepositoryTarget.GetText(SelectorTarget,
                                    MobileOptions.GetTextOptions)Extracts the text from a specified UI element as an
                                    SelectorTarget.

# GetText(IElementDescriptor,
                MobileOptions.GetTextOptions)

Extracts the text from a specified UI element as an
                    IElementDescriptor.

GetText(
	    IElementDescriptor element,
	    MobileOptions. GetTextOptions options = null
)

MobileOptions.GetTextOptionsMobileOptions.GetTextOptions (Optional)Specifies the MobileOptions.GetTextOptions for the
                            GetText action. Default value is null.

# GetText(ObjectRepositoryTarget,
                MobileOptions.GetTextOptions)

Extracts the text from a specified UI element as an
                    ObjectRepositoryTarget.

GetText(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    MobileOptions. GetTextOptions options = null
)

MobileOptions.GetTextOptionsMobileOptions.GetTextOptions (Optional)Specifies the MobileOptions.GetTextOptions for the
                            GetText action. Default value is null.

# GetText(SelectorTarget, MobileOptions.GetTextOptions)

Extracts the text from a specified UI element as an
                SelectorTarget.

GetText(
	    SelectorTarget targetSelector,
	    MobileOptions. GetTextOptions options = null
)

MobileOptions.GetTextOptionsMobileOptions.GetTextOptions (Optional)Specifies the MobileOptions.GetTextOptions for the
                            GetText action. Default value is null.

# Return value



The retrieved text, stored in a string.


### InstallApp

Installs a specified app on a mobile device connected via Connection.

# 



# InstallApp(string,
                    MobileOptions.InstallAppOptions)

InstallApp(
	    string appPath,
	    MobileOptions. InstallAppOptions options = null
)

appPathThe path to the app you want to install on the specified device.optionsMobileOptions.InstallAppOptionsSpecifies the MobileOptions.InstallAppOptions for the
                            InstallApp action. Default value is null.

# Return value



Returns True if the application has been installed successfully.


### ManageCurrentApplication

Resets or launches the current app for this session.

# 



# ManageCurrentApplication(ManageCurrentAppCommandEnum,
                    MobileOptions.ManageCurrentApplicationOptions)

ManageCurrentApplication(
	    ManageCurrentAppCommandEnum appCommand,
	    MobileOptions. ManageCurrentApplicationOptions options = null
)

appCommandManageCurrentAppCommandEnumThe command that you want to send to the app that is currently running.
                        There are two available commands, Launch and
                            Reset.optionsManageCurrentApplicationOptions (Optional)Specifies the MobileOptions.ManageCurrentApplicationOptions
                        for the ManageCurrentApplication action. Default value is
                        null.

# Return value



Returns True if the command has been executed successfully.


### ManageOtherApplication

Manages other applications using commands.

# 



# ManageOtherApplication(string, ManageOtherAppCommandEnum,
                    MobileOptions.ManageOtherApplicationOptions)

ManageOtherApplication(
	    string appName,
	    ManageOtherAppCommandEnum appCommand,
	    MobileOptions. ManageOtherApplicationOptions options = null
)

appNameA string that contains the package or bundle ID of the application that you
                        want to manage.appCommandManageOtherAppCommandEnumThe command that you want to send to the app that is currently running.optionsMobileOptions.ManageOtherApplicationOptions (Optional)Specifies the MobileOptions.ManageOtherApplicationOptions
                        for the ManageOtherApplication action. Default value is
                        null.


### OpenDeepLink

Opens a deep link inside an application.

# 



# OpenDeepLink(string,
                    string, MobileOptions.OpenDeepLinkOptions)

OpenDeepLink(
	    string url,
	    string package,
	    MobileOptions. OpenDeepLinkOptions options = null
)

urlThe URL you want to go to.packageThe app, identified either by the iOS bundle id or the Android package
                        name.optionsMobileOptions.OpenDeepLinkOptions (Optional)Specifies the MobileOptions.OpenDeepLinkOptions for the
                            OpenDeepLink action. Default value is null.


### OpenUrl

Opens a URL in Chrome. The current active application should be Chrome, having at least one
            opened tab, before calling this method.

# 



# OpenUrl(string,
                    MobileOptions.OpenUrlOptions)

OpenURL(
	    string url,
	    MobileOptions.OpenURLOptions options = null
)

urlThe URL you want to open in the currently active browser.optionsMobileOptions.OpenUrlOptions (Optional)Specifies the MobileOptions.OpenURLOptions for the
                            OpenURL action. Default value is null.


### PositionalSwipe

Swipes to a predefined location on the screen with starting and ending points.

# 



# PositionalSwipe(Point, Point, CoordinatesTypeEnum, Float,
                    MobileOptions.PositionalSwipeOptions)

PositionalSwipe(
	    Point startSwipePoint,
	    Point endSwipePoint,
	    CoordinatesTypeEnum coordinatesType = CoordinatesTypeEnum.DeviceIndependentPixels,
	    float waitTime = 4f,
	    MobileOptions. PositionalSwipeOptions options = null
)

startSwipePointPointSet the starting points for your positional swipe on the device screen.endSwipePointPointSet the ending points for your positional swipe on the device screen.coordinatesTypeCoordinatesTypeEnum (Optional)Specifies the coordinates type of startSwipePoint and
                            endSwipePoint. Default value is
                            CoordinatesTypeEnum.DeviceIndependentPixels. The
                        available choices are:CoordinatesTypeEnum.DeviceIndependentPixels - Use
                                this option for workflows using a single device. Since the
                                indication corresponds to actual pixels on the screen, it's
                                different for each device.CoordinatesTypeEnum.PhysicalPixels - Use this
                                option to run workflows on devices with similar density screens.
                                Device-independent pixels means that you are indicating a target
                                based on the pixel density of the selected screen area.waitTime (Optional)Specifies the duration of time(in seconds) spent waiting during transitions
                        between points.optionsMobileOptions.PositionalSwipeOptions (Optional)Specifies the MobileOptions.DrawPatternOptions for the
                            DrawPattern action. Default value is null.


### PressHardwareButton

Presses a hardware button on the connected device

# 



# PressHardwareButton(HardwareButton,
                    MobileOptions.HardwareButtonOptions)

PressHardwareButton(
	HardwareButton button,
	MobileOptions. PressHardwareButtonOptions options = null
)

buttonHardwareButtonThe button you wan to press. The following options are available:HomeButtonBackButtonSwitchAppButtonoptionsMobileOptions.PressHardwareButtonOptions (Optional)Specifies the MobileOptions.PressHardwareButtonOptions for
                        the PressHardwareButton action. Default value is null.


### SaveLogs

Save logs of a specific type to a file.

# 



# SaveLogs(string, string,
                    Boolean, MobileOptions.SaveLogsOptions)

SaveLogs(
	    string logType,
	    string logFilePath,
	    bool appendToLogFile = true,
	    MobileOptions. SaveLogsOptions options = null
)

logTypeA string specifying the log type that you want to save. The list of
                        available log types can be obtained by calling (MobileOptions.GetLogTypesOptions).logFilePathA string containing the filename where the logs will be saved.appendToLogFile (Optional)Specifies whether to append log entries to an existing file or overwrite the
                        file. Set to true to append entries. Set
                            false to overwrite the file. If the file doesn't exist,
                        a new one is created. optionsMobileOptions.SaveLogsOptionsSpecifies the MobileOptions.SaveLogsOptions for the
                            SaveLogs action. Default value is null.


### SetDeviceGeoLocation

Sets the current geo-location of the device.

# 



# SetDeviceGeoLocation(Double, Double, Double,
                    MobileOptions.SetDeviceGeoLocationOptions)

SetDeviceGeoLocation(
	    double altitude,
	    double latitude,
	    double longitude,
	    MobileOptions. SetDeviceGeoLocationOptions options = null
)

altitudeSpecify the altitude.latitudeSpecify the latitude.longitudeSpecify the longitude.optionsMobileOptions.SetDeviceGeoLocationOptionsSpecifies the MobileOptions.SetDeviceGeoLocationOptions for
                            the SetDeviceGeoLocation action. Default value is
                        null.


### SetDeviceOrientation

Changes and then retrieves the orientation of the connected device.

# 



# SetDeviceOrientation(DeviceOrientationEnumC,
                    MobileOptions.SetDeviceOrientationOptions)

ScreenOrientation SetDeviceOrientation(
	    DeviceOrientationEnumC screenOrientationCommand,
	    MobileOptions. SetDeviceOrientationOptions options = null
)

screenOrientationCommand DeviceOrientationEnumCSpecifies the command for setting the screen orientation. The following
                        options are available:PortraitLandscapeToggleoptionsMobileOptions.SetDeviceOrientationOptionsSpecifies the MobileOptions.SetDeviceOrientationOptions for
                        the SetDeviceOrientation action. Default value is
                        null.

# Return value

ScreenOrientation

Returns the new orientation of the device.


### SetSelectedItem

Sets the selected item on a target UI element.

# 



# Overloads

OverloadDescriptionSetSelectedItem(IElementDescriptor, string,
                                    MobileOptions.SetSelectedItemOptions)Sets the selected item on a target UI element, identified as an
                                    IElementDescriptor.SetSelectedItem(ObjectRepositoryTarget, string,
                                    MobileOptions.SelectedItemOptions)Sets the selected item on a target UI element, identified as an
                                    ObjectRepositoryTarget.SetSelectedItem(SelectorTarget, string,
                                    MobileOptions.SetSelectedItemOptions)Sets the selected item on a target UI element, identified as a
                                    SelectorTarget.

# SetSelectedItem(IElementDescriptor, string,
                    MobileOptions.SetSelectedItemOptions)

Sets the selected item on a target UI element, identified as an
                    IElementDescriptor.

SetSelectedItem(
	    IElementDescriptor element,
	    string selectedItem,
	    MobileOptions. SetSelectedItemOptions options = null
)

selectedItemThe item that will be selected after this call.optionsMobileOptions.SetSelectedItemOptionsSpecifies the MobileOptions.SetSelectedItemOptions for the
                        set text action. Default value is null.

# SetSelectedItem(ObjectRepositoryTarget, string,
                    MobileOptions.SelectedItemOptions)

Sets the selected item on a target UI element, identified as an
                    ObjectRepositoryTarget.

SetSelectedItem(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    string selectedItem,
	    MobileOptions. SetSelectedItemOptions options = null
)

selectedItemThe item that will be selected after this call.optionsMobileOptions.SetSelectedItemOptionsSpecifies the MobileOptions.SetSelectedItemOptions for the
                        set text action. Default value is null.

# SetSelectedItem(SelectorTarget, string,
                    MobileOptions.SetSelectedItemOptions)

Sets the selected item on a target UI element, identified as a
                    SelectorTarget.

SetSelectedItem(
	    SelectorTarget targetSelector,
	    string selectedItem,
	    MobileOptions. SetSelectedItemOptions options = null
)

selectedItemThe item that will be selected after this call.optionsMobileOptions.SetSelectedItemOptionsSpecifies the MobileOptions.SetSelectedItemOptions for the
                        set text action. Default value is null.


### SetText

Types the specified text into a target UI element, recognized by Mobile Automation.

# 



# Overloads

SetText(IElementDescriptor, string,
                                    MobileOptions.SetTextOptions)Types the specified text into a target UI element, identified as
                                an IElementDescriptor.SetText(ObjectRepositoryTarget, string,
                                    MobileOptions.SetTextOptions)Types the specified text into a target UI element, identified as
                                an ObjectRepositoryTarget.SetText(SelectorTarget, string,
                                    MobileOptions.SetTextOptionsTypes the specified text into a target UI element, identified as
                                a SelectorTarget.

# SetText(IElementDescriptor, string,
                    MobileOptions.SetTextOptions)

Types the specified text into a target UI element, identified as an
                    IElementDescriptor.SetText(
	    IElementDescriptor element,
	    string text,
	    MobileOptions. SetTextOptions options = null
)

textThe text you want to type into the specified UI element, stored in a
                        string.optionsMobileOptions.SetTextOptions (Optional)Specifies the MobileOptions.SetTextOptions for the set text
                        action. Default value is null.

# SetText(ObjectRepositoryTarget, string,
                    MobileOptions.SetTextOptions)

Types the specified text into a target UI element, identified as an
                    ObjectRepositoryTarget.

SetText(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    string text,
	    MobileOptions. SetTextOptions options = null
)

textThe text you want to type into the specified UI element, stored in a
                        string.optionsMobileOptions.SetTextOptions (Optional)Specifies the MobileOptions.SetTextOptions for the set text
                        action. Default value is null.

# SetText(SelectorTarget,
                    string, MobileOptions.SetTextOptions

Types the specified text into a target UI element, identified as a
                    SelectorTarget.

SetText(
	    SelectorTarget targetSelector,
	    string text,
	    MobileOptions. SetTextOptions options = null
)

textThe text you want to type into the specified UI element, stored in a
                        string.optionsMobileOptions.SetTextOptions (Optional)Specifies the MobileOptions.SetTextOptions for the set text
                        action. Default value is null.


### Swipe

The swipe operation iterates through multiple swipes on the list (up to
                MaxNumberOfSwipes) until it locates the specified element. If the
                Target is not set, the swipe operation performs a single swipe without
            searching for a specific element.

# 



# Overloads

OverloadDescriptionSwipe(IElementDescriptor, IElementDescriptor,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    IElementDescriptor until it finds the
                                    IElementDescriptor target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.Swipe(IElementDescriptor, ObjectRepositoryTarget,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    IElementDescriptor until it finds the
                                    ObjectRepositoryTarget target. The first
                                parameter specifies the container, while the second defines the
                                target for the swipe operation.Swipe(IElementDescriptor, SelectorTarget, SwipeDirection,
                                    int, MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    IElementDescriptor until it finds the
                                    SelectorTarget target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.Swipe(ObjectRepositoryTarget, IElementDescriptor,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    ObjectRepositoryTarget until it finds the
                                    IElementDescriptor target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.Swipe(ObjectRepositoryTarget, ObjectRepositoryTarget,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    ObjectRepositoryTarget until it finds the
                                    ObjectRepositoryTarget target. The first
                                parameter specifies the container, while the second defines the
                                target for the swipe operation.Swipe(ObjectRepositoryTarget, SelectorTarget,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    ObjectRepositoryTarget until it finds the
                                    SelectorTarget target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.Swipe(SelectorTarget, IElementDescriptor, SwipeDirection,
                                    int, MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    SelectorTarget until it finds the
                                    IElementDescriptor target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.Swipe(SelectorTarget, ObjectRepositoryTarget,
                                    SwipeDirection, int,
                                MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    SelectorTarget until it finds the
                                    ObjectRepositoryTarget target. The first
                                parameter specifies the container, while the second defines the
                                target for the swipe operation.Swipe(SelectorTarget, SelectorTarget, SwipeDirection,
                                    int, MobileOptions.SwipeOptions)Performs the swipe action within a specified container as an
                                    SelectorTarget until it finds the
                                    SelectorTarget target. The first parameter
                                specifies the container, while the second defines the target for the
                                swipe operation.

# Swipe(IElementDescriptor,
                    IElementDescriptor, SwipeDirection, int,
                MobileOptions.SwipeOptions)

Performs the swipe operation from an IElementDescriptor to an
                    IElementDescriptor.

Swipe(
	    IElementDescriptor container,
	    IElementDescriptor target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(IElementDescriptor,
                    ObjectRepositoryTarget, SwipeDirection, int,
                    MobileOptions.SwipeOptions)

Performs the swipe operation from an IElementDescriptor to an
                    ObjectRepositoryTarget.

Swipe(
	    IElementDescriptor container,
	    ObjectRepositoryTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(IElementDescriptor,
                    SelectorTarget, SwipeDirection, int,
                MobileOptions.SwipeOptions)

Performs the swipe operation from an IElementDescriptor to a
                    SelectorTarget.

Swipe(
	    IElementDescriptor container,
	    SelectorTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(ObjectRepositoryTarget, IElementDescriptor, SwipeDirection, int,
                    MobileOptions.SwipeOptions)

Performs the swipe operation from an ObjectRepositoryTarget to an
                    IElementDescriptor.

Swipe(
	    ObjectRepositoryTarget container,
	    IElementDescriptor target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(ObjectRepositoryTarget, ObjectRepositoryTarget, SwipeDirection,
                    int, MobileOptions.SwipeOptions)

Performs the swipe operation from an ObjectRepositoryTarget to an
                    ObjectRepositoryTarget.

Swipe(
	    ObjectRepositoryTarget container,
	    ObjectRepositoryTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(ObjectRepositoryTarget, SelectorTarget, SwipeDirection, int,
                    MobileOptions.SwipeOptions)

Performs the swipe operation from an ObjectRepositoryTarget to a
                    SelectorTarget.

Swipe(
	    ObjectRepositoryTarget container,
	    SelectorTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(SelectorTarget,
                    IElementDescriptor, SwipeDirection, int,
                MobileOptions.SwipeOptions)

Performs the swipe operation from a SelectorTarget to an
                    IElementDescriptor.

Swipe(
	    SelectorTarget container,
	    IElementDescriptor target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(SelectorTarget,
                    ObjectRepositoryTarget, SwipeDirection, int,
                    MobileOptions.SwipeOptions)

Performs the swipe operation from a SelectorTarget to an
                    ObjectRepositoryTarget.

Swipe(
	    SelectorTarget container,
	    ObjectRepositoryTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.

# Swipe(SelectorTarget,
                    SelectorTarget, SwipeDirection, int,
                MobileOptions.SwipeOptions)

Performs the swipe operation from a SelectorTarget to a
                    SelectorTarget.

Swipe(
	    SelectorTarget container,
	    SelectorTarget target,
	    SwipeDirection swipeDirection = SwipeDirection.Down,
	    int maxNumberOfSwipes = 10,
	    MobileOptions. SwipeOptions options = null
)

containerThe element that defines the container of the Swipe action.targetThe element that defines the target of the Swipe action.swipeDirectionSwipeDirection (Optional)The direction of the Swipe action.maxNumberOfSwipes (Optional)The maximum number of swipes in order to achieve the desired result.optionsMobileOptions.SwipeOptionsSpecifies the MobileOptions.SwipeOptions for the Swipe
                        action. Default value is null.


### TakeScreenshot

Takes a screenshot of the screen of the mobile device you are using with custom dimensions.

# 



# TakeScreenshot(MobileScreenRect,
                    MobileOptions.TakeScreenshotOptions)

TakeScreenshot(
	    MobileScreenRect screenRegion = null,
	    MobileOptions. TakeScreenshotOptions options = null
)

screenRegionMobileScreenRect (Optional)Specifies the region that we are interested in. Default value is null. If no
                        region is specified a screenshot of the entire screen will be made.optionsMobileOptions.TakeScreenshotOptions (Optional)Specifies the MobileOptions.TakeScreenshotOptions for the
                            TakeScreenshot action. Default value is null.


### Tap

Returns a boolean variable that states whether a specified UI element exists. The API
            doesn't have a return value, but if the specified UI element exists (boolean value),
            then it performs tap operations on it.

# 



# Overloads

OverloadDescriptionTap(IElementDescriptor, TapTypeEnum,
                                    MobileOptions.TapOptions)Returns a boolean variable whether an
                                    IElementDescriptor UI element exists.Tap(ObjectRepositoryTarget, TapTypeEnum,
                                    MobileOptions.TapOptions)Returns a boolean variable whether an
                                    ObjectRepositoryTarget UI element
                                exists.Tap(SelectorTarget, TapTypeEnum,
                                    MobileOptions.TapOptions)Returns a boolean variable whether an
                                    SelectorTarget UI element exists.

# Tap(IElementDescriptor, TapTypeEnum,
                MobileOptions.TapOptions)

Returns a boolean variable whether an IElementDescriptor UI element
                exists.

Tap(
	    IElementDescriptor element,
	    TapTypeEnum tapType = TapTypeEnum.Single,
	    MobileOptions. TapOptions options = null
)

tapTypeTapTypeEnum (Opitional)Specifies the tap type. Default value TapTypeEnum.Single.
                        You can choose from the following values:SingleDoubleLongPressoptionsMobileOptions.TapOptions (Optional)Specifies the MobileOptions.TapOptions for the tap action.
                        Default value is null.

# Tap(ObjectRepositoryTarget, TapTypeEnum,
                    MobileOptions.TapOptions)

Returns a boolean variable whether an ObjectRepositoryTarget UI
                element exists.

Tap(
	    ObjectRepositoryTarget objectRepositoryTarget,
	    TapTypeEnum tapType = TapTypeEnum.Single,
	    MobileOptions. TapOptions options = null
)

tapTypeTapTypeEnum (Opitional)Specifies the tap type. Default value TapTypeEnum.Single.
                        You can choose from the following values:SingleDoubleLongPressoptionsMobileOptions.TapOptions (Optional)Specifies the MobileOptions.TapOptions for the tap action.
                        Default value is null.

# Tap(SelectorTarget, TapTypeEnum,
                MobileOptions.TapOptions)

Returns a boolean variable whether an SelectorTarget UI element
                exists.

Tap(
	    SelectorTarget targetSelector,
	    TapTypeEnum tapType = TapTypeEnum.Single,
	    MobileOptions. TapOptions options = null
)

tapTypeTapTypeEnum (Opitional)Specifies the tap type. Default value TapTypeEnum.Single.
                        You can choose from the following values:SingleDoubleLongPressoptionsMobileOptions.TapOptions (Optional)Specifies the MobileOptions.TapOptions for the tap action.
                        Default value is null.


### TypeText

Takes the content typed through the keyboard and pastes it into the currently active UI element.
            To paste the text inside the element that you want, you need to focus wherever on the UI
            where you want to paste the text. You can use this API when automating applications for
            which you need to type text through the keyboard, but without a target element that is
            recognized by Mobile Automation.

# 



# TypeText(string,
                    MobileOptions.TypeTextOptions)

TypeText(
	    string text,
	    MobileOptions. TypeTextOptions options = null
)

textThe standard text that you want to type into the active UI element.optionsMobileOptions.TypeTextOptions (Optional)Specifies the MobileOptions.TypeTextOptions for the set
                        text action. Default value is null.

