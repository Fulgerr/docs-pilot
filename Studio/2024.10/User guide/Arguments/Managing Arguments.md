# Managing Arguments

Arguments are used to pass data from a project to another. In a global sense, they resemble variables, as they store data dynamically and pass it on. Variables pass data between activities, while arguments pass data between automations. As a result, they enable you to reuse certain projects time and again.

Studio supports a large number of argument types, which coincide with the types of variables. Therefore, you can create Generic Value, String, Boolean, Object, Array, or DataTable arguments and you can also browse for .Net types, just as you do in the case of variables.

Additionally, arguments have specific directions (In, Out, In/Out, Property) that tell the application where the information stored in them is supposed to go.

If there are both a variable and an argument with the same name, the variable is always defaulted to and used at runtime.Passing complex In arguments (for example, of type System.Data.DataTable) to an Invoke Workflow File activity that is not isolated acts as if a reference is passed, which means any changes to the object inside the invoked workflow change the object in the main workflow. Built-in argument types (for example, Boolean) are always passed as values.

Please take into consideration that if you create an In/Out argument with an In value when used in the Invoke Workflow activity, and then change the value to Out, you may notice that an error is thrown when executing the project. This is because the Invoke Workflow activity did not return the values by reference. Use a Global Handler in your project to get access to the exact values the arguments had inside the invoked workflow.

Lastly, these arguments can be used to integrate with other tools in your company, as they are exposed in Orchestrator too. This means that any process you create can now receive input parameters through the Orchestrator API or interface, as well as return an output to all of the aforementioned. More information is available here.

## Creating Arguments

Argument names should be in upper CamelCase with a prefix stating the argument direction, such as in_DefaultTimeout, in_FileName, out_TextResult, io_RetryNumber. You can check out our Workflow Design Naming Conventions recommendations for more details.

# From the Data Manager

1. Open the Data Manager, then select New > New Argument.
2. A new item with the default name argument is added under Arguments.
3. Configure the created argument:Click the argument name to edit its name. Expand the argument using the arrow to its left, and set the Direction, Data Type, whether it is Required, and optionally, the Default Value.

From the Data Manager, you can also create arguments in bulk by right-clicking the Arguments node and then selecting Bulk Create Arguments. A new window is displayed where you can add and configure multiple arguments.

# From the Body of an Activity

![a559352-set_argument=GUID-C7B72192-7A8E-434B-B2DF-3532CA84FBE1=1=en=Default](/images/a559352-set_argument=GUID-C7B72192-7A8E-434B-B2DF-3532CA84FBE1=1=en=Default.png)

1. From the Activities panel, drag an activity to the Designer panel. Right-click a field and select Create In Argument or Create Out Argument from the context menu. Alternatively, press Ctrl+M or Ctrl+Shift+M. The Set Arg field is displayed.
2. Fill in the name and press Enter. The argument is created and visible in the field. Check its direction and type in the Arguments panel.

# From Expressions

Alternatively, arguments can be created from expressions directly in an activity input field or the Expression Editor:

1. Select a part of the expression and press Ctrl+M or Ctrl+Shift+M. The Set Arg field is displayed.
2. Fill in the name and press Enter. The argument is created. Check its type and direction in the Arguments panel.

Arguments created in these ways automatically receive the type according to the activity. For example, if you create an argument in the Data Table field of a Write Range activity, the argument's type is set to DataTable. If you create an argument in the Text field of a Write Line activity, the argument's type is set to String.

# From the Properties Panel

![7fad7b9-properties_createarg=GUID-AC692F94-DBEF-4078-88AF-4CC0DCE8FA0D=1=en=Default](/images/7fad7b9-properties_createarg=GUID-AC692F94-DBEF-4078-88AF-4CC0DCE8FA0D=1=en=Default.png)

1. In the Properties panel of any activity, right-click a field that can be edited, and select Create In Argument or Create Out Argument from the context menu. Alternatively, press Ctrl+M or Ctrl+Shift+M. The Set Arg field is displayed.
2. Fill in the name and press Enter. The argument is created and visible in the field. Check its direction and type in the Arguments panel.

The argument type is automatically generated depending on the selected property.

# From the Arguments Panel

![c8472c1-create_arg=GUID-F709CB22-030E-4923-AAC5-449FE318E970=1=en=Default](/images/c8472c1-create_arg=GUID-F709CB22-030E-4923-AAC5-449FE318E970=1=en=Default.png)

1. In the Designer panel, click Arguments. The Arguments panel is displayed.
2. Click the Create Argument line, and fill in the name. A new argument is created.By default, all arguments are of String type and have an In direction.


## Removing Arguments

You can remove variables from the Data Manager or from the Variables panel.

# From the Data Manager

1. Open the Data Manager and expand the *Variables node.
2. Right-click an argument, and then select Delete. Alternatively, select it and press the Delete key.

# From the Arguments Panel

1. Open the Arguments panel.
2. Right-click an argument, and then select Delete. Alternatively, select it and press the Delete key.

# Removing All Unused Arguments

To remove all the arguments that are not used anywhere in the current file, select Remove Unused > Arguments in the Studio ribbon, and then select Yes when prompted for confirmation.


## Configuring Argument Properties

The Argument Properties window centralizes the arguments used throughout your
            project, as well as their properties. After publishing the project, this information is
            visible in Orchestrator, Assistant, and Automation Ops - Pipelines.

To configure argument properties, open the Project panel, right-click a XAML file
            set as main or marked as an entry point to the project, and select the Argument
                Properties option. You can rearrange the arguments listed in the window by
            dragging and dropping them in the left-side menu.

Select an argument from the left-side menu and enter the following:

* Display name - The label that appears for the argument.
* Tooltip - The tooltip that is visible when you hover over the
                    argument.
* Required - Whether the
                    argument is required.

![ArgumentPropertiesWindow=GUID-6708CAC7-8DB3-4C90-893D-D5C913654EDF=1=en=Default](/images/ArgumentPropertiesWindow=GUID-6708CAC7-8DB3-4C90-893D-D5C913654EDF=1=en=Default.png)

