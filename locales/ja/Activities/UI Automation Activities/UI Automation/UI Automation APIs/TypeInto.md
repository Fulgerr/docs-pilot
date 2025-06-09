# TypeInto

Enters text in a specified UI element, for example a text box. You can also send special
            keys like Tab or Enter to the UI element.

If you want to enter sensitive information securely, add a GetCredential API before this API and select
            the saved for later username and password values from that API as the text to type.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionTypeInto(TargetAnchorableModel, String)Enters text in a specified UI element, identified as a string
                                from the Object Repository.TypeInto(TargetAnchorableModel,
                                TypeIntoOptions)Enters text in a specified UI element, identified as a
                                    TargetAnchorableModel object.TypeInto(String, String)Enters text in a specified UI element, identified as a string
                                from the Object Repository.TypeInto(String, TypeIntoOptions)Enters text in a specified UI element, identified as a string
                                from the Object Repository, along with other configurations.

# TypeInto(TargetAnchorableModel, String)

Enters text in a specified UI element, identified as a string from the Object
                Repository.

TypeInto(
    TargetAnchorableModel target,
    string text)

targetTargetAnchorableModelThe target UI element, identified as a
                            TargetAnchorableModel object.textStringThe text that you want to type into.

# TypeInto(TargetAnchorableModel, TypeIntoOptions)

Enters text in a specified UI element, identified as a
                    TargetAnchorableModel object.

TypeInto(
    TargetAnchorableModel target,
    TypeIntoOptions typeIntoOptions)

targetTargetAnchorableModelThe target UI element, identified as a
                            TargetAnchorableModel object.typeIntoOptionsTypeIntoOptionsThe following options are available:Text
                                    String - The text that you want to type into.DelayBetweenKeys Double - Delay (in
                                seconds) between consecutive keystrokes. The default value is 0.02
                                seconds.ActivateBefore Boolean - If true,
                                the specified UI element is brought to the foreground and activated
                                before the text is typed in. If false, the API will type into the
                                current active window.ClickBeforeMode NClickMode - the
                                type of click to perform before typing into:NoneSingleDoubleEmptyFieldMode NEmptyFieldMode -
                                    Choose whether to delete the existing content in the field
                                    before typing the text, and how to empty the field. Fields are
                                    emptied by sending a combination of keystrokes that differs
                                    between fields with a single line and fields with multiple
                                    lines. Make sure to select the right option depending on the
                                    indicated field. The options are:NoneSingleLineMultiLineDeselectAfter Boolean - This can
                                only be used when the InteractionMode is set to
                                     Simulate. Some target applications do not
                                register a type action unless a Complete event is also sent
                                alongside the action. Setting this to true adds a Complete event
                                after the text entry, in order to register the action correctly. If
                                you set it to false, the Complete event is not sent to the target
                                application. By default, this is set to true.AlterIfDisabled Boolean - If set to
                                true, the Select Item action is executed even if the specified UI
                                element is disabled. This parameter does not apply if the
                                    InteractionMode is set to Hardware
                                    Events. By default, this is false.InteractionMode
                                    NChildInteractionMode - Specifies the API used to
                                perform the action. The following options are available:SameAsCard - Use the same input mode
                                        as  or . This is the default selection.HardwareEvents - Uses the hardware
                                        driver to perform the action. This is the slowest API, it
                                        cannot work in the background, but it is compatible with all
                                        desktop apps.Simulate - Simulates the action using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events. Sends all
                                        text in a single action. Works even if the target
                                        application is not in focus. Please test if your target
                                        application UI element supports this.DebuggerApi - Performs actions using
                                        debugger APIs. Works for Chromium elements only. Sends all
                                        text in one go. Works even if the target application is not
                                        in focus. For more details, check out this page.WindowMessages - Sends the mouse and
                                        keyboard input through Win32 messages. Recommended for
                                        desktop apps. Usually more reliable than Hardware Events.
                                        Sends all text in a single action. Works even if target app
                                        is not in focus. Please test if your target application UI
                                        element supports this.

# TypeInto(String, String)

Enters text in a specified UI element, identified as a string from the Object
                Repository.

TypeInto(
    string target,
    string text)

targetThe target UI element that you want to type into, identified as a string
                        from the Object Repository.textStringThe text that you want to type into.

# TypeInto(String, TypeIntoOptions)

Enters text in a specified UI element, identified as a string from the Object
                Repository, along with other configurations.

TypeInto(
    string target,
    TypeIntoOptions typeIntoOptions)

targetThe target UI element that you want to type into, identified as a string
                        from the Object Repository.typeIntoOptionsTypeIntoOptionsThe following options are available:Text
                                    String - The text that you want to type into.DelayBetweenKeys Double - Delay (in
                                seconds) between consecutive keystrokes. The default value is 0.02
                                seconds.ActivateBefore Boolean - If true,
                                the specified UI element is brought to the foreground and activated
                                before the text is typed in. If false, the API will type into the
                                current active window.ClickBeforeMode NClickMode - the
                                type of click to perform before typing into:NoneSingleDoubleEmptyFieldMode NEmptyFieldMode -
                                    Choose whether to delete the existing content in the field
                                    before typing the text, and how to empty the field. Fields are
                                    emptied by sending a combination of keystrokes that differs
                                    between fields with a single line and fields with multiple
                                    lines. Make sure to select the right option depending on the
                                    indicated field. The options are:NoneSingleLineMultiLineDeselectAfter Boolean - This can
                                only be used when the InteractionMode is set to
                                     Simulate. Some target applications do not
                                register a type action unless a Complete event is also sent
                                alongside the action. Setting this to true adds a Complete event
                                after the text entry, in order to register the action correctly. If
                                you set it to false, the Complete event is not sent to the target
                                application. By default, this is set to true.AlterIfDisabled Boolean - If set to
                                true, the Select Item action is executed even if the specified UI
                                element is disabled. This parameter does not apply if the
                                    InteractionMode is set to Hardware
                                    Events. By default, this is false.InteractionMode
                                    NChildInteractionMode - Specifies the API used to
                                perform the action. The following options are available:SameAsCard - Use the same input mode
                                        as  or . This is the default selection.HardwareEvents - Uses the hardware
                                        driver to perform the action. This is the slowest API, it
                                        cannot work in the background, but it is compatible with all
                                        desktop apps.Simulate - Simulates the action using
                                        accessibility APIs. Recommended in browser automation, Java
                                        apps, or SAP. More reliable than Hardware Events. Sends all
                                        text in a single action. Works even if the target
                                        application is not in focus. Please test if your target
                                        application UI element supports this.DebuggerApi - Performs actions using
                                        debugger APIs. Works for Chromium elements only. Sends all
                                        text in one go. Works even if the target application is not
                                        in focus. For more details, check out this page.WindowMessages - Sends the mouse and
                                        keyboard input through Win32 messages. Recommended for
                                        desktop apps. Usually more reliable than Hardware Events.
                                        Sends all text in a single action. Works even if target app
                                        is not in focus. Please test if your target application UI
                                        element supports this.
