# Using mobile automation for mobile banking application

In this tutorial, we explore how to use the Mobile Automation package to automate tasks
            within a mobile banking application. The tutorial uses the mobile banking simulator provided by Bank of
            America, and a Google Pixel Emulator from Sauce Labs. We will specifically focus on
            automating and testing the following actions:

1. Logging into the app.
2. Implementing a debit card lock.
3. Viewing a claim and capturing a screenshot.

The tutorial provides instructions on how to use both activities and APIs for automating
            these scenarios.

# Prerequisites

To use the desired mobile device and application, we have to create them first in
                Mobile Device Manager (MDM), as follows:Add a device from Sauce Labs
                        into MDM.For more information about adding devices, visit Adding Sauce Labs
                        device.Add the Bank of America mobile banking
                            simulator into MDM.For more information about adding
                            applications, visit Adding applications.

# Sample project

To follow the steps and try out the tutorial yourself, check the following sample
                project: Mobile Banking Simulator.

### Using activities

In this example we use Object Repository elements as input UI elements to activities. To
            create UI elements for mobile, establish a connection in Mobile Device Manager (MDM)
            between the target device and application. Then, directly in the Object Repository
            panel, create each element and use Indicate Element to indicate the specific UI
            element on the MDM device.

To easily follow the tutorial, check the following list for the Object Repository
            structure:

* BankOfAmerica application, MobileScreen menu backFromClaimDetailsbackFromClaimStatusBackToMenufirstClaimSeeDetailsLockLockCardLoginManageDebitCreditMenuPasswordswipeMenuUserIdviewmyclaims

Alternatively, you can create a similar workflow
            using recorded actions. This process involves creating a connection between your device
            and the application via MDM, performing a series of actions on this connection, and then
            importing these steps into a sequence. For more information, visit Create workflow using recorder actions.

# Steps

1. Establish a connection between the device and application:Add a Mobile Device Connection activity.Use Select Connection Details to connect the previously created mobile device and application.
2. Login to the mobile application:Add a Tap activity to select the User ID field, so you can then enter a username.Add a Set Text activity to input the username inside the User ID field.Add a Tap activity to select the Password field, so you can then enter the password.Add a Set Text activity to input the corresponding password.Use a Tap activity to select the Login button.The first activities as part of logging into the applicationThe first activities as part of logging into the application
3. Lock a debit or credit card:Add a Tap activity to navigate to the mobile banking app menu.Add a Swipe activity to swipe down in the menu.The goal is to swipe until you find the Manage Debit/Credit section.Add a Tap activity to select the Manage Debit/Credit section.Add a Tap activity to select the Lock icon for the first card that is displayed.Add a Swipe activity to swipe down in the lock card notice.This action allows you to confirm the action by selecting Lock Card.Add a Tap activity to select Lock Card.Activities used for locking the debit cardActivities used for locking the debit card
4. Take a screenshot of a claim:Add a Tap activity to select the back button, and return to the main menu.Add a Swipe activity to swipe down in the main menu, until the View My Claims section appears.Use a Tap activity to select the View My Claims section.Add a Tap activity to select See details for the first claim.Use the TakeScreenshot API to take a screenshot of the first claim details.Activities used to take a screenshot of a claimActivities used to take a screenshot of a claim
5. Finally, after taking the screenshot, we go back to the main menu of the app, by using the Tap activity to select the Back UI element twice.


### Using coded automation

# Prerequisites

To automate a mobile application using APIs, record the application mobile elements
                within the project's Object Repository. For this example, we created a
                    BankOfAmerica application with a general MobileScreen, containing
                all the UI elements that we use to automate. To create UI elements for mobile,
                establish a connection in Mobile Device Manager (MDM) between the target device and
                application. Then, directly in the Object Repository panel, create each element and
                use Indicate Element to indicate the specific UI element on the MDM
                device.

Check the following list for the structure of the Object Repository:

* BankOfAmerica application, MobileScreen menubackFromClaimDetailsbackFromClaimStatusBackToMenufirstClaimSeeDetailsLockLockCardLoginManageDebitCreditMenuPasswordswipeMenuUserIdviewmyclaims

# Steps

1. Establish a connection between the device and application:Create a variable of type Connection, using the API, with the second overload version.For this overload, enter the device name and application name as Strings, to establish the connection.[TestCase] public void Execute() { Connection connection = mobile.Connect( "Android mobile device", "BankOfAmericaSimulator"); Log("Connection established");
2. Optionally, for debugging purposes, you can add a Log message after the connection.
3. Log in to the mobile application:Call the Tap API to click the User ID field.This action allows you to enter the username.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.UserId);Use the SetText API to enter a username in the User ID field.connection.SetText(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.UserId, "john.doe@uipath.com", MobileOptions.SetText().WithSendNewline(false));Call the Tap API to select the Password field so you can enter the password.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.Password);Use the Set Text API to enter a password in the Password field.The WithSendNewLine(false) method ensures that the OK keyboard element is not pressed on the mobile device after sending the text. For more information about the available options of the Set Text API, visit .connection.SetText(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.Password, "abcde", MobileOptions.SetText().WithSendNewline(false));Employ the Tap API to select Login.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.Login);
4. Lock a debit or credit card:Navigate to the menu of the mobile banking app, using the Tap API:connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.Menu);Swipe down in the menu, using the Swipe API.The goal is to swipe until you find the Manage Debit/Credit section.connection.Swipe(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.swipeMenu, ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.ManageDebitCredit, SwipeDirection.Down, 4);Select the Manage Debit/Credit section using the Tap API.The WithTimeout() method enables the API to pause for a predetermined number of seconds. This pause lasts until the target UI element appears, or an error is thrown.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.ManageDebitCredit, TapTypeEnum.Single, MobileOptions.Tap().WithTimeout(120));For the first card that is displayed, select the Lock icon using the Tap API. connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.Lock);Swipe down in the lock card notice, using the Directional Swipe API, so we can confirm the action by selecting Lock Card.connection.DirectionalSwipe(SwipeDirection.Down);Select Lock Card using the Tap API.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.LockCard);
5. Take a screenshot of a claim.Go back to the main menu, using the Tap API and the back icon.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.BackToMenu);Swipe down in the main menu, until the View My Claims section appears.For this step, we use the Swipe API, this time employing the sixth overload. This overload requires an IElementDescriptor for the swipe container, and a SelectorTarget for the target UI element.We first create a SelectorTarget for the View My Claims section, and then employ the Swipe API.Open MDM and create the connection between the mobile device and application.Go to the Object Repository and create a new element for the mobile screen.Select Indicate element.From the selection options menu, copy the web control identified by the selectors.For this mobile banking app, you have to ensure that WebView selectors as native selectors is selected as a selection option.Return to the code editor, and create a variable of type SelectorTarget. Use the MobileTarget.FromSelector method which requires as argument the web control you previously copied.SelectorTarget viewMyClaimsTarget = MobileTarget.FromSelector("<mbl android:className='android.widget.TextView' text='View My Claims' />");Use the Swipe API, with the SelectorTarget variable, to finish the swipe down action.connection.Swipe(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.swipeMenu, viewMyClaimsTarget, SwipeDirection.Down, 20);Tap the View My Claims section.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.viewmyclaims);Tap See details for the first claim.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.firstClaimSeeDetails);Use the TakeScreenshot API to take a screenshot of the first claim details.connection.TakeScreenshot();
6. Finally, after taking the screenshot, we go back to the main menu of the app, by tapping the Back UI element twice.connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.backFromClaimDetails); connection.Tap(ObjectRepository.Descriptors.BankOfAmerica.MobileScreen.backFromClaimStatus);

