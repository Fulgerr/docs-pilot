# GetChildren

Retrieves the children of a specified target.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionGetChildren(String, GetChildrenOptions)Retrieves the children of a specified target, identified by a
                                string from Object Repository, along with other
                                configurations.GetChildren(RuntimeTarget,
                                GetChildrenOptions)Retrieves the children of a specified target, identified by a
                                runtime instance of an Object Repository element, along with other
                                configurations.GetChildren(TargetAnchorableModel,
                                    GetChildrenOptions)Retrieves the children of a specified target, identified by the
                                    TargetAnchorableModel object, along with other
                                configurations.GetChildren(IElementDescriptor,
                                    GetChildrenOptions)Retrieves the children of a specified target, identified by a
                                descriptor of an element from Object Repository, along with other
                                configurations.GetChildren(IElementDescriptor, String, Boolean, Boolean,
                                    Double)Retrieves the children of a specified target, identified by a
                                descriptor of an element from Object Repository, while specifying
                                the name of the selector filter, the timeout, if you want to perform
                                a recursive search or to check the root visibility.GetChildren(String, String, Boolean, Boolean,
                                    Double)Retrieves the children of a specified target, identified by a
                                string from Object Repository, while specifying the name of the
                                selector filter, the timeout, if you want to perform a recursive
                                search or to check the root visibility.

# GetChildren(String, GetChildrenOptions)

Retrieves the children of a specified target, identified by a string from Object
                Repository, along with other configurations.

GetChildren(
    string target,
    GetChildrenOptions getChildrenOptions)

targetStringThe target element from which you want to retrieve children elements,
                        identified by a string from Object Repository.getChildrenOptionsGetChildrenOptionsAdditional options to customize the retrieval of children elements. You can
                        choose to customize:SelectorFilter - The name of the selector
                                filter.Timeout - Timeout (in seconds).Recursive - If true, performs a recursive search
                                for all the children.CheckRootVisibility - If true, checks the root
                                visibility for all the children.

# GetChildren(RuntimeTarget, GetChildrenOptions)

Retrieves the children of a specified target, identified by a runtime instance of an
                Object Repository element, along with other configurations.

GetChildren(
    RuntimeTarget target,
    GetChildrenOptions getChildrenOptions)

targetRuntimeTargetThe target element from which you want to retrieve children elements,
                        identified by a runtime instance of an Object Repository element.getChildrenOptionsGetChildrenOptionsAdditional options to customize the retrieval of children elements. You can
                        choose to customize:SelectorFilter - The name of the selector
                                filter.Timeout - Timeout (in seconds).Recursive - If true, performs a recursive search
                                for all the children.CheckRootVisibility - If true, checks the root
                                visibility for all the children.

# GetChildren(TargetAnchorableModel, GetChildrenOptions)

Retrieves the children of a specified target, identified by the
                    TargetAnchorableModel object, along with other
                configurations.

GetChildren(
    TargetAnchorableModel target,
    GetChildrenOptions getChildrenOptions)

targetTargetAnchorableModelThe target element from which you want to retrieve children elements,
                        identified by the TargetAnchorableModel object.getChildrenOptionsGetChildrenOptionsAdditional options to customize the retrieval of children elements. You can
                        choose to customize:SelectorFilter - The name of the selector
                                filter.Timeout - Timeout (in seconds).Recursive - If true, performs a recursive search
                                for all the children.CheckRootVisibility - If true, checks the root
                                visibility for all the children.

# GetChildren(IElementDescriptor, GetChildrenOptions)

Retrieves the children of a specified target, identified by a descriptor of an
                element from Object Repository, along with other configurations.

GetChildren(
    IElementDescriptor elementDescriptor,
    GetChildrenOptions getChildrenOptions)

elementDescriptorIElementDescriptorThe element from which you want to retrieve children elements, identified by
                        a descriptor of a UI element from Object Repository.getChildrenOptionsGetChildrenOptionsAdditional options to customize the retrieval of children elements. You can
                        choose to customize:SelectorFilter - The name of the selector
                                filter.Timeout - Timeout (in seconds).Recursive - If true, performs a recursive search
                                for all the children.CheckRootVisibility - If true, checks the root
                                visibility for all the children.

# GetChildren(IElementDescriptor, String, Boolean, Boolean,
                    Double)

Retrieves the children of a specified target, identified by a descriptor of an
                element from Object Repository, while specifying the name of the selector filter,
                the timeout, if you want to perform a recursive search or to check the root
                visibility.

GetChildren(
    IElementDescriptor elementDescriptor,
    string selectorFilter,
    [bool checkRootVisibility],
    [bool recursive],
    [double timeout])

elementDescriptorIElementDescriptorThe element from which you want to retrieve children elements, identified by
                        a descriptor of a UI element from Object Repository.selectorFilterStringThe name of the selector filter.checkRootVisibilityBooleanIf true, checks the root visibility for all the children.recursiveBooleanIf true, performs a recursive search for all the children.TimeoutDoubleTimeout (in seconds).

# GetChildren(String, String, Boolean, Boolean, Double)

Retrieves the children of a specified target, identified by a string from Object
                Repository, while specifying the name of the selector filter, the timeout, if you
                want to perform a recursive search or to check the root visibility.

GetChildren(
    string target,
    string selectorFilter,
    [bool checkRootVisibility],
    [bool recursive],
    [double timeout])

targetStringThe target element from which you want to retrieve children elements,
                        identified by a string from Object Repository.selectorFilterStringThe name of the selector filter.checkRootVisibilityBooleanIf true, checks the root visibility for all the children.recursiveBooleanIf true, performs a recursive search for all the children.TimeoutDoubleTimeout (in seconds).

# Return value

IEnumerable

The children elements of the specified target, one at a time.
