# Automate Application Runtime

The example below explains how to open, run, and close an application. It presents
            activities such as Double Click, Wait Element Vanish, or Set Clipping
                Region. You can find these activities in the
                UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new
                        Process. This example requires a window
                    application inside the project folder. You can use the one provided by us in the
                    downloadable example.
2. Drag a Sequence container
                    in the Workflow Designer. Create the following
                            variable:Variable NameVariable TypeDefault ValueappUiPath.Core.Window
3. Drag an Open Application
                    activity inside the Sequence container. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow: In the Properties
                        panel, add the variable app in the ApplicationWindow
                        field.
4. Select the Do container
                    present inside the Open Application activity. Create the following
                            variables:Variable NameVariable TypeDefault valueelementUiPath.Core.UiElementregionUiPath.Core.Region
5. Place a Highlight activity
                    inside the Do container. Inside the activity, click
                        the Indicate element inside window option. The GIF below shows all
                        the steps you need to follow: In the Properties
                        panel, select the value Red from the Color drop-down
                        list. Add the value
                            1200 in the HighlightTime field.
6. Drag a Double Click
                    activity below the Highlight activity. Inside the activity, click
                        the Indicate element inside window option. The GIF below shows all
                        the steps you need to follow:
7. Place a Type Into activity
                    below the Double Click activity. Inside the activity, click
                        the Indicate element inside window option. The GIF below shows all
                        the steps you need to follow: In the Properties
                        panel, add the value "32312" in the Text field. Select the check box for the
                            SendWindowMessages field. This sends a message to the target
                        application.
8. Place a Find Element
                    activity below the Type Into activity. Inside the activity, click
                        the Indicate element inside window option. The GIF below shows all
                        the steps you need to follow: In the Properties
                        panel, add the variable element in the FoundElement
                        field.
9. Place a Set Clipping Region
                    activity below the Find Element activity. In the Properties
                        panel, select the RECTANGLE option from the Direction
                        drop-down list. Add the variable
                            element in the Element field. Add the values for the
                        desired options in the Size drop-down. For this example, the used
                        values are 100 for Left, 50 for
                            Top, 150 for Right, and
                            150 for Bottom.
10. Drag a Click activity
                    underneath the Set Clipping Region activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow:
11. Drag a Click activity
                    underneath the Open Application activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow:
12. Drag a Minimize activity
                    below the Click activity. In the Properties
                        panel, add the variable app in the Window field.
13. Place a Wait Element Vanish
                    activity below the Minimize activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow: In the Properties
                        panel, select the check box for the WaitNotActive option, determining
                        the activity to be executed only after the specified UI element is no longer
                        active.
14. Drag a Message Box activity
                    below the Wait Element Vanish activity. In the Properties
                        panel, add the expression "ExpenseIt main window is not visible
                            anymore." in the Text field. Select the check box for the
                            TopMost option. This brings the message box to the foreground.
15. Drag a Click activity
                    underneath the Message Box activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow: Select the check box for the
                            SimulateClick option for simulating a click on the screen.
16. Drag a Click activity
                    underneath the Click activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow: In the Properties
                        panel, select the check box for the SimulateClick option for
                        simulating a click on the screen.
17. Run the process. The provided
                application is opened, the number of employees is altered, a report is generated,
                and in the end, all application's windows are closed.

Download example
