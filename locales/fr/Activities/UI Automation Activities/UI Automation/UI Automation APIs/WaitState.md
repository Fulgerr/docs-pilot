# WaitState

Checks the state of an application or web browser by verifying if an element appears in
            or disappears from the user interface.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionWaitState(String, NClickStateMode,
                                Double)Checks the state of an application or web browser by verifying if
                                an element (identified as a string from the Object Repository)
                                appears in or disappears from the user interface, and choose the
                                number of seconds to wait for the event.WaitState(String, CheckStateOptions)Checks the state of an application or web browser by verifying if
                                an element (identified as a string from the Object Repository)
                                appears in or disappears from the user interface, and choose the
                                number of seconds to wait for the event, along with other
                                configurations.WaitState(TargetAnchorableModel,
                                    CheckStateOptions)Checks the state of an application or web browser by verifying if
                                an element (identified as a TargetAnchorableModel
                                object) appears in or disappears from the user interface, along with
                                other configurations.WaitState(TargetAnchorableModel, NCheckStateMode,
                                    Double)Checks the state of an application or web browser by verifying if
                                an element (identified as a TargetAnchorableModel
                                object) appears in or disappears from the user interface, along with
                                the number of seconds to wait for the event.

# WaitState(String, NClickStateMode, Double)

Checks the state of an application or web browser by verifying if an element
                (identified as a string from the Object Repository) appears in or disappears from
                the user interface, and choose the number of seconds to wait for the event.

bool WaitState(
    string target,
    NCheckStateMode checkStateMode,
    double timeout)

targetStringThe UI element that you want to check the state of, identified as a string
                        from the Object Repository.checkStateModeNCheckStateModeSelect which event to use for determining the state of the application or
                            browser:WaitAppear - Wait for the element to appear in the
                                user interface.WaitDissapear - Wait for the element to disappear
                                from the user interface.timeoutDoubleSpecify the number of seconds for which to wait for the event (element to
                        appear or to disappear). The default value is 5 seconds.

# WaitState(String, CheckStateOptions)

Checks the state of an application or web browser by verifying if an element
                (identified as a string from the Object Repository) appears in or disappears from
                the user interface, and choose the number of seconds to wait for the event, along
                with other configurations.

bool WaitState( 
    string target,
    CheckStateOptions checkStateOptions)

targetStringThe UI element that you want to check the state of, identified as a string
                        from the Object Repository.checkStateOptionsNCheckStateModeChoose the following options:checkStateMode NCheckStateMode - Select which event
                                to use for determining the state of the application or browser:WaitAppear - Wait for the element to appear
                                        in the user interface.WaitDissapear - Wait for the element to
                                        disappear from the user interface.timeout Double - Specify the number of seconds for
                                which to wait for the event (element to appear or to disappear). The
                                default value is 5 seconds.

# WaitState(TargetAnchorableModel, CheckStateOptions)

Checks the state of an application or web browser by verifying if an element
                (identified as a TargetAnchorableModel object) appears in or
                disappears from the user interface, along with other configurations.

bool WaitState(
    TargetAnchorableModel target,
    CheckStateOptions checkStateOptions)

targetTargetAnchorableModelThe UI element that you want to check the state of, identified as a
                            TargetAnchorableModel object.checkStateOptionsNCheckStateModeChoose the following options:checkStateMode NCheckStateMode - Select which event
                                to use for determining the state of the application or browser:WaitAppear - Wait for the element to appear
                                        in the user interface.WaitDissapear - Wait for the element to
                                        disappear from the user interface.timeout Double - Specify the number of seconds for
                                which to wait for the event (element to appear or to disappear). The
                                default value is 5 seconds.

# WaitState(TargetAnchorableModel, NCheckStateMode,
                Double)

Checks the state of an application or web browser by verifying if an element
                (identified as a TargetAnchorableModel object) appears in or
                disappears from the user interface, along with the number of seconds to wait for the
                event.

bool WaitState(
    TargetAnchorableModel target,
    NCheckStateMode checkStateMode,
    [double timeout])

targetTargetAnchorableModelThe UI element that you want to check the state of, identified as a
                            TargetAnchorableModel object.checkStateModeNCheckStateModeSelect which event to use for determining the state of the application or
                            browser:WaitAppear - Wait for the element to appear in the
                                user interface.WaitDissapear - Wait for the element to disappear
                                from the user interface.timeoutDoubleSpecify the number of seconds for which to wait for the event (element to
                        appear or to disappear). The default value is 5 seconds.

# Return value

Boolean

Indicates if the element exists or not.
