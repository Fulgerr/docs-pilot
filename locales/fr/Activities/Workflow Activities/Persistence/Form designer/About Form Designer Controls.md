# About Form Designer Controls

When you drag and drop a component or when you click the Edit icon of a form component, the configuration
            wizard opens. Depending on the type of form component, certain wizard tabs are
            available, to customize it. All tabs available and their general properties in the
                UiPath Form Designer are described below.

# Display

Label

The title of the component.

Label Position

The position of the label for a field.

Description

The text that appears below the input field.

Tooltip

Adds a tooltip icon to the side of the field. Input the text of the tooltip.

Hidden

Hide a component in the Form Renderer.

Hide Label

Hide the label of a component.

Disabled

Disable a field in the form.

Placeholder

The text that appears when the field is empty.

Prefix

The text that shows before a field.

Suffix

The text that shows after a field.

Table View

When checked, shows the value within the table view of the submissions.

Input Mask

An input mask provides a predefined format. For a phone-number field, the default
                input mask is (999) 999-9999.

Input mask elements are:

* 9 - numeric
* a- alphabetical
* ***** - alphanumeric

# Data

Default Value

The value of the field before users interacting with it. The default value overrides
                the placeholder text.

Multiple Values

When checked, multiple values can be added to the field. The Add Another
                    Button becomes visible in the field.

Content

The section where you type the content of a component.

Format

The moment.js format you use for saving this field. For example,
                    HH:mm:ss.

Redraw On

Redraw this component if another component in the form changes. Choose the event when
                the component should redraw from the dropdown list. The default events to choose are
                    Any Change and Submit.

# Validation

Required

When checked, this field is required to have a value.

Validate On

Determines when this component triggers front-end validation. Choose an event from
                the dropdown list: Change or Blur.

Minimum Length

The minimum length requirement this field must meet.

Maximum Length

The maximum length requirement this field must meet.

Minimum Word Length

The minimum amount of words that can be added to this component.

Maximum Word Length

The maximum amount of words that can be added to this field.

Regular Expression Pattern

This is the regular expression pattern that the component must pass, before the form
                can be submitted.

Error Label

The label that displays when a validation error message shows.

Custom Error Message

A customized error message to be displayed if an error occurs.

# Field Key

Property Name

The name of this component in the Workflow Fields Collection.

# Conditional

The Conditional tab in the Form Designer allows you to place conditions on
                components in your form, in order to hide or display them.

The Conditional tab has a Simple section.

The Simple section of the Conditional tab allows you to hide or display
                a component, based on the value of another component.

The Simple section consists of three fields:

1. This component should Display - from this dropdown list, choose:True if you want to condition when the component displays. False if you want to condition when the component hides.
2. When the form component - from this dropdown list, choose a component in the form to act as a condition.
3. Has the value - type in the value that conditions the component when to display or hide.

Check out the tutorial about creating simple
                        conditions from the Form.Activities guide.

# Logic

The Logic tab of the Form Designer allows you to create conditions and
                advanced logic scripts that can change the state or the behavior of the selected
                form component.

Using advanced logic, you can dynamically change the controls, looks, and feel of a
                form component.

A form logic consists of two parts: the trigger and the action.

Trigger

The logic trigger is the condition upon which the action takes place. For example,
                you may want to display a specific form field only when a checkbox option is
                selected. In this case, the checkbox option is the trigger, and displaying the form
                field is the action.

There are four types of logic triggers:

Trigger typeDescriptionExampleSimpleYou define one triggering form component and
                                    value.JavascriptYou provide a JavaScript logic for a form
                                    component or form data.Use the JavaScript syntax to create complex logic, such as loop
                                    or dynamic behavior.JSON LogicYou provide a JSON logic for a form component or
                                    form data.Recommended in cases where JavaScript is not permitted.Cannot support loops or dynamic behaviors.EventYou define a component event, which once emitted
                                    by the corresponding component, triggers the desired action.

Action

The logic action is the form component behavior that should happen based on the logic
                conditions you set (i.e., the trigger). For example, you may want to activate a
                button for users of a specific age. In this case, the age range is the trigger, and
                activating the button is the action.

There are four types of logic actions:

Action typeDescriptionExamplePropertyThe trigger changes one of the available
                                    component properties, such as Tooltip, Description, CSS class,
                                    etc.The available properties depend on the type of the triggering
                                    component.ValueThe trigger changes the value of the
                                    corresponding component.The action must be defined using JavaScript syntax.Merge Component SchemaThe trigger changes the component schema
                                    parameters found in the component JSON.To see the schema parameters you can change, hover over the
                                    corresponding component and click Edit JSON.You can change multiple parameters within one action.Custom ActionYou define a custom action using JavaScript
                                    syntax, in the same you would define the JavaScript trigger
                                    type.NA

# Templates

The Templates tab is specific to the Edit Grid component only. The
                    Footer template allows you to customize the grid using JavaScript. You
                can modify the look of the footer.

Footer Template

This is the Lodash Template used to render the footer of the Edit Grid
                component.

There are two variables available:

* value - the array of row data
* components - the array of components in the grid

# File

The File tab is specific to the File component only. The File tab allows you
                to customize a File component, through specific settings and properties.

These are the properties available in the File tab

* Directory - places all the files uploaded in this component, in the directory specified. The string must end with /.
* Upload Only - allows users only to upload files. The download option will be unavailable, when checked.
* File Types - allows you to specify the file types, in order to classify the types of files that the user uploads. Recommended when a user uploads multiple types of files and you want the user to specify the type of each file uploaded.
* File Pattern - allows you to specify file extensions that will be allowed to upload. Other file extensions that are not specified, won't be uploaded.
* File Minimum Size - sets the minimum size for the uploaded file.
* File Maximum Size - sets the maximum size for the uploaded file.To learn more on how to specify file patterns and sizes, see this GitHub link.
