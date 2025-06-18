# Managing Variables

In Studio, variables are used to store multiple types of data. Another key aspect of variables is that their value can change so that you can, for example, control how many times the body of a loop is executed.

Variables need to be created with different
                    names, even if used in different scopes. If two variables share the same name
                    but are in different scopes, the variable in the inner scope takes precedence.
                    You can check out our Workflow Design Naming
                            Conventions recommendations.Variable names must start with a letter or underscore _.Using certain keywords (for example, "Replace") to name variables may cause
                    unexpected errors.

From Studio's perspective, the variable's name is its unique ID and it defines the way it’s being displayed and used. If that changes or gets deleted, Studio is not able to interpret the .xaml files based on the loaded activities. All strings have to be placed between quotation marks.

If there are both a variable and an argument with the same name, the variable is always defaulted to and used at runtime.

You can manage variables in multiple ways. To benefit from the best experience and flexibility, we recommend using the Data Manager.

## Variable Type

The data stored within a variable is called a value, and it can be of multiple types. When you create a variable. the following options are available:

* Boolean - This type has only two possible values: true or false . These variables enable you to make decisions, and therefore have a better control over your workflow.
* Int32 - This type is used to store numeric information. Some of its uses are to perform equations, comparisons and pass important data.
* String - Stores text information. This type of variable can be used to store any text-based information such as employee names, usernames or any other strings.
* Object - Can be used to store different types of data. You can use this type of variable in situations where you need flexibility for the type of data you store in a variable. Make sure that the data type used in Object variables is compatible with the activities that use the variable.
* System.Data.DataTable - This type can store big pieces of information, and act as a database or a simple spreadsheet with rows and columns. Can be useful to migrate specific data from a database to another and extract information from a website and store it locally in a spreadsheet, among other uses.
* Array of [T] - Enables you to store multiple values of the same type.
* Browse for Types - Allows you to explore more types that can be relevant to your task. Using variables of types defined by the language used in the project as static results in a compilation error in Windows and cross-platform projects.


## Variable Scope

The scope property gives variables a well-defined context in which they can be used. The scope can be set to global (available in the entire project), the current workflow file, or any container activity within the workflow file.

You can only create global variables from the Data Manager.

Global variables are not serializable, and therefore incompatible with
                    long-running persistence activities.Global variables are not
                    supported in library projects. 
                    In C# projects, using a global variable or a global constant in activities
                        requires following the format:
                            GlobalVariablesNamespace.GlobalVariables.YOUR_GLOBAL_VARIABLE_NAME.
                        In VB projects, you can reference the global variable or global constant by
                        its name directly.


## Creating Variables

# From the Data Manager

1. Open the Data Manager, then select New > New Variable.
2. Configure the name, data type, scope, and default value for the variable.

# From the Body of an Activity

![a9a855f-inline_variable=GUID-EBEED8C8-A328-4523-B73D-60AB151B3BBD=1=en=Default](/images/a9a855f-inline_variable=GUID-EBEED8C8-A328-4523-B73D-60AB151B3BBD=1=en=Default.png)

1. From the Activities panel, drag an activity to the Designer panel. Either right-click a field and select Create Variable from the context menu, press Ctrl+K, or select Create Variable from the Plus menu on the right side of the field. The Set Var field is displayed.
2. Fill in the name and press Enter. The variable is created and visible in the field. Check its scope and type in the Data Manager.

From Expressions

Alternatively, variables can be created from expressions directly in an activity input
        field or the Expression Editor:

1. Select a part of the expression and press Ctrl+K. The Set Var field is displayed.
2. Fill in the name and press Enter. The variable is created. Check its scope and type in the Data Manager.

Variables created in these two ways automatically receive the type according to the
        activity. For example, if you create a variable in the Data Table field of
        a Write Range activity, the
        variable's type is set to DataTable. If you create a variable in the
          Text field of a Write Line activity, the variable's type is set
        to String.

The scope of such variables is the smallest container it is part of. The type is
        automatically generated depending on the selected property.

# From the Properties Panel

![76dfc44-createvar_contextmenu=GUID-C9819B74-D6A1-47AC-9CF7-638DAB3371A8=1=en=Default](/images/76dfc44-createvar_contextmenu=GUID-C9819B74-D6A1-47AC-9CF7-638DAB3371A8=1=en=Default.png)

1. In the Properties panel of any activity, either right-click a field and select Create Variable from the context menu, press Ctrl+K, or select Create Variable from the Plus menu on the right side of the field. The Set Var field is displayed.
2. Fill in the name and press Enter. The variable is created and visible in the field. Check its scope and type in the Data Manager.

The scope of variables created in this way is the smallest container it is part of.
        The type is automatically generated depending on the selected property.

# From the Variables Panel

![354e69b-var_panel=GUID-A7CDCA65-89E8-48D1-A2CB-54EC4F98246B=1=en=Default](/images/354e69b-var_panel=GUID-A7CDCA65-89E8-48D1-A2CB-54EC4F98246B=1=en=Default.png)

1. In the Designer panel, click Variables. The Variables panel is displayed.
2. Click the Create Variable line, and fill in the name. A new variable is created.

The default type of variables created this way is String.

# Variables automatically generated from
        activity outputs (for Windows and cross-platform projects only)

If the Auto-generate Activity Outputs design setting is enabled, Studio
        automatically populates each Output field of activities that generate an output with
        a variable. You can then use the generated variable in other activities by selecting the
          Plus menu on the right side of the
        activity input fields and then Use Variable.

If you prefer to manually create an output variable, you can do so inside the output field.
        This will replace the generated variable with the variable that you created. If you select
        the Clear value option after manually creating a variable, the default generated
        variable is restored.

The generated variable is available in the Variables panel and in the Data
          Manager (if the variable is used in another activity). As with any other variable, you
        can change the generated variable’s name, data type, scope, and default value.

The scope of the generated variable is based on the activity’s location in the workflow
        (for example, the scope is different if the activity is in the main sequence or inside a
          For each activity). The scope of the generated variable updates if you copy, cut,
        or paste the activity. Renaming an activity does not impact the generated variable. Deleting
        an activity, however:

* Clears the value of the variable if the variable is not used.
* Deletes the variable if the variable is used and a warning is displayed in the activities that used the variable as an input.


## Removing Variables

You can remove variables from the Data Manager or from the Variables panel.

# From the Data Manager

1. Open the Data Manager and expand the *Variables node.
2. Right-click a variable, and then select Delete Variable. Alternatively, select it and press the Delete key.

# From the Variables Panel

1. Open the Variables panel.
2. Right-click a variable, and then select Delete. Alternatively, select it and press the Delete key.

# Removing All Unused Variables

To remove all the variables that are defined but not used anywhere in the current file, select Remove Unused > Variables in the Studio ribbon, and then select Yes when prompted for confirmation. This also removes variables that are unused but mentioned in annotations.

If you remove or upgrade a package that may lead to a variable or argument being undefined, an Unknown Type is added in its place so that the file can be opened and edited in Studio.


## Browsing for .Net Variable Types

To search for types of variables that are not displayed by default in the Variable Type list, do the following:

1. In the Data Manager , from the Data Type dropdown for a variable, select Browse for Types . You can also access the menu from the Variable Type dropdown in the Variables panel. The Browse and Select a .Net Type window is displayed.
2. In the Type Name field, type a keyword for the variable you are looking for, such as excel. Note that the result section is updated, displaying all the .Net variable types that contain your keyword.
3. Select one and click OK. A new variable is created with the selected type and is displayed in the Variables panel. After first using a type of variable from the Browse and Select a .Net Type window, it is displayed in the Variable Type drop-down list, in the Variables panel.

Variable and argument types part of assemblies proprietary to Studio or Robot are hidden.
      Workflows that reference types from such assemblies should not be affected at runtime. To use
      a type from a non-.Net framework assembly, add it as a dependency to your project with the
      help of the Manage Packages window.

Assigning a floating point number literal (for example, 10.5) to a variable or an argument of
      type float (System.Single) results in a compilation error when running the
      workflow. To successfully assign the value, you can either:Use the f or F suffix (1.5f or
            1.5F)Use cast operators ((float)1.5 for C# or CSng(1.5) for
          VB)

