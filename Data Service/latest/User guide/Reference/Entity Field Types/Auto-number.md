# Auto-number

An Auto-number field is used to store a unique index number for your data. It automatically increments the count for every new record.

### Details

Below is an overview of the details that can be specified to define an Auto-number field.


| Property | Description | Required | Allowed values |
| --- --- --- ---| Starting value(Int64) | Enables you to specify the starting index number of your records. The first record has this value. The following records increment from this value forward.Default value: 1 | Yes | 1 to (2^53-1) |
| Description(String) | Enables you to enter a short text to describe the purpose of the Auto-number field.The description is displayed in the Fields tab. | No |  |

The Starting value applies to existing records. For example, if you already have 36 records and the starting value is 1, newer records start counting at 37, as the existing 36 records are automatically numbered starting with 1.


### Representation in UiPath® Studio

An Auto-number field will be imported as Integer in your project.

