# Change Type

UiPath.Core.Activities.ChangeType

Changes the type of a variable to another type.

# Project compatibility

Windows | Windows - Legacy

# Configuration

* Variable to change - Select the variable you want to change the type for.
* Change to type - Select the new data type to be applied on the variable. The available options are Boolean, Int32, String, Object, System.Data.DataTable, and Array of \[T\].
* Save new variable as - Save the variable with a new data type for later use.
* Set Format... - Select the format for the value of the newly created variable. This option is available only when the Change to type field has the int32 type. Click Set Format... to open the Configure Format window.

# In the Properties Panel

Options

* DisplayName - The display name of the activity.
* Variable to change - The variable for which you want to change the type.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* TypeArgument - The new type that the variable should be changed to.
* Format - The format of the new variable used in parsing/string formatting. The available options are Number and DateTime.

Output

* Save new variable as - Save a new variable with the selected type.
