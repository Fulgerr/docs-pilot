# Number

A Number field is used to store a number value. Number values can be positive or negative. You must specify the number of decimal places that you want to use.

### Details

Below is an overview of the details that can be specified to define a Number field.


| Property | Description | Required | Default Value | Allowed Values |
| --- --- --- --- ---| Maximum Value | Enables you to specify the maximum value of the number that can be entered in the Number field.This can be a negative number. | Yes | 1000000000000 | Between Minimum Value and 2^53 - 1 |
| Minimum Value | Enables you to specify the minimum value of the number that can be entered in the Number field.This can be a negative number. | Yes | -1000000000000 | Between -(2^53 - 1) and Maximum Value |
| Decimal Places | Enables you to specify the maximum number of decimals that can be used for the Number field. | Yes | 2 | 0 - 10 |
| Default Value | Enables you to specify a default value for the Number field.The default value can be changed in the Data tab. | No |  |  |
| Description | Enables you to enter a short text to describe the purpose of the Number field.The Description will be displayed in Fields tab. | No |  |  |


### Representation in UiPath® Studio

A Number field will be imported as Decimal in your project.

Use "G29" or F2 as format
                strings with .ToString function on Decimal types to get
            user friendly numeric formats.

