# Set Environment Variable

UiPath.Core.Activities.SetEnvironmentVariable

Use this activity to set an environment variable, providing the name and the value for
            it. If the variable does not already exist, it will be created automatically.

You can only set a User
                Environment Variables using this activity.

# Properties

Common

* DisplayName - The display name of the activity. This field supports only Strings or String variables.

Input

* Name - The name of the new environment variable. This field supports only Strings or String variables.
* Value - The value of the new environment variable. This field supports only Strings or String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
