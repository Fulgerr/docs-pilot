# Activities

The table below shows the activities available in the Callout.Activities package
            version 2.0.5 and lower.ActivityDescriptionCallout DesignerCreate and design a callout.

### Callout Designer

UiPath.Callout.Activity.CallOutActivity

The Callout Designer activity
            must be used inside a Callout scope.

Use this activity to create a custom callout. The callout you configure retrieves all the data the end user inputs and stores it in variables which can be further used in the automation process.

To open the Callout Design editor, click Design Callout  in the body of the activity.

![ca28d45-5204990-activity_callout_designer=GUID-51F9DC00-975B-4B29-B97C-EA598AB66269=1=en=Default](/images/ca28d45-5204990-activity_callout_designer=GUID-51F9DC00-975B-4B29-B97C-EA598AB66269=1=en=Default.png)

# Properties

Common

The property in this category refers to common activity settings.

* Display Name (String) - Sets the name for this activity.

Data Bindings

The properties in this category refer to data that is linked to the automation process.

* CalloutFieldsCollection (Dictionary<String, Argument>) - Binds workflow variables into the callout field keys. Use In or In/Out directions for input form fields. Use Out or In/Out directions for output form fields.
* GenerateInputFields (Boolean) - To add the fields defined in the collection to the callout, check this box. By default, the checkbox is selected (set to true).

Format

The properties in this category refer to the form appearance and format.

* Height (Int32) - Sets the desired height for the callout, in pixels. The default height is 237.
* Width (Int32) - Sets the desired width for the callout, in pixels. The default width is 355.

Input

The property in this category refers to the JSON input data.

* CalloutFieldsInputData (String) - Passes JSON input data to the callout and overwrites the values defined in the CalloutFieldsCollection field.

Misc

The property in this category refers to miscellaneous settings.

* Private (Boolean) - To skip logging variables and arguments at Verbose level, check this box. By default, the checkbox is cleared (set to false).

Options

* Timer (Int32) - Sets the amount of time in seconds until the callout is automatically closed. By default, the Timer field is empty, meaning the callout must be closed manually.

Output

The properties in this category refer to the output object data.

* CalloutFieldsOutputData (String) - The JSON data that results from the callout after completion.
* Dismissed (Boolean) - Outputs true when the end user closes the callout without providing any input.
* SelectedButton (String) - Outputs the callout UI elements the end user interacted with.

