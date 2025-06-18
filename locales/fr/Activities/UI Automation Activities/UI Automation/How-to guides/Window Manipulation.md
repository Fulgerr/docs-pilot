# Window Manipulation

The example below explains how to manipulate an open window from your computer. It
            presents activities such as  and
                . You can find these
            activities in the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in
                the Workflow Designer .
3. Drag a Message Box activity
                    inside the Sequence container. Add the expression
                            "Please select a window to be maximized." in the
                            Text field. In the Properties
                        panel, select the check box for the TopMost option for always having
                        the message box displayed to the foreground.
4. Add a Delay activity below
                    the Message Box activity. In the Properties
                        panel, add the value 00:00:02 in the Duration field.
                        This adds a two-second delay between activities.
5. Drag a Get Active Window activity below the Delay activity.
6. Place a Maximize Window
                    activity inside the Do container of the Get Active Window
                    activity. This is how your workflow
                            should look:
7. Run the process. The automation
                process displays a message box that is requesting you to select a window, in order
                to maximize it.

Download example
