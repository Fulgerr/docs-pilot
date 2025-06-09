# DragAndDrop

Executes a drag and drop operation from the source UI element to the destination UI
            element.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionDragAndDrop(IElementDescriptor,
                                DragAndDropOptions)Drags and drops a specified UI element, identified by a descriptor of
                                an element from Object Repository, while customizing the drag and
                                drop action.DragAndDrop(String, DragAndDropOptions)Drags and drops a specified UI element, identified by a string from
                                Object Repository, while customizing the drag and drop
                                action.DragAndDrop(IElementDescriptor, TargetAnchorableModel,
                                    NKeyModifiers, NMouseButton, CursorMotionType, Boolean,
                                    Double)Drags and drops a specified UI element, identified by a descriptor of
                                an element from Object Repository and by the
                                    TargetAnchorableModel object, while specifying
                                the key modifiers, the mouse button, and the cursor motion type you
                                want to use.DragAndDrop(String, TargetAnchorableModel, NKeyModifiers,
                                    NMouseButton, CursorMotionType, Boolean,
                                Double)Drags and drops a specified UI element, identified by a string from
                                Object Repository and a by the
                                    TargetAnchorableModel object, while specifying
                                the key modifiers, the mouse button, and the cursor motion type you
                                want to use.DragAndDrop(TargetAnchorableModel,
                                    DragAndDropOptions)Drags and drops a specified UI element, identified by the
                                    TargetAnchorableModel object, while customizing
                                the drag and drop action.DragAndDrop(RuntimeTarget,
                                DragAndDropOptions)Drags and drops a specified UI element, identified by a runtime
                                instance of an Object Repository element, while customizing the drag
                                and drop action.

# DragAndDrop(IElementDescriptor, DragAndDropOptions)

Drags and drops a specified UI element, identified by a descriptor of a UI element from
                Object Repository, while customizing the drag and drop action.

DragAndDrop(
    IElementDescriptor elementDescriptor,
    DragAndDropOptions dragAndDropOptions)

elementDescriptorIElementDescriptorThe UI element that you want to drag and drop, identified by a descriptor
                            of a UI element from Object Repository.dragAndDropOptionsDragAndDropOptionsAdditional options to customize the drag and drop operation. You can
                            choose to customize:TargetOptions: Timeout - Specifies the amount of time (in
                                        seconds) to wait for the API to run before the
                                        SelectorNotFoundException error is
                                        thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                        executing the API. The default amount of time is 0.3 seconds
                                        (300 milliseconds).DelayBefore - Delay time (in seconds) before the
                                        API begins performing any operations. The default amount of
                                        time is 0.2 seconds (200 milliseconds).TargetAnchorableModel - The location where you
                                want to drag and drop the UI element to.NKeyModifiers - Specify the key modifiers you want
                                to use during the drag and drop operation. The following options are
                                available: None, Alt, Ctrl, Shift, and
                                    Win.NMouseButton - Specify the mouse button you want to
                                use during the drag and drop operation. The following options are
                                available: Left, Right, and Middle.CusorMotionType -  Specifies the type of motion
                                performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. By
                                        default, Instant is selected.Smooth - The cursor moves gradually towards the
                                        destination.UseSourceHover - Determines whether to hover
                                over the source before dragging.DelayBetweenActions - Delay (in seconds) between
                                the actions necessary to perform the drag and drop operation.

# DragAndDrop(String, DragAndDropOptions)

Drags and drops a specified UI element, identified by a string from Object Repository,
                while customizing the drag and drop action.

DragAndDrop(
    string target,
    DragAndDropOptions dragAndDropOptions)

targetStringThe UI element that you want to drag and drop, identified by a string
                            from the Object Repository.dragAndDropOptionsDragAndDropOptionsAdditional options to customize the drag and drop operation. You can
                            choose to customize:TargetOptions: Timeout - Specifies the amount of time (in
                                    seconds) to wait for the API to run before the
                                    SelectorNotFoundException error is
                                    thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                    executing the API. The default amount of time is 0.3 seconds
                                    (300 milliseconds).DelayBefore - Delay time (in seconds) before the
                                    API begins performing any operations. The default amount of
                                    time is 0.2 seconds (200 milliseconds).TargetAnchorableModel - The location where you want
                                to drag and drop the UI element to.NKeyModifiers - Specify the key modifiers you want
                                to use during the drag and drop operation. The following options are
                                available: None, Alt, Ctrl, Shift, and
                                    Win.NMouseButton - Specify the mouse button you want to
                                use during the drag and drop operation. The following options are
                                available: Left, Right, and Middle.CusorMotionType - Specifies the type of motion
                                performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. By
                                        default, Instant is selected.Smooth - The cursor moves gradually towards the
                                        destination.UseSourceHover - Determines whether to hover
                                over the source before dragging.DelayBetweenActions - Delay (in seconds) between
                                the actions necessary to perform the drag and drop operation.

# DragAndDrop(IElementDescriptor, TargetAnchorableModel, NKeyModifiers,
                    NMouseButton, CursorMotionType, Boolean, Double)

Drags and drops a specified UI element, identified by a descriptor of an element from
                Object Repository and a by the TargetAnchorableModel object, while
                specifying the key modifiers, the mouse button, and the cursor motion type you want
                to use.

DragAndDrop(
    IElementDescriptor elementDescriptor,
    TargetAnchorableModel destinationTarget,
    [NKeyModifiers? keyModifiers],
    [NMouseButton? mouseButton],
    [CursorMotionType? cursorMotionType],
    [bool? useSourceHover],
    [double? delayBetweenActions])

elementDescriptorIElementDescriptorThe UI element that you want to drag and drop, identified by a descriptor
                            of an element from Object Repository.destinationTargetTargetAnchorableModelThe location where you want to drag and drop the UI element to.keyModifiersNKeyModifiersSpecify the key modifiers you want to use during the drag and drop
                        operation. The following options are available: None, Alt,
                            Ctrl, Shift, and Win.mouseButtonNMouseButtonSpecify the mouse button you want to use during the drag and drop operation.
                        The following options are available: Left, Right, and
                            Middle.cursorMotionTypeCursorMotionTypeSpecifies the type of motion performed by the mouse cursor. There are two
                        available options:Instant - The cursor jumps to the destination. By default,
                                    Instant is selected.Smooth - The cursor moves gradually towards the
                                destination.useSourceHoverBooleanDetermines whether to hover over the source before dragging.delayBetweenActionsDoubleDelay (in seconds) between the actions necessary to perform the drag and
                            drop operation.

# DragAndDrop(String,
                    TargetAnchorableModel, NKeyModifiers, NMouseButton, CursorMotionType, Boolean,
                    Double)

Drags and drops a specified UI element, identified by a string from Object Repository and
                a by the TargetAnchorableModel object, while specifying the key
                modifiers, the mouse button, and the cursor motion type you want to use.

DragAndDrop(
    string target,
    TargetAnchorableModel destinationTarget,
    [NKeyModifiers? keyModifiers],
    [NMouseButton? mouseButton],
    [CursorMotionType? cursorMotionType],
    [bool? useSourceHover],
    [double? delayBetweenActions])

targetStringThe UI element that you want to drag and drop, identified by a string from the
                        Object Repository.destinationTargetTargetAnchorableModelThe location where you want to drag and drop the UI element to.keyModifiersNKeyModifiersSpecify the key modifiers you want to use during the drag and drop operation.
                        The following options are available: None, Alt, Ctrl,
                            Shift, and Win.mouseButtonNMouseButtonSpecify the mouse button you want to use during the drag and drop operation. The
                        following options are available: Left, Right, and
                            Middle.cursorMotionTypeCursorMotionTypeSpecifies the type of motion performed by the mouse cursor. There are two
                        available options:Instant - The cursor jumps to the destination. By default,
                                    Instant is selected.Smooth - The cursor moves gradually towards the
                                destination.useSourceHoverBooleanDetermines whether to hover over the source before dragging.delayBetweenActionsDoubleDelay (in seconds) between the actions necessary to perform the drag and
                            drop operation.

# DragAndDrop(TargetAnchorableModel, DragAndDropOptions)

Drags and drops a specified UI element, identified by the
                    TargetAnchorableModel object, while customizing the drag and
                drop action.

DragAndDrop(
    TargetAnchorableModel target,
    DragAndDropOptions dragAndDropOptions)

targetTargetAnchorableModelThe UI element that you want to drag and drop, identified by the
                                TargetAnchorableModel object.dragAndDropOptionsDragAndDropOptionsAdditional options to customize the drag and drop operation. You can
                            choose to customize:TargetOptions: Timeout - Specifies the amount of time (in
                                    seconds) to wait for the API to run before the
                                    SelectorNotFoundException error is
                                    thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                    executing the API. The default amount of time is 0.3 seconds
                                    (300 milliseconds).DelayBefore - Delay time (in seconds) before the
                                    API begins performing any operations. The default amount of
                                    time is 0.2 seconds (200 milliseconds).TargetAnchorableModel - The location where you want
                                to drag and drop the UI element to.NKeyModifiers - Specify the key modifiers you want
                                to use during the drag and drop operation. The following options are
                                available: None, Alt, Ctrl, Shift, and
                                    Win.NMouseButton - Specify the mouse button you want to
                                use during the drag and drop operation. The following options are
                                available: Left, Right, and Middle.CusorMotionType - Specifies the type of motion
                                performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. By
                                        default, Instant is selected.Smooth - The cursor moves gradually towards the
                                        destination.UseSourceHover - Determines whether to hover
                                over the source before dragging.DelayBetweenActions - Delay (in seconds) between
                                the actions necessary to perform the drag and drop operation.

# DragAndDrop(RuntimeTarget,
                    DragAndDropOptions)

Drags and drops a specified UI element, identified by a runtime instance of an Object
                Repository element, while customizing the drag and drop action.

DragAndDrop(
    RuntimeTarget target,
    DragAndDropOptions dragAndDropOptions)

targetRuntimeTargetThe UI element that you want to drag and drop, identified by a runtime instance
                        of an Object Repository element.dragAndDropOptionsDragAndDropOptionsAdditional options to customize the drag and drop operation. You can
                            choose to customize:TargetOptions: Timeout - Specifies the amount of time (in
                                    seconds) to wait for the API to run before the
                                    SelectorNotFoundException error is
                                    thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                    executing the API. The default amount of time is 0.3 seconds
                                    (300 milliseconds).DelayBefore - Delay time (in seconds) before the
                                    API begins performing any operations. The default amount of
                                    time is 0.2 seconds (200 milliseconds).TargetAnchorableModel - The location where you want
                                to drag and drop the UI element to.NKeyModifiers - Specify the key modifiers you want
                                to use during the drag and drop operation. The following options are
                                available: None, Alt, Ctrl, Shift, and
                                    Win.NMouseButton - Specify the mouse button you want to
                                use during the drag and drop operation. The following options are
                                available: Left, Right, and Middle.CusorMotionType - Specifies the type of motion
                                performed by the mouse cursor. There are two available options:Instant - The cursor jumps to the destination. By
                                        default, Instant is selected.Smooth - The cursor moves gradually towards the
                                        destination.UseSourceHover - Determines whether to hover
                                over the source before dragging.DelayBetweenActions - Delay (in seconds) between
                                the actions necessary to perform the drag and drop operation.
