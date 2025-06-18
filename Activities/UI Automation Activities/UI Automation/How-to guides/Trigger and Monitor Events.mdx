# Trigger and Monitor Events

The example below explains how to monitor user events and trigger different actions by
            using different hotkeys for opening certain applications. For example, the user can use
            a hotkey combination for opening the Calculator app from Windows.

It presents activities such as Hotkey Trigger, , or . You can find these
            activities in the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process named by default Main .
2. Drag a Sequence container in
                the Workflow Designer .
3. Create the following variable: Variable NameVariable TypeDefault ValueContinueMonitorBoolean
4. Drag a Log Message activity
                    inside the Sequence container. In the Properties
                        panel, select the Level option from the Message drop-down
                        list.Add the expression
                            "Start monitoring..." in the Message field.
5. Add an Assign activity
                    under the Log Message activity. In the Properties
                        panel, add the variable ContinueMonitor in the To
                        field.Add the condition
                            True in the Value field.
6. Place a Monitor Events
                    activity below the Assign activity. In the Properties
                        panel, add the value ContinueMonitor in the
                            RepeatForever field.
7. Drag a Hotkey Trigger
                    activity inside the Monitor Events activity. This activity opens the
                        Calculator app from Windows. Select the checkboxes for the
                            Alt and Shift options.In the Key
                        field, type the letter c.In the Properties
                        panel, select the option EVENT_BLOCK from the EventMode
                        drop-down list.
8. Drag another Hotkey Trigger
                    activity and place it next to the previous Hotkey Trigger activity. This
                    activity opens a new browser tab and searches on Google the text previously
                    selected by the user. Select the checkboxes for the
                            Alt and Shift options.In the Key field, type
                        the letter g.In the Properties
                        panel, select the option EVENT_BLOCK from the EventMode
                        drop-down list.
9. Drag another Hotkey Trigger
                    activity and place it next to the previous Hotkey Trigger activity. This
                    activity stops monitoring the events. Select the check boxes for
                        the Alt and Shift options.In the Key field, type
                        the letter s.In the Properties
                        panel, select the option EVENT_BLOCK from the EventMode
                        drop-down list.
10. Add a new Sequence
                    container and place it below the Hotkey Trigger activity. In the Properties
                        panel, add the name Event Handler in the DisplayName
                        field.Create the following
                            variable:Variable NameVariable TypeDefault ValueTriggerHotkeyUiPath.Core.EventInfoContinueMonitorBoolean
11. Drag a Log Message activity
                    inside the Event Handler. In the Properties
                        panel, select the Info option from the Level drop-down
                        list.Add the expression
                            "Event triggered" in the Message field.
12. Drag a Get Event Info
                    activity below the Log Message activity. In the Properties
                        panel, add the variable TriggerHotkey in the Result
                        field.Select the
                            UiPath.Core.EventInfo option from the TypeArgument
                        drop-down list.
13. Place a Switch activity
                    below the Get Event Info activity. All Hotkey Triggers are
                    described inside this activity and treated as cases. In the Properties
                        panel, add the value
                            TriggerHotkey.KeyEventInfo.KeyName.ToLower in the
                            Expression field.Select the String
                        option from the TypeArgument drop-down list.
14. Click the Add new case
                    button from the Switch activity. Add the value
                            c in the Case value field.
15. Place an Open Application
                    activity and place it inside the Case c container. This represents the
                    first Hotkey Trigger case that opens the Calculator app. In the Properties
                        panel, add the expression "calc.exe" in the
                            Arguments field.Add the expression
                            "<wnd app='applicationframehost.exe' title='Calculator'
                            />" in the Selector field.
16. Click the Add new case
                    button from the Switch activity. Add the value
                            g in the Case value field.
17. Drag a Sequence container
                    and place it inside the Case g container. This represents the second
                        Hotkey Trigger case that initiates a Google search for the previously
                    selected text. In the Properties
                        panel, add the name Google selected text in the
                            DisplayName field.Create the following
                            variable:Variable NameVariable TypeDefault ValueTextToSearchGenericValue
18. Drag a Delay activity and
                    place it inside the Google selected text sequence. In the Properties
                        panel, add the value 00:00:00.5000000 in the
                            Duration field.
19. Add a Copy Selected Text
                    activity below the Delay activity. In the Properties
                        panel, add the value True in the ContinueOnError
                        field. Add the variable
                            TextToSearch in the Result field. Add the value
                            2000 in the Timeout (milliseconds) field.
20. Drag an If activity under
                    the Copy Selected Text activity. In the Properties
                        panel, add the expression TextToSearch IsNot Nothing in the
                            Condition field.
21. Place an Open Browser
                    activity inside the Then box. In the Properties
                        panel, select the IE option from the BrowserType drop-down
                        list. Add the expression
                            "www.google.com" in the Url field. Select the checkbox for the
                            NewSession option. This starts a new session in the selected
                        browser.
22. Place a Type Into activity
                    inside the Do sequence. In the Properties
                        panel, select the Target option from the Target drop-down
                        list. Add the expression
                            "<webctrl tag='INPUT' aaname='Search' />" in the
                            Selector field. Select the INTERACTIVE
                        option from the WaitForReady drop-down list. Add the variable
                            TextToSearch in the Text field. Select the checkbox for the
                            Activate option. This option brings the UI element to the
                        foreground and activates it before the text is written. Select the checkbox for the
                            SimulateType option. This option simulates the type using the
                        technology of the target application.
23. Drag a Send Hotkey
                    application below the Type Into activity. In the Properties
                        panel, add the expression "enter" in the Key field. Select the Target
                        option from the Target drop-down list. Add the expression
                            "<webctrl tag='INPUT' aaname='Search' />" in the
                            Selector field. Select the INTERACTIVE
                        option from the WaitForReady drop-down list. Select the checkbox for the
                            Activate option. This option brings the UI element to the
                        foreground and activates it before the text is written. Select the None option
                        from the KeyModifiers drop-down list. Select the checkbox for the
                            SpecialKey option. This option indicates if the use of a special
                        key in the keyboard shorcut.
24. Drag a Message Box activity
                    in the Else container. In the Properties
                        panel, select the Ok button from the Buttons drop-down list. Add the expression
                            "Text could not be copied. Please try again." in the
                            Text field. Select the checkbox for the
                            TopMost option. This option always brings the message box to the
                        foreground.
25. Click the Add new case
                    button from the Switch activity. Add the value
                            s in the Case value field.
26. Drag an Assign activity
                    inside the Case s container. This represents the third Hotkey
                        Trigger case that stops monitoring the events. Add the variable
                            ContinueMonitor in the To field. Add the condition
                            False in the Value field.
27. Place a Log Message
                    activity below the Monitor Events activity. In the Properties
                        panel, select the Info option from the Level drop-down field. Add the expression
                            "Stop monitoring.." in the Message field. This is how the workflow
                            should look:
28. Run the process. The robot activates
                the Hotkey Triggers and you can use any of the set key shortcuts.

Download example
