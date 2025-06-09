# App/Web Recorder

About the App/Web Recorder

Recording can help you save a lot of time when automating your tasks. The App/Web Recorder captures your actions as you perform them on the screen and generates a Use Application/Browser activity with a series of activities inside it based on your actions.

All user interface elements are highlighted while you record so that you can be sure the correct buttons, fields, or menus are selected. The recorder captures a default action for each type of UI element and also allows you to manually choose the desired action before performing it.

The recorder displays a preview of the activities that will be added to your project in real time. The preview includes informative screenshots that are also added to the activities in the automation project. The preview section can be collapsed by clicking the Recorded Steps header.

Each recorded action generates an activity. The following table lists the actions you can record and the activities that are generated for them. Some actions are automatically recorded, which means the corresponding activity is automatically generated, while others must be manually selected before being recorded.


| Automatically Recorded Actions | Actions That Must Be Selected Before Recording |
| --- ---| Clicking on buttons, links, and other clickable elements such as icons or images. A Click activity is generated.Typing text in a text area such as a text box. A Type Into activity is generated.Selecting or clearing a check box. A Check/Uncheck activity is generated.Sending keyboard shortcuts using your keyboard. A Keyboard Shortcuts activity is generated.Selecting an item from a drop-down. A Select Item activity is generated. | Copying text using the Get Text activity.Hovering over an element using the Hover activity.Highlighting an element using the Highlight activity. |

Recording your actions

1. Open the application or web browser page you want to automate.
2. Click App/Web Recorder in the Studio ribbon or press Ctrl+Alt+R on your keyboard. Depending on your configuration, this option could also be located under Recording. The App/Web Recorder window is displayed.
3. (Optional) By default, after you indicate the UI element to interact with, the target selection is made automatically. If you want to be able to add or remove anchors, remove and add the target again after indicating it, and confirm the selection before recording steps, select Confirm every step. Even if you do not select this option, you can quickly enable it for individual steps in the recording. To do this, press and hold the Shift key while you click a UI element to interact with, or while you select an option from the Choose action hover menu.
4. Once opened, the Recorder is ready to record actions. If you choose to pause it, you can click Record to resume recording. Opening the App/Web Recorder while a Use Application/Browser activity is selected in the Workflow Designer only allows you to indicate actions on elements in the application or browser that is set as a target for that activity.If an Use Application/Browser activity is not selected, you can record your actions on all applications that are open on your machine.
5. (Optional) You can enable Object Repository support for the Recorder by hitting the button, which lets you use existing Object Repository objects or create new ones when needed.
6. Indicate the element you want to perform actions on by clicking it. Individual elements in the window are highlighted as you move the mouse over them. To record the default action for the UI element you want to interact with, click the target element. To perform non-default actions (such as actions performed by activities like Get Text, Hover, and more), hover the mouse over the target element, and then select an option from the Choose action hover menu that appears next to the element.You can also use Image automation by dragging an area in your application and selecting an action you want to perform from the Choose action menu.After a manually added action is recorded, the Recorder returns to automatic selection mode.You can change the layout of the menu between icons-only and list view, or pin it so that it is always visible during the recording using the buttons in the upper-right side of the menu.
7. Some actions require your input before an activity is generated, so make sure to provide the necessary information when prompted, and then press Enter on your keyboard or click Confirm. For example, if you selected a text box, a Type Into action is detected and you are prompted to enter the text to type. To ensure the action is performed on the intended element, do not move the mouse over another UI element until the action is performed for the current target element.
8. The action is performed and the activity is generated. To continue, select the next element to interact with in a similar way, and repeat this until all the actions are recorded.
9. When you are done recording your actions, click Save and return to Studio to close the Recorder and add the activities to your project. If a container activity was selected in the Designer panel when you started the Recorder, the generated activities are added inside it. If an activity that is not a container was selected, the generated activities are added after the selected activity.

While recording, you can:

* Add a 5 seconds delay in element selection by pressing F2 on your keyboard. You can do this if, for example, an element you need to interact with is not in the visible area of the screen and you need time to scroll down to it.
* Pause recording at any time by clicking Pause . To resume recording, click Record again.
* Use modifier keys, Alt, Ctrl, Shift.
* Manage the activities added so far using the preview under Recorded Steps: Remove an activity by clicking Delete in the upper-right corner of the activity. Configure the input or output of some activities:Edit the text to type for Type Into. Update the selection for Select Item. Change the action for Check/Uncheck. Remove recorded sequences for Keyboard Shortcuts. Select where to save the copied text for Get Text.

The App/Web Recorder window allows you to select the Input Mode that is used to perform the recorded actions, both during the recording and at runtime, when the workflow is executed. This allows real time testing of the input method on specific elements. For instance, if a recorded action doesn’t seem to be performed, try changing the input method to Hardware Events, as the element may not support other input methods. Clicking  displays a menu, from which you can select Chromium API, Window Messages, Hardware Events, or Simulate. By default, the input method is set to Auto, which auto-detects the best input method, based on Project Settings.

![e21cbdc-app_web=GUID-169976B0-D031-4A27-B6B4-1A990CDBC6BD=1=en=Default](/images/e21cbdc-app_web=GUID-169976B0-D031-4A27-B6B4-1A990CDBC6BD=1=en=Default.png)

Due to the fact that actions such as Double-Click, Right-Click, and Keyboard Shortcuts executed with the Simulate method usually fail, they are recorded and performed automatically with the Hardware Events method, even if you have selected the Simulate method.

Clicking the  button enables full configuration of the targets and saved values. When it is enabled, all the targets must be confirmed using the blue button that appears on hover over the target (similar to the selection screen). This mode should be used if additional/different anchors need to be added during the recording.

When recording in the StudioX profile, the Indicate in Excel option is not available in the Plus menu. To indicate Excel data, select named cells, use the Custom Input option, or leave the field blank and use Indicate in Excel after completing the recording and returning to the StudioX designer.

Object Repository integration

Generating Object Repository objects when performing a recording combines the best of both worlds, enabling you to create working automations on the fly, and doing so in a scalable manner.

When the  switch is activated in the Recorder, any element that is indicated while recording is checked against objects in the Object Repository, leading to one of three scenarios:

* If the object is not found, then a new object is created for the indicated element and can then be easily reused.
* If the object is found, it is linked to the recorded activity.
* If multiple objects are found that match the indicated element, you are prompted to pick one of them, or create a new one. Using large Object Repositories with the Recorder might cause the execution to be slower

Automatically generated activities

The following activities are automatically generated when the corresponding action is detected. If needed, you can update the properties of the activities after completing the recording.

* Click - Generated when you select a button or a link while recording. The click type and mouse button are also recorded.
* Type Into - Generated when you select a text box or other editable UI elements while recording. After you select the text field, you are prompted to enter the text to complete the action. You can select Plain text to enter the text directly in the dialog box, or Expression to select Excel data or saved for later values from the Plus menu (in StudioX) or an expression (in Studio). By default, the Empty field option is selected to remove any existing text before typing.
* Select Item - Generated when you select a drop-down list or combo box while recording. After you select the drop-down, you are prompted to select an item from the list to complete the action.
* Check/Uncheck - Generated when you select a radio button or a check box. The default action to perform on the check box is Toggle.
* Keyboard Shortcuts - Generated when you press a combination of keyboard shortcuts while recording.

Manually generated activities

In some situations, you must manually choose the action to perform next before recording the action and generating the activity.

* The following actions cannot be recorded automatically: Copy text from an application or web browser using the Get Text activity. After choosing the action and selecting the target element, indicate where to save the copied text from the Recorded Steps activity preview. If the Confirm every step option is selected, you are prompted to indicate where to save the text after you confirm the target. Hover over a UI element using the Hover activity. Highlight a UI element using the Highlight activity.
* The action that is recorded automatically may not be the desired action. For example, you clicked the text area in Notepad with the intention to type into it, but the action recorded by default was Click. In this case, you can delete the action added by default and manually add the intended activity.

You can manually select which action to perform from the Choose action hover menu that appears next to UI elements during recording.
