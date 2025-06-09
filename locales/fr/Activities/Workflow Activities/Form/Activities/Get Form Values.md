# Get Form Values

UiPath.Forms.Activities.GetFormFields.Activity

# Description

Use this activity to retrieve the values of specific form components at runtime. The
                way you retrieve the values is by using key-value pairs, where Key is
                the Property Name of the form component, and Value is the variable
                where you want to store its value.

# Project compatibility

Windows

# Configuration

Designer panelSelect Form - Select the form file you want to get
                        the values  from.Arguments
                            Collection - a collection of key-value pairs, where
                            Key is the Property Name of a form component, and
                            Value is the variable or argument where you want to store the
                        form values. You can use this collection of arguments to get the values of
                        form components.

Properties panelInstance
                            Name - If you want to get values from a specific instance of
                        a form, type the corresponding instance name here. If you want to get values
                        from any form instance shown, leave this field empty.
