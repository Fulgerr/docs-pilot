# Getting started with Mobile Automation APIs

This Quickstart guide helps you create your first coded automation, using Mobile
            Automation APIs. The tutorial uses the UiPath® Android
                Basic App and a Google Pixel Emulator from Sauce Labs for automated
            testing.

# 1. Add the mobile device and application inside Mobile Device Manager

To use the desired mobile device and application within our coded automation, we have
                to create them first in MDM (Mobile Device Manager):

1. To create the application:Open MDM, and go to ApplicationsSelect Add an application.In the Edit application window, input the required information:Name: For this example, use Basic App - Android.Type: Select App for a native application.Platform: Select Android to automate the Android application.App: For this example, input the following link to the Basic Android App: https://uipathtestappsto.blob.core.windows.net/testapps/BasicAppAndroid.apk.App Package: Enter the mobile application package, such as com.example.basicapp.App activity: Input the activity instance, such as: .core.MainActivity.For Additional Desired Capabilities, add the appium:app capability, to ensure that the application works as expected.Additional Desired CapabilitiesNameValueappium:appappium:app https://uipathtestappsto.blob.core.windows.net/testapps/BasicAppAndroid.apk
2. To create the device:Go to Devices, and select Add a device.Name the device. For this example, use Google Pixel 3a GoogleAPI Emulator.Set the following parameters: Appium URL, Platform, Device Name, Platform Version.Retrieve the parameters from your chosen mobile device farm provider. In this example, we're using Sauce Labs.To get Appium Url, go to Account then User Settings. Copy the On-demand URL under Driver Creation.To get Platform, Device Name, and Platform Version, go to Automated then Platform Configurator. Select the capabilities for Google Pixel 3a GoogleAPI Emulator and Android Emulator version 10.0. Under Config Script, choose your Appium version. For this example, use 2.0.0.Copy and paste the values from Sauce Labs into MDM.Select Save and Close.Select Start an application on this device, and connect the device with the previously created application.

# 2. Create your Object Repository for the mobile application

To automate your preferred mobile application, record its mobile elements within the
                project's Object Repository. For this example, we
                created a Basic App application with a general HomeScreen, containing
                three UI elements that we use to automate. Check the following list to see how the
                Object Repository's structure appears:

* BasicAppHomeScreenEditTextSingleClickButtonVerifyText

# 3. Establish a connection

After you configure your device and application in MDM, start writing the code for
                your automation. Before you start using the Mobile Automation APIs, you need to
                establish a connection between your chosen mobile device and application, using the
                corresponding APIs.

A connection is a class that represents the connection that you
                create between a device and an application, which exposes the APIs that you can use
                to automate mobile testing scenarios. Visit Connection
                for more information on creating a connection.

To create a connection, you have a set of dedicated APIs that you can use. In this
                example, we used the  API, with the second overload, which requires the device and
                application names as Strings.

Create the connection using the following steps:

1. Start with a using statement, to avoid creating a separate variable.
2. Inside the using statement, call the Connect API, with the second overload version.For this overload, enter the device name and application name, to establish the connection.[TestCase] public void Execute() { using (Connection connection = mobile.Connect( "Google Pixel 3a GoogleAPI Emulator", "Basic App - Android"))
3. Optionally, for debugging purposes, you can add a Log message. Log("Connection established");

# 4. Start automating the mobile application and device

The automation flow in this example includes tapping certain buttons, getting text
                that is displayed on the mobile screen, and swiping a slider control. These actions
                simulate real-life mobile automation scenarios.

To automate the UI elements in this example, we used IElementDescriptors. These represent UI elements accessed directly
                from the Object Repository. In addition to IElementDescriptors, you can use other selector types with Mobile
                Automation APIs, such as ObjectRepositoryTarget,
                and SelectorTarget. Visit  to learn how
                and when to use other selector types.

1. Call the Tap API, to click the SingleClickButton from the Android Basic App.// Tap the SingleClickButton connection.Tap(Descriptors.BasicApp.HomeScreen.SingleClickButton); Log("Tapped SingleClickButton ");
2. Use the SetText API to input a specific text into the EditText field.string expectText = "Random text"; connection.SetText(Descriptors.BasicApp.HomeScreen.EditText, expectText); Log("Inserted random text");
3. Get the text you previously set, and verify if it matches the text from the VerifyText UI element. Use the GetText and VerifyExpression APIs.var actualText = connection.GetText(Descriptors.BasicApp.HomeScreen.VerifyText); testing.VerifyExpression(expectText == actualText, "EditText validation failed."); SelectorTarget selector = null;
4. Use the PositionalSwipe API to move the slider control.The PositionalSwipe API requires two Point variables, representing the start and end points for the swipe action. Create these points before using the API for enhanced readability. // Perform a positional swipe operation to use the slider var startPoint = new Point(226, 304); var endPoint = new Point(296, 304); connection.PositionalSwipe(startPoint, endPoint); Log("Performed Swipe action.");To get the screen position, go to the active connection in MDM. Hover your cursor over the mobile screen. This will display the cursor's location in pixels at the bottom-left corner of the MDM.

# Workflow sample

To follow the steps in this Quickstart guide, or to try it out yourself, download the
                    Mobile Automation APIs Quickstart
                sample.
