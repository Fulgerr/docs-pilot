# On Image Vanish

UiPath.Core.Activities.OnImageVanish

A container that waits for an image to disappear and enables you to execute other activities.

# Properties

Input

* Image.Image - An existing image to be searched for. This field supports only Image variables.
* Image.Accuracy - A unit of measurement from 0 to 1 which expresses the minimum similarity between the image you are searching for and the one to be found. Useful in situations when the image to be found is slightly different than the one you are searching for. The default value is 0.8.
* Image.Profile - Enables you to change the image detection algorithm that you want to use. Basic is the classical algorithm, which has average speed and resource cost. Enhanced can offer more precise results, at the expense of more resources. By default, this field is set to Basic.
* Target.Selector - Text property used to find a particular UI element when the activity is executed. It is actually a XML fragment specifying attributes of the GUI element you are looking for and of some of its parents.
* Target.TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before the SelectorNotFoundException error is thrown. The default value is 30000 milliseconds (30 seconds).
* Target.WaitForReady - Before performing the actions, wait for the target to become ready. The following options are available:None - Does not wait for anything except the target UI element to exist before executing the action. For example, you can use this option if you want to retrieve just text from a web page or click a particular button, without having to wait for all UI elements to load. Note that this may have unwanted consequences if the button relies on elements which are not yet loaded, such as scripts. Interactive/Complete - Waits all of the UI elements in the target app to exist before actually executing the action.To assess if an application is in the Interactive or Complete state, the following tags are verified:Desktop applications - A wm_null message is sent to check the existence of the <wnd>, <ctrl>, <java>, or <uia> tags. If they exist, the activity is executed. Web applications:Internet Explorer - The <webctrl> tag is used to check if the Ready state of the HTML document is set to Complete. Additionally, the Busy state has to be set to "False". Others - The <webctrl> tag is used to check if the Ready state of the HTML document is Complete. SAP applications - First the presence of the <wnd> tag verified, after which a SAP specific API is used to detect if the session is busy or not.
* Target.Element - Use the UiElement variable returned by another activity. This property cannot be used alongside the Selector property. This field supports only UiElement variables.
* Target.ClippingRegion - Defines the clipping rectangle, in pixels, relative to the UiElement, in the following directions: left, top, right, bottom. It supports both positive and negative numbers.

Common

* DisplayName - The display name of the activity.
* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

Options

* RepeatForever - Specifies if the activity continuously monitors the events. This field supports only boolean values (True, False). True - the block executes every time the specified image appears; this is the default value. False - the activity executes only one time.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

# Example of using the On Image Vanish activity

The On Image Vanish activity checks when a specific image from a website disappears. This activity is used for verifying the flow from a website and can be used as a trigger for an automated process.

To exemplify how to use this activity, we have created an example that performs a speed test on a selected website and assigns it a specific performance grade. The automated process opens a browser and verifies when the image vanishes. This indicates that the test has started. A second On Image Vanish activity checks the completion of the test.

This is how the automation process can be built:

1. Open Studio and create a new Process.
2. Drag a Sequence activity to the Workflow Designer.Create the following variable:Variable NameVariable TypeDefault ValuewebsiteString
3. Drag an Input Dialog activity inside the Sequence container.In the Properties panel, add the expression "Insert Website URL" in the Label field.Add the expression "Website" in the Title field.Add the variable website in the Result field.
4. Place an Open Browser activity below the Input Dialog activity.Add the expression "https://tools.pingdom.com" in the Url field.In the Properties field, select the IE option from the BrowserType drop-down list.Select the checkbox for the NewSession option. This starts a new session of the selected browser.
5. Drag a Type Into activity inside the Do container of the Open Browser activity.In the Properties panel, select the option Target from the Target drop-down list.Add the expression "<webctrl id='urlInput' tag='INPUT' />" in the Selector field.Select the INTERACTIVE option from the WaitForReady drop-down list.Add the variable website in the Text field.Select the checkbox for the Activate option. This brings the browser to the foreground and activates it before the text is written.
6. Place a Click activity below the Type Into activity.In the Properties panel, add the value 1000 in the DelayAfter field.Select the CLICK_SINGLE option from the ClickType drop-down list.Select the BTN_LEFT option from the MouseButton drop-down list.Select the option Target from the Target drop-down list.Add the expression "<webctrl tag='INPUT' type='submit' />" in the Selector field.Select the INTERACTIVE option from the WaitForReady drop-down list.Select the option CursorPosition from the CursorPosition drop-down list.Select the option Center from the Position drop-down list.Select the option None from the KeyModifiers drop-down list.
7. Drag a Delay activity below the Click activity.In the Properties panel, add the value 00:00:02 in the Duration field. This allows a two seconds delay between activities.
8. Place an On Image Vanish activity under the Delay activity.In the Properties field, select the ImageTarget option from the Image drop-down list.Add the value 0.8 in the Accuracy field.Select the Basic option from the Profile drop-down list.Select the option Target from the Target drop-down list.Select the INTERACTIVE option from the WaitForReady drop-down list.Add the value False in the RepeatForever field.
9. Drag a new On Image Vanish activity inside the Do container of the previous On Image Vanish activity.In the Properties field, select the ImageTarget option from the Image drop-down list.Add the value 0.8 in the Accuracy field.Select the Basic option from the Profile drop-down list.Select the option Target from the Target drop-down list.Add the expression "<webctrl id='speedometer' tag='svg' />" in the Selector field.Select the INTERACTIVE option from the WaitForReady drop-down list.Add the value False in the RepeatForever field.Select the Do container of the last On Image Vanish activity and create the following variable:Variable NameVariable TypeDefault ValuegradeString
10. Drag a Get Text activity inside the Do container.In the Properties panel, select the option Target from the Target drop-down list. Add the expression "<html title='Pingdom Tools' /><webctrl parentname='Performance grade' tag='app-grade-badge' />" in the Selector field. This retrieves the performance grade from the website and stores its value in the variable grade. Select the INTERACTIVE option from the WaitForReady drop-down list. Add the variable grade in the Value field.
11. Place a Message Box activity below the Get Text activity.In the Properties panel, select the Ok option from the Buttons drop-down list. Add the expression "Performance Grade is " + grade in the Text field. This displays the grade received by the website you provided. Select the checkbox for the TopMost option. This brings the message box to the foreground.
12. Run the process. The robot asks you to input a website address, opens a new browser, accesses the www.pingdom.com website, verifies the performance of the address you added and returns a message box with the performance grade.

Download example
