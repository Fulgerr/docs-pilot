# User Triggered Activities

The examples below explain how to execute activities triggered by the user's actions (mouse click
                                    or keystroke) using activities such as Monitor
                                                  Events. You can find these activities
                                    in the UiPath.System.Activities package.

There are three workflows, each explaining a different action that can trigger an activity.

Activity triggered by clicking an image

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variable:Variable NameVariable TypeDefault ValueTargetElementUiElement
3. Add a Monitor Events activity inside the Sequence container. In the Properties panel, add the value False in the RepeatForever field.
4. Add a Click Image Trigger activity inside the Monitor Events activity. Inside the activity, click Indicate image on screen, and then select the UiPath Studio taskbar button like in the following GIF:
5. Drag a Sequence container below the Click Image Trigger activity inside the Monitor Events activity. Name the sequence Event Handler .
6. Add a Get Source Element activity inside the Event Handler sequence. In the Properties panel, add the variable TargetElement in the UiElement field.
7. Add a Highlight activity below the Get Source Element activity inside the Event Handler sequence. In the Properties panel, add the variable TargetElement in the Element field.Add the value 1500 in the HighlightTime field.
8. Run the process. The process waits for you to click the UiPath Studio button in the taskbar and then highlights it.

Activity triggered by a mouse click

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variable:Variable NameVariable TypeDefault ValueLoopForeverBooleanTrue
3. Add a Monitor Events activity inside the Sequence container. In the Properties panel, add the variable LoopForever in the RepeatForever field.Add Mouse Trigger activities for controlling the Monitor Events loops. The first Mouse Trigger blocks the event until the element is highlighted. The second Mouse Trigger stops the process.
4. Add a Mouse Trigger activity inside the Monitor Events activity. In the Properties panel, select the EVENT_BLOCK option from the EventMode drop-down list.
5. Add another Mouse Trigger activity next to the previous one, inside the Monitor Events activity. In the Properties panel, select the EVENT_BLOCK option from the EventMode drop-down list.
Select the Ctrl option from the KeyModifiers drop-down list.
6. Add a Sequence activity below the Mouse Trigger activities inside the existing sequence. Create the following variable:Variable NameVariable TypeDefault ValueMouseEventEventInfo
7. Add a Get Event Info activity inside the previously created Sequence container. Add the variable MouseEvent inside the Result field.
8. Add an If activity below the Get Event Info activity. Add the expression MouseEvent.KeyModifier = KeyModifier.Ctrl in the Condition field.
9. Add an Assign activity inside the Then field of the If activity. Add the variable LoopForever in the To field.Add the value False in the Value field.
10. Add a Block User Input activity inside the Else field of the If activity. Select the Do container inside the activity and create the following variable:Variable NameVariable TypeDefault ValueClickedElementUiElement
11. Add a Get Source Element activity inside the Do container of the Block User Input activity. Add the variable ClickedElement inside the UiElement field.
12. Add a Highlight activity below the Get Source Element activity. In the Properties panel, add the variable ClickedElement in the Element field.
13. Add a Replay User Event activity below the Highlight activity.
14. Run the process. The process highlights every element clicked using the left mouse button. The process stops when the Ctrl + left mouse click trigger is detected.

Activity triggered by mouse click or keystroke

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer .
3. Add a Monitor Events activity inside the Sequence container. In the Properties panel, add the value False in the RepeatForever field.
4. Add a System Trigger activity inside the Sequence container.
5. Drag a Sequence container below the System Trigger activity inside the Monitor Events activity. Name the sequence Event Handler. Create the following variable:Variable NameVariable TypeDefault ValueSystemEventEventInfo
6. Add a Get Event Info activity inside the Event Handler sequence. In the Properties panel, add the variable SystemEvent in the Result field.
7. Add an If activity below the Get Event Info activity. Add the expression SystemEvent.MouseEventInfo isnot Nothing in the Condition field.
8. Add a Message Box activity inside the Then field of the If activity. Add the following expression in the Text field: "Mouse Button Pressed: " + SystemEvent.MouseEventInfo.Button.ToString + vbCrLf + vbCrLf + "Modifiers used: " + SystemEvent.KeyModifier.ToString.
9. Add a Message Box activity inside the Else field of the If activity. Add the following expression in the Text field: "Key Pressed: " + SystemEvent.KeyEventInfo.KeyName + vbCrLf + vbCrLf + "Modifiers used: " + SystemEvent.KeyModifier.ToString.
10. Run the process. When a trigger is used, a message box is displayed with information about the detected mouse click or keystroke.

Here you can download an example.
