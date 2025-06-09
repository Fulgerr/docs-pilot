# IsEnabled

Checks if an UI element is enabled.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionIsEnabled(String)Checks if an UI element is enabled, identified by a string from
                                Object Repository.IsEnabled(IElementDescriptor)Checks if an UI element is enabled, identified by a descriptor of
                                an element from Object Repository.IsEnabled(IElementDescriptor,
                                IsEnabledOptions)Checks if an UI element is enabled, identified by a descriptor of
                                an element from Object Repository, along with other options.IsEnabled(String, IsEnabledOptions)Checks if an UI element is enabled, identified by a string from
                                Object Repository, along with other options.IsEnabled(TargetAnchorableModel,
                                    IsEnabledOptions)Checks if an UI element is enabled, identified by the
                                    TargetAnchorableModel object, along with other
                                options.IsEnabled(RuntimeTarget,
                                IsEnabledOptions)Checks if an UI element is enabled, identified by a runtime
                                instance of an Object Repository element, along with other
                                options.

# IsEnabled(String)

Checks if an UI element is enabled, identified by a string from Object
                Repository.

IsEnabled(
    string target)

targetStringThe UI element that you want to check if it's enabled, identified by a
                        string from Object Repository.

# IsEnabled(IElementDescriptor)

Checks if an UI element is enabled, identified by a descriptor of an element from
                Object Repository.

IsEnabled(
    IElementDescriptor elementDescriptor)

elementDescriptorIElementDescriptorThe UI element that you want to check if it's enabled, identified by a
                        descriptor of an element from Object Repository.

# IsEnabled(IElementDescriptor, IsEnabledOptions)

Checks if an UI element is enabled, identified by a descriptor of an element from
                Object Repository, along with other options.

IsEnabled(
    IElementDescriptor elementDescriptor,
    IsEnabledOptions isEnabledOptions)

elementDescriptorIElementDescriptorThe UI element that you want to check if it's enabled, identified by a
                        descriptor of an element from Object Repository.isEnabledOptionsIsEnabledOptionsAdditional options to customize the verification process. You can choose to
                            customize:TargetOptions: Timeout - Specifies the amount of time (in
                                        seconds) to wait for the API to run before the
                                            SelectorNotFoundException error is
                                        thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                        executing the API. The default amount of time is 0.3 seconds
                                        (300 milliseconds).DelayBefore - Delay time (in seconds)
                                        before the API begins performing any operations. The default
                                        amount of time is 0.2 seconds (200 milliseconds).

# IsEnabled(String, IsEnabledOptions)

Checks if an UI element is enabled, identified by a string from Object Repository,
                along with other options.

IsEnabled(
    string target,
    IsEnabledOptions isEnabledOptions)

targetStringThe UI element that you want to check if it's enabled, identified by a
                        string from Object Repository.isEnabledOptionsIsEnabledOptionsAdditional options to customize the verification process. You can choose to
                            customize:TargetOptions: Timeout - Specifies the amount of time (in
                                        seconds) to wait for the API to run before the
                                            SelectorNotFoundException error is
                                        thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                        executing the API. The default amount of time is 0.3 seconds
                                        (300 milliseconds).DelayBefore - Delay time (in seconds)
                                        before the API begins performing any operations. The default
                                        amount of time is 0.2 seconds (200 milliseconds).

# IsEnabled(TargetAnchorableModel, IsEnabledOptions)

Checks if an UI element is enabled, identified by the
                    TargetAnchorableModel object, along with other options.

IsEnabled(
    TargetAnchorableModel target,
    IsEnabledOptions isEnabledOptions)

targetTargetAnchorableModelThe UI element that you want to check if it's enabled, identified by the
                            TargetAnchorableModel object.isEnabledOptionsIsEnabledOptionsAdditional options to customize the verification process. You can choose to
                            customize:TargetOptions: Timeout - Specifies the amount of time (in
                                        seconds) to wait for the API to run before the
                                            SelectorNotFoundException error is
                                        thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                        executing the API. The default amount of time is 0.3 seconds
                                        (300 milliseconds).DelayBefore - Delay time (in seconds)
                                        before the API begins performing any operations. The default
                                        amount of time is 0.2 seconds (200 milliseconds).

# IsEnabled(RuntimeTarget,
                    IsEnabledOptions)

Checks if an UI element is enabled, identified by a runtime instance of an Object
                Repository element, along with other options.

IsEnabled(
    RuntimeTarget target,
    [IsEnabledOptions isEnabledOptions])

targetRuntimeTargetThe UI element that you want to check if it's enabled, identified by a
                        runtime instance of an Object Repository element.isEnabledOptionsIsEnabledOptionsAdditional options to customize the verification process. You can choose to customize:TargetOptions: Timeout - Specifies the amount of time (in
                                        seconds) to wait for the API to run before the
                                            SelectorNotFoundException error is
                                        thrown. The default value is 30 seconds.DelayAfter - Delay time (in seconds) after
                                        executing the API. The default amount of time is 0.3 seconds
                                        (300 milliseconds).DelayBefore - Delay time (in seconds)
                                        before the API begins performing any operations. The default
                                        amount of time is 0.2 seconds (200 milliseconds).

# Return value

Boolean

The True of False value based on whether the UI element is enabled or
                not.
