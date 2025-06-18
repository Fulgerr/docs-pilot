# Overview

Trigger-based attended automations can involve the following:

* Forms – created using the Form Builder and  handled with the Form.Activities package.
* Callouts – created using the Form Builder and displayed with the Callout.Activities package.
* Triggers – using the System.Activities and UIAutomation.Activities packages.
* Global variables – created from the Data
                    Manager .

Forms and callouts represent a core capability of attended automation. Running them using triggers allows you to build complex scenarios. These scenarios involve multiple events happening at the same time. Moreover, the possibility of triggering actions based on the values of global variables helps you to cover even more attended scenarios.

The diagram below shows a process built using forms, form event triggers, and application event triggers. You can build similar processes based on user event triggers and callouts, as well.

![trigger-based-attended-automation-diagram=GUID-34E1674E-4989-47BB-9CEF-74F5CB94780B=1=en=Default](/images/trigger-based-attended-automation-diagram=GUID-34E1674E-4989-47BB-9CEF-74F5CB94780B=1=en=Default.png)

# Prerequisites

To design and run trigger-based attended automations:

* Install the following activity packages:Form.Activities version 23.4System.Activities 23.4UIAutomation.Activities 23.4Callout.Activities 23.4
* If you encounter the following error when trying to create a Form file: Couldn't find a compatible Webview2 Runtime installation to host WebViews, install Microsoft Edge WebView2.

## Forms

The purpose of forms in attended automation is to collect and process user or application
            input. With the present form capabilities, you can:

* Create forms outside activities,
                using a Form ( uiform file) inside your project. You can later build or
                edit them independently from any activity that uses the forms. This allows you to
                separate the process of building forms and then using them in the same
                automation.
* Create forms using custom HTML files. You can work with HTML forms similarly to how
                you do with uiform files.
* Display multiple forms at the same
                time, using the Show Form activity. Add multiple Show
                    Form activities and provide a unique name in the Instance Name field
                for each of them. The Instance Name property is available for most activities
                in the Form.Activities package, and it can be used to: Show or perform actions on multiple instances of the same form, by providing
                        unique Instance Names for each form that you show.Show or perform actions on all instances, by leaving the Instance
                            Name field empty.
* Set a trigger to start based on form
                events. These events can represent a form that closes or a certain form component
                that changes. You can achieve this using the Form Event Trigger activity.
* Choose to only display a form or display it while the rest of the workflow is
                running. You can do this by enabling or disabling the Continue Workflow
                    Execution property.
* Edit and fetch form values at
                runtime, using the Set Form Values and Get Form Values activities.
* Change the form properties at
                runtime, using the Change Form Properties activity.
* Inject custom JavaScript into the
                form, using the Run Form Script activity.


## Callouts

The role of callouts in attended automation is to direct the user to a specific UI element
      inside an application, website, product, or even a form. You can also use callouts to create
      custom validations for apps, pre-populate fields and trigger multiple automations based on
      user input.

With callout capabilities, you can:

* Create a callout using a Form ( uiform ) file and design it using the Form Builder .
* Indicate the UI element next to where you
        want the callout to display using the Show Callout activity.
* Pass values to the elements inside a callout.

A callout is a form bound to an UI element and displayed next to it,
      using the Show Callout activity.

Although there is a Callout.Activities package dedicated to callouts, it is also
      possible to handle callouts using the Form.Activities package, since callouts are
        uiform files just like regular forms. This means that you can work with callouts in
      the same way that you would work with a regular form if you are using the
        Form.Activities package.


## Triggers

The purpose of triggers in attended automation is:To start workflows based on
                    application or user events. Additionally, you can specify how to execute actions
                    when a trigger is fired, through the Scheduling mode:  To trigger workflows based on application or user events use the following
                        activities:ActivityDescriptionForm Event
                                        TriggerTriggers workflows based on an event happening inside a
                                        form.Application Event
                                            TriggerSets up a trigger based on a native event of any type of
                                        element (top-level window or any other indicated UI
                                        element).Repeat
                                        TriggerThis activity allows you to configure a TimeSpan
                                        as InArgument. When the timespan expires, the trigger
                                        executes and can be repeated based on the settings.Keypress Event
                                            TriggerSets up a key pressed event trigger on the indicated UI
                                        element.Click Event
                                            TriggerSets up a click event trigger on the indicated UI
                                        element.Hotkey
                                        TriggerMonitors a specified system-wide key event. Mouse
                                            Trigger*Monitors a specified mouse-key combination system-wide
                                        event. Click Image
                                            Trigger*Monitors the Image defined by the target UI element for
                                        mouse input. System
                                            Trigger*Monitors a specified system-wide key and/or mouse event.
                                    SAP Session Attributes
                                            Changed Trigger*Monitors changes in specified SAP session attributes.
                                    * - Can be used both on its own and inside a Trigger Scope activity.To automate multiple attended
                    scenarios that can happen once, in sequence, or at the same time. You can
                    achieve this using the following activities:ActivityDescriptionRun Local
                                        TriggersInitialises and starts all local triggers that listen for
                                        events on the user’s machine.Stop Local
                                            TriggersTerminates the execution of local triggers. When
                                        executed, it cancels all ongoing actions, including
                                        workflows triggered by events. When Stop Local
                                            Triggers executes, ongoing event-triggered workflows
                                        are canceled, but the activities in the main workflow
                                        continue as usual.Disable Local
                                            TriggerDisables one ore more active local triggers that were
                                        previously started with the Run Local Triggers 
                                        activity.Enable Local
                                            TriggerEnables one or more active local triggers that were
                                        previously started with the Run Local Triggers
                                        activity.To start workflows based on the
                    behavior of global variables, that you create in the Data Manager. You
                    can achieve this using the following activities:ActivityDescriptionGlobal Variable Changed
                                            TriggerPushes a notification to all subscribers when the value
                                        of a global variable changes.Notify Global Variable
                                            Changed Trigger that starts when the value of a global variable
                                        changes.

# Run Local Triggers

The Run Local Triggers activity enables you to trigger multiple events
                simultaneously. In the backend, it generates a separate read-only workflow called
                    Triggereventargs at runtime or during debugging. This workflow
                contains multiple Trigger scope activities that execute all triggers in
                parallel within your project.

When you run the project for the first time, each trigger workflow captures the
                    Triggereventargs workflow as an argument in the
                    Arguments panel. Each trigger workflow has its own
                    Triggereventargs argument, which holds information about
                itself. As you execute the project, the Triggereventargs arguments
                update with the latest run information.

The Triggereventargs argument mainly provides the following
                information specific to each trigger workflow:Trigger typeTrigger nameTarget element that fired the
                        triggerForm components (in the case
                        of Form Trigger Activity)Form instance name (in the
                        case of Form Trigger Activity)

To access the information from the Triggereventargs argument, you
                can apply various methods based on the trigger type. For user event triggers, the
                following methods are available:TargetElement - get
                        information about the monitored target elementAttributes -
                                Obtain the attributes of the monitored target elementDisplayDpiScaleFactor - Determine the size of the target
                                element in pixelsImageBase64 -
                                Convert the image of the target element to a Base64 imageSelector -
                                Retrieve information about the selector used on the target
                                elementTrigger typeFor form triggers, you can use the following methods:FormSourceId - Access
                        the ID of the form where the trigger firedInstance Name -
                        Retrieve the instance name of the form where the trigger fired

# Trigger behavior

* Trigger workflows are workflows that start with a trigger. These can be debugged in the context of the entire project, or independently.
* If you think that a high number of triggers impact performance, you can enable or disable specific triggers, using the Enable Local Trigger and Disable Local Trigger activities.
* The Enable Local Trigger and Disable Local Trigger activities are useful in scenarios where you have multiple workflows monitoring user events that are determined by the phase in the automation that the user has reached. For instance, you can use the Enable Local Trigger activity to activate a trigger once the user has entered their username in a form. On the other hand, the Disable Local Trigger activity can be utilized to deactivate a trigger that was scheduled to execute sequentially once the user has reached a specific step during a guided product tour, for example.


## Global variables

The purpose of global variables in attended automation is to record information about the user or
            application events, and then store it inside a variable that you can later use as input
            or trigger for other activities. This allows you to easily share data between multiple
            workflows. With global variable capabilities, you can:

* Notify when the value of a global variable changes, using the Notify Global Variable Changed activity
* Trigger a workflow or activity when the value of a global variable changes, using the Global Variable Changed Trigger activity.

