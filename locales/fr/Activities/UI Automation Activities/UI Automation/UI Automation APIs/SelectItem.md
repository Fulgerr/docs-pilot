# SelectItem

Selects an item from a drop-down combo box or list box.

This API must be added after  or .

# 



# Overloads

OverloadDescriptionSelectItem(String, String)Selects an item from a UI element identified as a string from the
                                Object Repository.SelectItem(TargetAnchorableModel,
                                String)Selects an item from a UI element identified as a
                                    TargetAnchorableModel object.SelectItem(TargetAnchorableModel,
                                    SelectItemsOptions)Selects an item from a UI element identified as a
                                    TargetAnchorableModel object, along with other
                                configurations.SelectItem(String, SelectItemOptions)Selects an item from a UI element identified as a string from the
                                Object Repository, along with other configurations.

# SelectItem(String, String)

Selects an item from a UI element identified as a string from the Object
                Repository.

SelectItem(
    string target,
    string item)

targetStringThe UI element where the item you want to select is located, identified as a
                        string from the Object Repository.itemStringThe item that you want to select, identified as a string from the Object
                        Repository.

# SelectItem(TargetAnchorableModel, String)

Selects an item from a UI element identified as a
                    TargetAnchorableModel object.

SelectItem( 
    TargetAnchorableModel target,
    string item)

targetTargetAnchorableModelThe UI element where the item you want to select is located, identified as a
                            TargetAnchorableModel object.itemStringThe item that you want to select, identified as a string from the Object
                        Repository.

# SelectItem(TargetAnchorableModel, SelectItemsOptions)

Selects an item from a UI element identified as a
                    TargetAnchorableModel object, along with other
                configurations.

SelectItem(
    TargetAnchorableModel target,
    SelectItemsOptions selectItemsOptions)

targetTargetAnchorableModelThe UI element where the item you want to select is located, identified as a
                            TargetAnchorableModel object.selectItemsOptionsSelectItemsOptionsThe following options are available for configuring the select item
                            options:Item
                                    String - The item that you want to select, identified
                                as a string from the Object Repository.AlterIfDisabled Boolean - If set to
                                true, the Select Item action is executed even if the specified UI
                                element is disabled. This property does not apply if
                                    InteractionMode is set to
                                    HardwareEvents. By default, this is true.

# SelectItem(String, SelectItemOptions)

Selects an item from a UI element identified as a string from the Object Repository,
                along with other configurations.

SelectItem(
    string target,
    SelectItemOptions selectItemOptions)

targetStringThe UI element where the item you want to select is located, identified as a
                        string from the Object Repository.selectItemsOptionsSelectItemsOptionsThe following options are available for configuring the select item
                            options:Item
                                    String - The item that you want to select, identified
                                as a string from the Object Repository.AlterIfDisabled Boolean - If
                                selected, the Select Item action is executed even if the specified
                                UI element is disabled. This property does not apply if
                                    InteractionMode is set to
                                    HardwareEvents. By default, this is true.
