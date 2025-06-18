# Creating and displaying an AI summary callout

This tutorial guides you in creating a callout that shows an AI summary of user-selected
            information within a web application. Check the following sequence of actions presented
            in this tutorial:Begin by launching the Windy.com
                    website.Once the Windy logo appears, we display a callout with user instructions.When the website search bar
                    appears, another callout prompts you to search for their desired location to
                    check the weather.After performing the search request, the displayed weather results from the
                    website serve as the content for generating an AI summary.This summary
                        suggests a day with optimal weather for walking.The callout displays for 30
                    seconds, after which the callout is closed and all triggers are
                    deactivated.

# Prerequisites

This example was created using these activity packages and versions:

* UiPath.Callout.Activities 25.2.0
* UiPath.IntegrationService.Activities 25.2.1
* UiPath.System.Activities 25.2.1
* UiPath.UIAutomationActivities 25.2.1-preview

# Steps

Open your Studio project, and go to the Main workflow.Add a Use Application/Browser
                                activity, and enter https://www.windy.com/ in the
                                    Browser URL field.Add a Run Local Triggers activity.This enables
                                    all trigger workflows, and allows them to run when their
                                    triggering event occurs.Create an
                            uiform file for the initial callout, which prompts you
                        to follow further instructions as soon as the Windy logo appears.In your Studio
                                project, from the New dropdown menu, select Form to
                                create a new form.The form file is used here as a
                                callout.Name the callout as
                                    Basic callout.In the
                                    Components panel, expand the Basic section, and
                                drag three Label/Header components into the callout file.
                                Edit the components as follows:For the first
                                        component, enter the following text in the Content
                                        field: "Welcome to Windy.com!".For the
                                        second component, enter the following message in the
                                            Content field: "Please follow the instruction on
                                        the screen to learn which day will be best for a nice
                                        walk."For the third
                                        component, go to the Field Key tab, and change the
                                            Property Name to
                                            aiSummary.Leave this component's
                                                Content field empty, as it will be
                                            dynamically populated with the AI-generated summary at
                                            runtime.Save the callout
                                file.Create a new workflow named
                            Show Basic Callout, and add an Application Event Trigger
                            activity.This workflow shows the callout that welcomes you to
                            Windy.com, and the callout where we will display the AI summary.Select Indicate
                                    target on screen, and indicate the UI element for the
                                automation to start monitoring.For this example, we indicate the
                                    Windy logo, that we want to monitor.From the Event
                                    type dropdown list, select Appeared.Add a 
                                    activity.This activity allows you to select a
                                        uiform file, that you can display to a
                                    certain UI element, as well as pass data to the
                                        uiform file, using an Arguments
                                    dictionary.From the
                                            Select Form dropdown list, select the callout
                                        file you previously created.For this example, we selected
                                                Basic callout.For the UI
                                            Element field, enter the UI element indicated for
                                        the Application Event Trigger activity, which is the
                                        Windy logo, to which we want to bind the callout. To
                                            access that target element, use the
                                                TriggerEventArgs.TargetElement
                                            expression. TriggerEventArgs is an
                                            argument here, that is automatically generated when
                                            adding a trigger activity into your workflow. In this
                                            case, the Application Event Trigger activity
                                            generates the argument. Create an
                            uiform file for the callout that appears when the
                        website's search bar becomes visible, and prompts you to search for their
                        desired location.In your Studio
                                project, from the New dropdown menu, select Form to
                                create a new form.The form file is used here as a
                                callout.Name the callout as
                                    Please search for your desired location.In the
                                    Components panel, expand the Basic section, and a
                                    Label/Header component into the callout file.Save the component
                                and the file.Create a new workflow named
                            Please search for the desired location, and add an Application
                            Event Trigger activity.This workflow shows the callout that
                            requests you to search for their location where they want to find
                            weather information.Select Indicate
                                    target on screen, and indicate the UI element for the
                                automation to start monitoring.For this example, we indicate the
                                    Windy search bar, that we want to monitor.From the Event
                                    type dropdown list, select Appeared.Add a Delay
                                activity, and set its Duration to three seconds, so you have
                                enough time to read to first read the welcoming callout, and then
                                check the one that appears next to the search bar.Add a 
                                    activity.This activity allows you to select a
                                        uiform file, that you can display to a
                                    certain UI element, as well as pass data to the
                                        uiform file, using an Arguments
                                    dictionary.From the
                                            Select Form dropdown list, select the callout
                                        file you previously created.For this example, we selected
                                                Basic callout.For the UI
                                            Element field, enter the UI element indicated for
                                        the Application Event Trigger activity, which is the
                                        Windy logo, to which we want to bind the callout. To
                                            access that target element, use the
                                                TriggerEventArgs.TargetElement
                                            expression. TriggerEventArgs is an
                                            argument here, that is automatically generated when
                                            adding a trigger activity into your workflow. In this
                                            case, the Application Event Trigger activity
                                            generates the argument. Open the
                                            Arguments dictionary, and in the Value
                                        field of the generated key, enter the text that you want to
                                        display. For this example, we show the following text:
                                            "Please search for your desired location and select it
                                            from the list".Create a new workflow named
                            Fetch and deliver AI Weather Summary.This workflow starts
                            generating an AI summary of the best day for having a walk outside,
                            based on the weather results that appear for the location you previously
                            searched.Add an Application Event Trigger activity. Select Indicate target on screen, and indicate the UI
                                        element for the automation to start monitoring.For this
                                            example, we indicate the Windy weather results, that we
                                            want to monitor.From the Event type dropdown list, select
                                            Appeared.Add a Close Form activity, to close the callout that requested
                                you to search for a desired location.From the Select
                                    Form dropdown list, select the Please search for your
                                    desired location callout. Add a Set Form Values activity, to update the original
                                    Basic Callout with information about process of
                                generating the AI summary.Add a Use
                                    Application/Browser activity to attach to the Windy browser
                                window and extract the weather information. In the Browser
                                    URL field, enter
                                https://www.windy.com.In the Do
                                block, perform the following actions:Add an Extract Table Data
                                            activity.Select Indicate target on screen and select
                                                the weather results. Create an output variable for the Extract to
                                                field. In this example, we named it
                                                  extractedWeatherDetails.Add an  activity. Enter
                                                the previously created variable
                                                  (extractedWeatherDetails), that
                                                holds the weather data, into the Data Table
                                                field. Create an output variable for the Text
                                                field. In this example, we named it
                                                  weatherData.Add a Set
                                            Form Values activity to display information that
                                        should update you about the state of the analyzing process.
                                            From
                                                the Select Form dropdown list, select the
                                                  Basic callout formIn
                                                the Arguments dictionary, enter the following
                                                value for the aiSummary argument:
                                                "...analyzing weather data...".Add a Content Generation
                                        activity to generate the AI summary.Inside the body of the activity, select Add new
                                                  connection to create a connection to UiPath
                                                GenAI Activities, which allows the activity to
                                                execute.From
                                                the Model name dropdown list, choose the
                                                desired AI model.In
                                                the Prompt field, enter the result variable
                                                from the Output Data Table activity. In this
                                                example, input weatherData.In
                                                the System prompt field, enter the
                                                instructions for the AI model to use for generating
                                                a summary based on the provided weather data. In
                                                this example, we used the following prompt: "You
                                                  will be given a set of data in the following
                                                  format: Day, hour, missingiconfortheweahter,
                                                  temperature, rain, wind, wind gusts, last one can
                                                  be ignored. Please let me know which day will have
                                                  the best weather for a nice walk. In your output,
                                                  please stick to the short recommendation and a
                                                  reason, without any details of your specific
                                                  analysis".Create an output variable for the Top generated
                                                  text field. In this example, we named it as
                                                  topGeneratedText.Add another
                                            Set Form Values activity to display the
                                        AI-generated summary.From
                                                the Select Form dropdown list, select the
                                                  Basic callout form.In
                                                the Arguments dictionary, enter the following
                                                expression, containing the output of the Content
                                                  Generation activity, and information about the
                                                callout state: "topGeneratedText +
                                                  Environment.NewLine + "This callout will close in
                                                  30 seconds.".Add a
                                            Delay activity, and set it to 30 seconds.Add a
                                            Close Form activity, and from the Select
                                            Form dropdown list, choose Basic
                                            callout.Add a Stop Local Triggers activity, to
                                        stop the execution of all trigger workflows.This activity
                                            is especially important if your project consists solely
                                            of trigger workflows. Without incorporating this
                                            activity, the triggers will persistently run in a
                                            continuous loop without stopping.

# Result

The automation opens the Windy website, and triggers the Show basic callout
                workflow once the logo appears. When the search bar is displayed, the Please
                    search for your location workflow starts running, requesting you to search
                for the desired location for which they want to find information about the weather.
                When weather results are displayed, the Fetch and deliver AI Weather Summary
                workflow starts running, retrieving the weather results, and sending them as part of
                a prompt to an AI model, that will later be displayed back into the same form. After
                the AI summary is displayed, the form is closed after 30 seconds. This description
                of the runtime process is visualized in the following animated image:Callout displaying
                        AI-generated summaryCallout displaying AI-generated summary

# Workflow example

To check how the steps in this tutorial are implemented, download the following
                sample project: Displaying AI-summary callout for
                Windy.
