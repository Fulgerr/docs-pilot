# Date-Time

A Date-Time field is used to store a value that contains a date and time. A date picker can be used to select a date and time.

![8dc3755-DateTime=GUID-0EA6A81B-32AD-48D0-9620-FE32241FEA81=1=en=Default](/images/8dc3755-DateTime=GUID-0EA6A81B-32AD-48D0-9620-FE32241FEA81=1=en=Default.png)

### Should Hide Time

If you select the Should Hide Time option the field value of the Date-Time field can only contain a date value. In this case, you can only select a date from the date picker.

![06c69be-Date=GUID-CF82923B-994C-4BD5-9A45-42976B1E04D2=1=en=Default](/images/06c69be-Date=GUID-CF82923B-994C-4BD5-9A45-42976B1E04D2=1=en=Default.png)

All Date-Time and Date fields are stored as UTC dates and times in Data Service.


### Details

Below is an overview of the details that can be specified to define a Date-Time field.


| Property | Description | Required | Default Value |
| --- --- --- ---| Should Hide Time | Enables you to specify whether the Date-Time field also can contain a time value or not.If you select the Should Hide Time option, the field can only contain a date value. | Yes | No |
| Default Value | Enables you to specify a default value for the Date-Time field.The default value can be changed in the Data tab. | No |  |
| Description | Enables you to enter a short text to describe the purpose of the Date-Time field.The Description is displayed in Fields tab. | No |  |


### Representation in UiPath® Studio

A Date-Time field is imported as DateTimeOffset and a Date field is
            imported as DateTime in your project.

