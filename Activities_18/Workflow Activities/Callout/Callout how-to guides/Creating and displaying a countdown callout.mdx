# Creating and displaying a countdown callout

This tutorial illustrates how to create and display a callout for 10 seconds, while
            showing the countdown for it, whenever a certain UI element appears during the
            automation. We will be using the Windy weather app as an example where a callout will be
            displayed next to its logo.

# Prerequisites

This example was created using these activity packages and versions:

* UiPath.Callout.Activities 25.2.0
* UiPath.System.Activities 25.2.0
* UiPath.UIAutomation.Activities 25.2.1-preview

# Steps

1. Create the callout file:Open your Studio project, and from the New dropdown, select Form, to create a new form.The form file is used here as a callout.Name the callout as Basic callout.In the Components panel, expand the Basic section, and drag three Label/Header components into the callout file.For the first component, enter a default text, such as: Welcome to Windy.com!For the second component, enter a default text, such as: This pop-up will close in 10 seconds.For the third component, leave it unchanged. This is the countdown, which will be changed at runtime.Save the components and callout file.
2. Open the Main workflow in your project.Add a Use Application/Browser activity, and enter "https://www.windy.com/" in the Browser URL field.Add a Run Local Triggers activity. This enables all trigger workflows, and allows them to run when their triggering event occurs.
3. Open the Main workflow in your project.Add a Use Application/Browser activity, and enter "https://www.windy.com/" in the Browser URL field.Add a Run Local Triggers activity. This enables all trigger workflows, and allows them to run when their triggering event occurs.
4. Create a new workflow named Show Basic Callout, and add an Application Event Trigger activity. Select Indicate target on screen, and indicate the Windy logo for the automation to start monitoring.For this example, we indicate the Windy logo, that we want to monitor.From the Event type dropdown list, select Appeared.Add a activity.This activity allows you to select a uiform file, that you can display to a certain UI element, as well as pass data to the uiform file, using an Arguments dictionary.From the Select Form dropdown list, select the callout file you previously created.For this example, we selected Basic callout.For the UI Element field, enter the UI element indicated for the Application Event Trigger activity, which is the Windy logo, to which we want to bind the callout. To access that target element, use the TriggerEventArgs.TargetElement expression. TriggerEventArgs is an argument here, that is automatically generated when adding a trigger activity into your workflow. In this case, the Application Event Trigger activity generates the argument. Navigate to the Data Manager, and create a global variable, named secondsLeft. This variable is used for tracking the remaining time for displaying the callout.Add an Assign activity to allocate the display duration for your callout. In the Save to field, input the newly created global variable (secondsLeft), and in the Value to save field, input 10.
5. Create another trigger workflow, named Update counter, which triggers the update of the remaining seconds inside the callout.Add a Global Variable Changed Trigger activity, to execute this workflow whenever the secondsLeft global variable changes.From the Select Global Variable dropdown list, select secondsLeft, and set the Scheduling Mode to Sequential.Add a Do While activity to update the number of seconds remaining for the callout display until the secondsLeft variable becomes 0.In the body of the Do While activity, add a Set Form Values activity. From the Select Form dropdown list, select the Basic Callout file. Open the Arguments dictionary, and for the Value field of the secondsValue key, input the following expression: "secondsLeft.ToString+" second(s) left."Add a Delay activity and set it to one second.Add an Assign activity to subtract one second from the secondsLeft global variable.Set the Condition of the Do While to secondsLeft <> 0.Add a Close Form activity, and select the Basic Callout file.Add a Stop Local Triggers activity to stop the execution of all trigger workflows. This activity is especially important if your project consists solely of trigger workflows. Without incorporating this activity, the triggers will persistently run in a continuous loop without stopping.

# Result

The automation opens the Windy website and triggers the Show basic callout
                workflow once the logo appears. When the global variable is set to 10, the Update
                    counter workflow starts running, subtracting a second from the global
                variable and displaying it in the callout for a second. This continues until no
                seconds remain. This runtime process is visualized in the following animated
                image:

![displaying_a_simple_callout_for_10_seconds_with_timer=GUID-2B55A1A0-1750-405F-8ED0-52A12D9FE024=1=en=Default](/images/displaying_a_simple_callout_for_10_seconds_with_timer=GUID-2B55A1A0-1750-405F-8ED0-52A12D9FE024=1=en=Default.gif)

# Workflow example

To check how the steps in this tutorial are implemented, download the following
                sample project: Display Callout Countdown for Windy.
