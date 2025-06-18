# The Arguments Panel

The Arguments panel enables you to create arguments and make changes to them. Renaming an argument in this panel automatically updates all occurrences in the current file. The base URL is : <Variable name="API_BASE_URL" />.

The following table describes the properties available for arguments.


| Property | Description |
| --- ---| Name | Mandatory.The name of your argument. If you do not add a name to an argument, one is automatically generated. For more information on how to name your arguments, see Naming Best Practices. |
| Direction | Mandatory.Select a direction for your argument. The following options are available:In – the argument can only be used within the given project.Out – the argument can be used to pass data outside of a given project.In/Out – the arguments can be used both within and outside of a given project.Property – not currently used. |
| Argument Type | Mandatory.Choose the value type you want your argument to store. The following options are available:BooleanInt32StringObjectSystem.Data.DataTableArray of [T]Browse for TypesIf you select a .Net type from the Browse and Select a .Net Type window, it is added to the Argument Type drop-down list. |
| Default Value | Optional.The default value of the argument. If this field is empty, the variable does not have a default value. |
| IsRequired | If selected, marks the argument as mandatory.This property is available in the Properties panel. [Check the installation guide](./installation.md). |

# The Context Menu for Arguments

![92928ef-args_panel_menu=GUID-E61C6D20-A410-4BE9-A68D-0555EB26D9A8=1=en=Default](/images/92928ef-args_panel_menu=GUID-E61C6D20-A410-4BE9-A68D-0555EB26D9A8=1=en=Default.png)

Right-click on an argument in the Arguments panel to open the context menu.

OptionDescriptionConvert to VariableConverts the argument into a variable of the same type as the former argument and with the top level scope. Multiple selection is available. If a variable with the same name exists, an error message is logged in the Output panel and the variable is not created.CopyCopies one or more arguments, their names, types, and default values to another workflow. If an argument with the same name exists, an error message is displayed in the Output panel.PastePastes one or more arguments, their names, types, and default values to another workflow. The argument’s scope must be reassigned. If the argument’s type isn’t found in the workflow, the option is disabled.DeleteRemoves the argument from the panel, but not from the workflow.Design PropertiesOpens the Design Properties window where you can add, edit, or delete a tooltip with comments about an argument.Add WatchAdds the current argument to the Watch panel. This is available only during debugging.Find ReferencesFind all references to the argument in the project. The results are displayed in the Find References panel.
