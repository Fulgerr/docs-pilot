# Trigger Scope Example

To better understand the importance of the Element State Change Trigger and Element Attribute Change Trigger activities, we have created a sample automation project which monitors the URL attribute of a web browser and, when changed, moves the automation in a Picture-in-Picture session, monitoring user click actions and saving the UI element as a variable.

In this regard, we need to use the Trigger Scope activity two times: once, to
            monitor the appearance and element change of the page we navigate on, and second, to
            monitor the click actions on the page.

![e523de6-trigger_1=GUID-750AACE2-0045-43B6-B61F-53161C34451F=1=en=Default](/images/e523de6-trigger_1=GUID-750AACE2-0045-43B6-B61F-53161C34451F=1=en=Default.png)

Since the first triggers only need to be activated once, we need to set the SchedulingMode property of the Trigger Scope activity to OneTime.

First, we need to know when the web page of interest shows up on screen. In this regard, we use the Element State Change Trigger activity, with the following configuration:

The Event property set to OnAppear

The Selector configured to target the particular web page. In our case, it would look something like this:

<wnd app='chrome.exe' title='Robotic Process Automation | UiPath - Google Chrome' />

Next, we use the Element Attribute Change Trigger to know when the page is changed. We do this by monitoring the Title attribute. This means the activity properties need to be configured as follows:

The AttributeName property needs to be set to ”title” (between quotes), because this is the attribute we want to monitor.

The Selector configured, in our case, as follows:

<wnd app='chrome.exe' title='Robotic Process Automation | UiPath - Google Chrome' /> 
<wnd cls='Intermediate D3D Window' />

Optionally, we can add a Log Message activity in the Actions section to log the previously configured triggers.

As soon as these triggers are activated, automation goes into Picture-in-Picture mode. Note that the Picture-in-Picture option from the Debug tab in Studio needs to be enabled.

![2ffe8ab-trigger_2=GUID-4C97E57A-114E-490E-816E-5990AC471C5F=1=en=Default](/images/2ffe8ab-trigger_2=GUID-4C97E57A-114E-490E-816E-5990AC471C5F=1=en=Default.png)

Once these triggers are activated, we need to monitor the click actions on the page and save the target UI element as a UIElement variable. As such, we need to use a second Trigger Scope activity in a new Sequence, which only monitors and responds to click actions.

![586055b-trigger_2=GUID-D44CFEE1-A65C-4FB1-B555-8F6941B19AE0=1=en=Default](/images/586055b-trigger_2=GUID-D44CFEE1-A65C-4FB1-B555-8F6941B19AE0=1=en=Default.png)

In the Triggers section of the Trigger Scope, we need to add a Click Trigger activity to monitor the corresponding action, with the following properties:

The MouseButton property set to MouseButton.BTN_LEFT. This monitors the left mouse button clicks.

The TriggerMode property set to TriggerDown. This means the trigger is activated when the left mouse button is pressed (not released).

Lastly, we need to save the UI element on which the click action is performed. In this regard, we add the Get Source Element activity inside the Actions section of the Trigger Scope, with the following properties configured:

The EventInfo property set to args.EventInfo. This means that the trigger arguments are used.

The UiElement property set to an alphanumerical value (not between quotes). This saves the element on which the click action is performed as a UiElement variable.

Run the workflow. The automation tracks the URL attribute of a web browser and, when changed, moves the automation in a Picture-in-Picture session, watching user click actions and saving the UI element as a variable.

Download example
