# Computer Vision Recorder

Once you install the UI Automation activity package, the Computer Vision Recorder wizard
            becomes available in the Ribbon for Windows project types. The recorder is not
            supported for cross-platform project types.

This recorder is suitable for automatically generating workflows that use the Computer
            Vision activities, offering you the full spectrum of capabilities this package has to
            offer. Once opened, the recorder looks like this:

![babc938-Computer_vision_recorder_2.1.0=GUID-19B19A8F-99FD-459D-9E17-81EE448AFBD1=1=en=Default](/images/babc938-Computer_vision_recorder_2.1.0=GUID-19B19A8F-99FD-459D-9E17-81EE448AFBD1=1=en=Default.png)

Clicking the Record button enables you to indicate the application you want to automate, which is used as a target for all subsequent Computer Vision activities. Once an application is indicated, the selected window is sent to the Computer Vision server, where it is processed, and the wizard enters recording mode. All other screen content besides the selected window is grayed out, and the recorder interface changes:

![e1ce3bd-Computer_vision_recorder_2.1.02=GUID-36E1043C-E744-4FC9-AB42-C33F680284FA=1=en=Default](/images/e1ce3bd-Computer_vision_recorder_2.1.02=GUID-36E1043C-E744-4FC9-AB42-C33F680284FA=1=en=Default.png)

The Type button enables you to select an identified text field and type text and/or hotkeys into it. After selecting a field, a window enabling you to customize the type action is opened.

![c516a67-cv_recorder_type=GUID-1F179AAE-6058-4D99-8AC5-4A5164754F92=1=en=Default](/images/c516a67-cv_recorder_type=GUID-1F179AAE-6058-4D99-8AC5-4A5164754F92=1=en=Default.png)

You can specify the text you want to type in the text box, as well as add in hotkeys by using the + button. The Empty field check box deletes all the text inside a field before typing into it. Once finished, pressing Enter saves the action.

The Click relative button enables you to click any UI element. If necessary, the wizard can also set an anchor for the area you want to click.

Anchors can be selected also by using the Shift + Click hotkey.

The Get button extracts the text from a specified area. This action can also request an anchor if necessary.

The Save & Exit button closes the recording session and generates the activities required to perform the actions you recorded in the Designer panel.

The Stop Recording button stops recording actions, takes the target window out of focus, but does not close the wizard. This is useful at design-time if you want to perform changes to the application you are automating. Once clicked, the wizard looks like this:

![a281a32-Computer_vision_recorder_2.1.03=GUID-F8A9EF01-7B14-4378-B259-77A8F60E67A8=1=en=Default](/images/a281a32-Computer_vision_recorder_2.1.03=GUID-F8A9EF01-7B14-4378-B259-77A8F60E67A8=1=en=Default.png)

To continue recording in this state, you must click the Record button again.

The Refresh button can be used when the target window changes and needs to be resent to the Computer Vision server. This can happen, for example, after clicking a button that enters another section of the application.

The Change Application button enables you to indicate another application window, in case you want to switch to automating another application.
