# GetAttribute

Retrieves the value of a specified attribute of the indicated UI element.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionGetAttribute(RuntimeTarget,
                                GetAttributeOptions)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by a runtime instance of an Object Repository
                                element, along with other configurations.GetAttribute(TargetAnchorableModel,
                                    GetAttributeOptions)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by the TargetAnchorableModel
                                object, along with other configurations.GetAttribute(String,
                                GetAttributeOptions)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by a string from Object Repository, along with
                                other configurations.GetAttribute(IElementDescriptor, String)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by a descriptor of an element from Object
                                Repository, while specifying the name of the attribute.GetAttribute(IElementDescriptor,
                                    GetAttributeOptions)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by a descriptor of a UI element from Object
                                Repository, along with other configurations.GetAttribute(String, String)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by a string from Object Repository, while
                                specifying the name of the attribute.GetAttribute(TargetAnchorableModel,
                                String)Retrieves the value of a specified attribute of the indicated UI
                                element, identified by the TargetAnchorableModel
                                object, while specifying the name of the attribute.

# GetAttribute(RuntimeTarget, GetAttributeOptions)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by a runtime instance of an Object Repository element, along with other
                configurations.

GetAttribute(
    RuntimeTarget target,
    GetAttributeOptions getAttributeOptions)

targetRuntimeTargetThe target from where to get the wanted attribute, identified by a runtime
                        instance of an Object Repository element.getAttributeOptionsGetAttributeOptionsAdditional options to customize the process of retrieving attribute value.
                        You can choose to customize:GetAttributeBaseOptions:
                            Attribute - The name of the attribute you want to
                                        retrieve.

# GetAttribute(TargetAnchorableModel, GetAttributeOptions)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by the TargetAnchorableModel object, along with other
                configurations.

GetAttribute(
    TargetAnchorableModel target,
    GetAttributeOptions getAttributeOptions)

targetTargetAnchorableModelThe target from where to get the wanted attribute, identified by the
                            TargetAnchorableModel object.getAttributeOptionsGetAttributeOptionsAdditional options to customize the process of retrieving attribute value.
                        You can choose to customize:GetAttributeBaseOptions: Attribute - The name of the attribute you want to
                                        retrieve.

# GetAttribute(String, GetAttributeOptions)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by a string from Object Repository, along with other configurations.

GetAttribute(
    string target,
    GetAttributeOptions getAttributeOptions)

targetStringThe target from where to get the wanted attribute, identified by a string
                        from Object Repository.getAttributeOptionsGetAttributeOptionsAdditional options to customize the process of retrieving attribute value.
                        You can choose to customize:GetAttributeBaseOptions: Attribute - The name of the attribute you want to
                                        retrieve.

# GetAttribute(IElementDescriptor, String)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by a descriptor of an element from Object Repository, while specifying the name of
                the attribute.

GetAttribute(
    IElementDescriptor elementDescriptor,
    string attribute)

elementDescriptorIElementDescriptorThe element from which you want to retrieve the attribute value, identified
                        by a descriptor of a UI element from Object Repository.attributeStringThe name of the attribute you want to retrieve.

# GetAttribute(IElementDescriptor, GetAttributeOptions)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by a descriptor of a UI element from Object Repository, along with other
                configurations.

GetAttribute(
    IElementDescriptor elementDescriptor,
    GetAttributeOptions getAttributeOptions)

elementDescriptorIElementDescriptorThe element from which you want to retrieve the attribute value, identified
                        by a descriptor of a UI element from Object Repository.getAttributeOptionsGetAttributeOptionsAdditional options to customize the process of retrieving attribute value.
                        You can choose to customize:GetAttributeBaseOptions: Attribute - The name of the attribute you want to
                                        retrieve.

# GetAttribute(String, String)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by a string from Object Repository, while specifying the name of the attribute.

GetAttribute(
    string target,
    string attribute)

targetStringThe target from where to get the wanted attribute, identified by a string
                        from Object Repository.attributeStringThe name of the attribute you want to retrieve.

# GetAttribute(TargetAnchorableModel, String)

Retrieves the value of a specified attribute of the indicated UI element, identified
                by the TargetAnchorableModel object, while specifying the name of
                the attribute.

GetAttribute(
    TargetAnchorableModel target,
    string attribute)

targetTargetAnchorableModelThe target from where to get the wanted attribute, identified by the
                            TargetAnchorableModel object.attributeStringThe name of the attribute you want to retrieve.

# Return value

String

The value of the attribute.
