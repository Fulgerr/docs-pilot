# Example of automating a Citrix App

To showcase how automating Citrix technologies works, we created a simple automation process which opens the Calculator, interacts with UI elements to perform a simple operation, extracts the result, and then displays it in a message box.

Open the Calculator as explained on this page.From the Recording menu, select Native Citrix. The Native Citrix Recording wizard is displayed.Use the Click function on the necessary buttons on the Calculator to perform a simple operation. In this case, we click on 5, +, 9, and =.Select Copy Text from the Recording Wizard, and click on the Calculator results field.Click Save & Exit in the Recording Wizard. This adds a Native Citrix container to our automation project, which holds the necessary Click activities, as well as the Get Text activity to retrieve the result.Add a Message Box activity below the Native Citrix container.In the Text field of the Message Box activity, write something relevant and include the variable delivered by the Get Text activity. In this case, we can write ”The number is ” + TextResult.ToString. Make sure the TextResult variable is in the Sequence scope.Add a Click activity. Choose to Indicate on screen the location of the Close button on the Calculator.Press F5 to run the automation. Notice how the Calculator is open, a simple calculus is performed through UI interaction, and the result is copied and displayed in a message box.

## Opening Citrix Apps in Studio

The easiest way to open a Citrix App from an automation process is to create a shortcut to it on the desktop, and then click on it. This is done as follows:

Create a shortcut for the target Citrix App on the desktop.
Add a Click activity. Select Indicate on screen and choose the corresponding shortcut.From the  Properties panel of the Click activity, check the SimulateClick option.Press F5 to execute the process and notice that the Citrix App is launched.

