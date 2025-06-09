# Creating and displaying a simple callout

This tutorial illustrates how to create and display a callout for 10 seconds, whenever a
            certain UI element appears during the automation. We will be using the Windy weather app as
            an example where a callout will be displayed next to its logo. The content inside the
            callout uses an In argument added to the Show Callout activity's
                Arguments dictionary.

# Prerequisites

This example was created using these activity packages and versions:

* UiPath.Callout.Activities 25.2.0
* UiPath.System.Activities 25.2.0
* UiPath.UIAutomation.Activities 25.2.1-preview

# Steps

1. Create the callout file:Open your Studio project, and from the New dropdown, select Form, to create a new form.The form file is used here as a callout.Name the callout as Basic callout.In the Components panel, expand the Basic section, and drag a Label/Header component into the callout file.Save the component and callout file.
2. Open the Main workflow in your project.Add a Use Application/Browser activity, and enter https://www.windy.com/ in the Browser URL field.Add a Run Local Triggers activity. This enables all trigger workflows, and allows them to run when their triggering event occurs.
3. Create a new workflow named Show Basic Callout, and add an Application Event Trigger activity. Select Indicate target on screen, and indicate the Windy logo for the automation to start monitoring.For this example, we indicate the Windy logo, that we want to monitor.From the Event type dropdown list, select Appeared.Add a activity.This activity allows you to select a uiform file, that you can display to a certain UI element, as well as pass data to the uiform file, using an Arguments dictionary.From the Select Form dropdown list, select the callout file you previously created.For this example, we selected Basic callout.For the UI Element field, enter the UI element indicated for the Application Event Trigger activity, which is the Windy logo, to which we want to bind the callout. To access that target element, use the TriggerEventArgs.TargetElement expression. TriggerEventArgs is an argument here, that is automatically generated when adding a trigger activity into your workflow. In this case, the Application Event Trigger activity generates the argument. Open the Arguments dictionary, and in the Value field of the generated key, enter the text that you want to display. For this example, we show the following text: "Welcome to Windy.com!<br>(this callout will close in 10 seconds)".Add a Delay activity, and set it to 10 seconds. Add a Close Form activity, to close the callout after 10 seconds. From the Select Form dropdown list, select the callout file you previously created (ex: Basic callout).Add a Stop Local Triggers activity to stop the execution of all trigger workflows. This activity is especially important if your project consists solely of trigger workflows. Without incorporating this activity, the triggers will persistently run in a continuous loop without stopping.

# Result

The automation opens the Windy website and triggers the Show basic callout
                workflow once the logo appears. This workflow displays the callout for 10 seconds,
                and then closes it. The following animated image demonstrates this scenario at
                runtime:

![displaying_a_simple_callout_for_10_seconds=GUID-913FE2B0-60D6-46D1-952D-EAE4989552EF=1=en=Default](/images/displaying_a_simple_callout_for_10_seconds=GUID-913FE2B0-60D6-46D1-952D-EAE4989552EF=1=en=Default.gif)

# Workflow example

To check how the steps in this tutorial are implemented, download the following
                sample project: Display Callout for Windy.
