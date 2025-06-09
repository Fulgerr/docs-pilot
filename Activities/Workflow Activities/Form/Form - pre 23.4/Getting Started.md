# Getting Started

UiPath Form Designer is a customized implementation of the form.io engine that provides a drag-and-drop form builder experience in UiPath Studio.

As an RPA Developer, you use the UiPath Form Designer to build form interfaces that are required in an attended or unattended automation. You set the definition, behavior, and validation for every form field.

To interact with the Form Designer, select Open Form Designer inside the Create Form activity.

![c7f7655-activity_create_form=GUID-B613A249-1499-4210-9A49-125D15D17920=1=en=Default](/images/c7f7655-activity_create_form=GUID-B613A249-1499-4210-9A49-125D15D17920=1=en=Default.png)

# Form Components

A Form component provides you with the ability to collect user data. The UI components are grouped into categories, based on their functionality, as follows:

Form Component CategoryDescriptionForm ComponentBasicContains the most used form fields.Text FieldText AreaNumberPasswordCheckboxSelect BoxesLabel/HeaderFile/FolderDrop-down ListRadioButtonAdvancedContains personal or time-related data.HTML ElementContentEmailPhone NumberDate / TimeDayTimeCurrencySurveyLayoutContains elements that alter the layout of the form.ColumnsPanelTableTabsDataContains grids and containers specialized for harvesting data.HiddenContainerData GridEdit GridGrid

To create a custom form, drag the desired UI components, drop them to the right side panel, and arrange them to the logic of your use-case.

Check the About form components page to learn more about each form component and how to configure them.

Comparison between grid control components

The table below compares the capabilities of the grid controls available in the Form Designer. The table also describes the recommended scenarios for using each grid control component: Grid, Data Grid, and Edit Grid.

Legend:  = Available
                     = Not
                available.

CapabilityGridData GridEdit GridRecommended scenariosDisplaying large number of data for read-only purposes (read-only capability)Displaying a small set of data that need to be edited by the user (inline edit capability)Displaying a small set of data that need to be edited by the user (sub-form inline edit capability)Recommended number of rowsUnlimited (100 rows pagination support)Not more than 100 rows. Risk of performance reduction beyond recommended numbersNot more than 100 rows. Risk of performance reduction beyond recommended numbersRecommended number of columnsUnlimitedMaximum 7 columns for 100 rows. Risk of performance reductionMaximum 7 columns for 100 rows. Risk of performance reductionEditablePaginationSortableFilterableColumn resizable at runtimeRow groupingLogic & ConditionsExtensive customization using templatesGlobal search

# Component Tabs

Once you select a form component, a wizard opens displaying several configuration tabs, to allow further customization for different functionality. Check progress in the preview pane of the wizard.

When you are satisfied with a component design, select Save.

The table below describes the settings available for the common wizard tabs.

Wizard TabDescriptionSpecial MentionsDisplayConfigure the way the form component is displayed.The name you set in the mandatory Label field is passed as the PropertyName in the Field Key tab.DataConfigure a default value that end users see in the text field.Components that may hold multiple items (e.g., Selectboxes, Tab) can be defined here.ValidationConfigure validation requirements to enable other UI components.Field KeyConfigure the component name you want to use further in the workflow.By default, this value is passed from the Label field of the Display tab.ConditionalConfigure conditions for the component.You can set advanced conditions, such as Javascript or JSON.LogicConfigure the logic that triggers the conditions.

Check the About Form Designer controls page to learn more about each wizard tab.

Using custom JavaScript logic may lead to security attacks, so make sure you understand the risk involved before implementing your JavaScript code.

Some form components have specific tabs, for example:

ComponentWizard TabDescriptionDate / TimeDateConfigure the minimum and maximum dates available for selection.TimeConfigure the incremental step for hours and minutes.DayDayConfigure the way the business user selects the day (incremental or from a drop-down list).MonthConfigure the way the business user selects the month (incremental or from a drop-down list).YearConfigure the way the business user selects the year (incremental or from a drop-down list), and also the minimum and maximum year available for selection.Edit GridTemplatesCustomize the headers and rows of your edit grid data.

# Managing Form Components

To reopen the configuration wizard, hover over the form component and select Edit.

To rearrange the form components, select Move and drag the form component to another location inside your form.

To edit the form component using its JSON settings, select Edit JSON. This opens the component JSON, displaying all the available settings.

To copy a component inside the form, select Copy and then select Paste below on the same component or on another one.

To remove a component from your form, select Remove.

# Managing Forms

The Form Designer ribbon has the following options:

![e95d632-form_designer_ribbon=GUID-CA24147E-D61E-410A-B476-74144081D75E=1=en=Default](/images/e95d632-form_designer_ribbon=GUID-CA24147E-D61E-410A-B476-74144081D75E=1=en=Default.png)

* Save—Saves the form you have designed.
* Save As Template—Enables you to export the form you have designed as a template that can be reused in future automation processes.
* Insert Template—Lets you browse for existing form templates and add them to the current project.
* Clear Form—Deletes all components in the current form.
* Preview—Enters a preview mode that shows you how the form looks like at runtime. This section also enables you to resize the display size of the form, or select a premade theme.

Customizing Themes

To customize a premade theme to your preference:

1. In the Preview mode, navigate to the Themes panel.
2. Select a premade theme.
3. Select Customize Current Theme.
4. Customize the form and the primary button using the available options.
5. Select Save Customization.

Renaming a customized theme creates a clone for it. The theme is cloned to avoid breaking workflows that use the same theme, but reference it with the previous name.

### About Form Designer Controls

When you drag and drop a component or when you click the Edit icon of a form component, the configuration wizard opens. Depending on the type of form component, certain wizard tabs are available, to customize it. All tabs available and their general properties in the UiPath Form Designer are described below.

# Display

Label

The title of the component.

Label Position

The position of the label for a field.

Description

The text that appears below the input field.

Tooltip

Adds a tooltip icon on one side of the icon. Input the text of the tooltip.

Custom CSS Class

Add a custom CSS class to the component. You can add multiple classes, separated by a space.

Hidden

Hide a component in the Form Renderer.

The component still appears in the JSON file.

Hide Label

Hide the label of a component.

Disabled

Disable a field in the form.

Placeholder

The text that appears when the field is empty.

Prefix

The text that is displayed before a field.

Suffix

The text that is displayed after a field.

Unique

When checked, the field is considered unique to the form.

Protected

When checked, makes the field available for input-only.

Persistent

When checked, it stores a field in the database. If you don't want to save a field to the database, uncheck Persistent.

Table View

When checked, shows the value within the table view of the submissions. You can use it for child components that you add inside Edit Grid components, to render the child components inside rows.

If left unchecked, the data doesn't display in the collapsed row of the Edit Grid. Even if the data doesn't display, you can configure a component while editing a row.

Input Mask

An input mask provides a predefined format. For example, for a phone-number field, the default input mask would be (999) 999-9999.

Input mask elements are:

* 9 - numeric
* a- alphabetical
* ***** - alphanumeric

# Data

Default Value

The value of the field before users interact with it. The default value overrides the placeholder text.

Multiple Values

When checked, multiple values can be added to the field. The values appear as an array in the API and an Add Another Button is visible on the field.

Content

The section where you type the content of a component.

Data Format

The moment.js format you use for saving this field. For example, HH:mm:ss.

Redraw On

Redraw this component if another component in the form changes. Choose the event when the component should redraw from the dropdown list. The default events to choose are Any Change and Submit.

# Validation

Required

When checked, this field is required to have a value.

Validate On

Determines when this component triggers front-end validation. Choose an event from the dropdown list: Change or Blur.

Minimum Length

The minimum length requirement this field must meet.

Maximum Length

The maximum length requirement this field must meet.

Minimum Word Length

The minimum amount of words that can be added to this component.

Maximum Word Length

The maximum amount of words that can be added to this field.

Regular Expression Pattern

The regular expression pattern that the component must pass before the form can be submitted.

Error Label

The label that displays when a validation error message shows.

Custom Error Message

A customized error message to be displayed if an error occurs.

Allow only available values

When checked, performs a validation check to make sure the value selected is an available option.

# Field Key

Property Name

The corresponding argument name for a component in the Workflow Fields
                    Collection.

# Conditional

The Conditional tab in the Form Designer allows you to place conditions on components in your form, to hide or display them.

The Conditional tab has two sections:

* Simple
* Advanced Conditions

Simple conditions

The Simple section of the Conditional tab allows you to hide or display a component, based on the value of another component.

The Simple section consists of three fields:

1. This component should Display - from this dropdown list, choose:True if you want to condition when the component displays. False if you want to condition when the component hides.
2. When the form component - from this dropdown list, choose a component in the form to act as a condition.
3. Has the value - type in the value that conditions the component when to display or hide.

Advanced conditions

The Advanced Conditions section allows you to use JavaScript code to make combinations of conditions.

Advanced Logic overrides the results of Simple conditional logic.

In the JavaScript code section, enter a custom JavaScript code.

The show variable must be given a true or false value. The data variable is used to access other components in the form, through the API key.

![82c9c4f-Advanced_Conditional_Section_screenshot=GUID-8E6E2736-A8B4-4AB6-A3A5-7B581175AF9E=1=en=Default](/images/82c9c4f-Advanced_Conditional_Section_screenshot=GUID-8E6E2736-A8B4-4AB6-A3A5-7B581175AF9E=1=en=Default.png)

To learn how to use conditional components, check the Conditional components tutorial page.

# Logic

The Logic tab of the Form Designer allows you to create conditions and advanced logic scripts that can change the state or the behavior of the selected form component.

Using advanced logic, you can dynamically change the controls, look, and feel of a form component.

A form logic consists of two parts: the trigger and the action.

Trigger

The logic trigger is the condition upon which the action takes place. For example, you may want to display a specific form field only when a checkbox option is selected. In this case, the checkbox option is the trigger, and displaying the form field is the action.

There are four types of logic triggers:

Trigger typeDescriptionExampleSimpleYou define one triggering form component and value.JavascriptYou provide a JavaScript logic for a form component or form data.Use the JavaScript syntax to create complex logic, such as loop or dynamic behavior.JSON LogicYou provide a JSON logic for a form component or form data.Recommended in cases where JavaScript is not permitted.Cannot support loops or dynamic behaviors.EventYou define a component event, which once emitted by the corresponding component, triggers the desired action.

Action

The logic action is the form component behavior that should happen based on the logic conditions you set (i.e., the trigger). For example, you may want to activate a button for users of a specific age. In this case, the age range is the trigger, and activating the button is the action.

There are four types of logic actions:

Action typeDescriptionExamplePropertyThe trigger changes one of the available component properties, such as Tooltip, Description, CSS class, etc.The available properties depend on the type of the triggering component.ValueThe trigger changes the value of the corresponding component.The action must be defined using JavaScript syntax.Merge Component SchemaThe trigger changes the component schema parameters found in the component JSON.To see the schema parameters you can change, hover over the corresponding component and click Edit JSON.You can change multiple parameters within one action.Custom ActionYou define a custom action using JavaScript syntax, in the same way you would define the JavaScript trigger type.NA


### About Form Components

A Form component provides you the ability to collect user data. The UI components are grouped into categories, based on their functionality, as follows:

* Basic
* Advanced
* Layout
* Data.

# Basic Components

# Text Field

You can use the Text Field component to input short text.

![8ca9d95-text_field_component_screenshot_SUPERFINAL=GUID-06AC565C-3DFC-4904-B093-7B5F4229ED44=1=en=Default](/images/8ca9d95-text_field_component_screenshot_SUPERFINAL=GUID-06AC565C-3DFC-4904-B093-7B5F4229ED44=1=en=Default.png)

# Text Area

You can use the Text Area component to input long text. The Text Area
        component offers multi-line input.

The Rows setting allows you to set how many rows are visible in the Text Area
        component.

# Number

You can use the Number component to input any number value.

![5850642-number_component_test=GUID-F54BFBBC-A4EF-4E6B-A365-D620523EC443=1=en=Default](/images/5850642-number_component_test=GUID-F54BFBBC-A4EF-4E6B-A365-D620523EC443=1=en=Default.png)

# Password

You can use the Password component to input passwords. The text is displayed as
        asterisks instead of the actual value entered for secrecy.

![8b8d917-password_component_screenshot=GUID-B94FFBDF-04BB-473A-B67F-C3597355BCF8=1=en=Default](/images/8b8d917-password_component_screenshot=GUID-B94FFBDF-04BB-473A-B67F-C3597355BCF8=1=en=Default.png)

# Checkbox

You can use the Checkbox component to input boolean values (true or false).

![1eb1c39-checkbox_component_screenshot=GUID-14595437-6451-49C0-839E-BE19A6AFB6C3=1=en=Default](/images/1eb1c39-checkbox_component_screenshot=GUID-14595437-6451-49C0-839E-BE19A6AFB6C3=1=en=Default.png)

# Select Boxes

You can use the Select Boxes component to allow users to choose multiple values from
        a list.

![8f20310-select_boxes_component_screenshot=GUID-E847A1D2-B7F6-4866-9699-5628CDB4A6D9=1=en=Default](/images/8f20310-select_boxes_component_screenshot=GUID-E847A1D2-B7F6-4866-9699-5628CDB4A6D9=1=en=Default.png)

Values - allows you to add options to your Select Box component. The Label
        column is the value visible to users. The Value column is the name stored in the
        data.

# Label/Header

# File/Folder Path

You can use the Label/Header component to add labels to other form components. You
        can also use it to separate sections in your form.

![414b0f5-label_header_component_screenshot=GUID-A35CEB17-8FDB-4911-B5F6-680CC0335683=1=en=Default](/images/414b0f5-label_header_component_screenshot=GUID-A35CEB17-8FDB-4911-B5F6-680CC0335683=1=en=Default.png)

* Label Size - choose a size or type for the Label/Header component from the dropdown list.

You can use the File/Folder Path component to get the file or folder path of a
        user's document.

To provide a file path in the Form Renderer:

1. Click the Select button of the File/Folder path component. The File Control window opens.
2. Select a file.
3. Click Open in the File Control window.

To provide a folder path in the Form Renderer:

1. Click the Select button of the File/Folder path component. The Browse For Folder window opens.
2. Select a folder.
3. Click OK in the Browse For Folder window.

* Selection Type - choose the type of path users can select: File or Folder.
* Show All Files - when checked, users can select any file type from the File Control. When left unchecked, the Add Extensions section is displayed, where you have to manually choose what type of files the users can select in the File Control.

You can either limit or expand the file types the user
        can select in the Add Extensions section of the Display tab.

# Drop-down List

You can use the Drop-down List component to display lists in a dropdown format.

![f288bbb-dropdown_list_component_screenshot=GUID-774940BF-63D5-4EC1-A65E-2980A8FCD2C6=1=en=Default](/images/f288bbb-dropdown_list_component_screenshot=GUID-774940BF-63D5-4EC1-A65E-2980A8FCD2C6=1=en=Default.png)

* Widget Type - select the type of widget you want to use.
* Data Source Values - input the values that appear in the dropdown list. The Label column is the value visible to users. The Value column is the name stored in the data.
* Item Template - HTML template that allows you to control the way values are displayed in the dropdown list. You can access the values in the dropdown list, through the item variable. For example, use item.label to access a certain value in the dropdown list
* Refresh Options On - refreshes data when another field changes.
* Refresh Options On Blur - refreshes data when another field is blurred.
* Clear Value on Refresh Options - clears the components value when the Refresh On Field option is changed.
* Read Only Value - only show the value when in Read-Only mode.
* Choice.js options - input raw JSON object to use as options for the Select component.
* Use exact search - disables search algorithm threshold.
* Custom Default Value - create a custom default value using JavaScript or JSONLogic.

# Radio

You can use the Radio component to allow users to choose only one value from a
        list.

![26efae7-radio_component_screenshot=GUID-494D8226-EE2D-4C90-8917-7407B20141C9=1=en=Default](/images/26efae7-radio_component_screenshot=GUID-494D8226-EE2D-4C90-8917-7407B20141C9=1=en=Default.png)

* Values - input the values that appear in the list. The Label column is the value visible to users. The Value column is the name stored in the database.

# Button

You can use the Button component to allow users to perform various actions in the
        form.

![ec03c67-button_component_screenshot=GUID-E19B5A42-3D07-40B6-B3A0-80B1EFC6D3FC=1=en=Default](/images/ec03c67-button_component_screenshot=GUID-E19B5A42-3D07-40B6-B3A0-80B1EFC6D3FC=1=en=Default.png)

* Action - select the action you want the button to perform:Submit - submits the form, and runs the Do block. Click - performs the click operation, and runs the Do block. Reset Form - resets the form fields. Event - when a user clicks the button, a certain event starts running. When selecting Event you need to input the event in the Button Event field.
* Reset Data from DO block - when checked for Click type buttons, it sets the data that is received from the Do block. Helps increase performance when the data found on other pages is not on the current page.
* Theme - choose the color theme of the button from the drop-down list.
* Size - choose the size of the button from the drop-down list.
* Block Button - stretches to the full width of the bounding container.
* Left / Right Icon - add the full icon class string, to show a specific icon. For example, you can add fa fa-plus.

# Advanced Components

# HTML Element

You can use the HTML Element to display a single HTML element in your form and
        configure it based on your use-case.

Enable the Disable
          Sanitize property inside the Create Form activity to show all
        unsafe content inside an HTML Element.

![d7eae2a-html_element_component_screenshot=GUID-AF20FD1E-0943-4317-A852-BDCB71BD54B7=1=en=Default](/images/d7eae2a-html_element_component_screenshot=GUID-AF20FD1E-0943-4317-A852-BDCB71BD54B7=1=en=Default.png)

* HTML Tag - The tag of the HTML Element.
* CSS Class - The CSS Class that can be added for this HTML Element. You can input multiple classes, by separating them with single spaces.
* Attributes - The attributes for the HTML Element. Only safe attributes are allowed, such as: src, href, and title.
* Content - the content of the HTML Element.
* Refresh On Change - re-renders the HTML Element whenever a value changes in the form.

To display images and PDF files inside forms, you need to use the HTML Element
        component. Check out the following tutorials:

* Displaying Images.
* Displaying PDF Files.

# Content

You can use the Content component to add information in your form, that is
        display-only. The value of the component is not submitted back to the server.

![3661120-content_component_screenshot=GUID-EDAEFC61-F8E0-467A-AB42-B623BD17A2C5=1=en=Default](/images/3661120-content_component_screenshot=GUID-EDAEFC61-F8E0-467A-AB42-B623BD17A2C5=1=en=Default.png)

* Refresh On Change - renders the Content component each time a value in the form changes.

# Email

You can use the Email component to add a field for inputting email addresses.

![fb38070-email_component_screenshot=GUID-33FD5AE3-05DF-46FB-84F0-94AFA0E0EBBC=1=en=Default](/images/fb38070-email_component_screenshot=GUID-33FD5AE3-05DF-46FB-84F0-94AFA0E0EBBC=1=en=Default.png)

# Phone Number

You can use the Phone Number component to add a field for inputting phone
        numbers.

![3d14226-phone_number_component_screenshot=GUID-FA0E8296-A470-4A84-8F3C-2473333292C0=1=en=Default](/images/3d14226-phone_number_component_screenshot=GUID-FA0E8296-A470-4A84-8F3C-2473333292C0=1=en=Default.png)

* Input Mask - Provides a predefined format for the phone number. For the phone number field, the default format is (999) 999-9999.
* 9 - numeric
* a - alphabetical
* \* - alphanumeric
* Input Mask Placeholder Char - You can use a character as a placeholder in the field.

The placeholder character
        gets replaced by a space if it is used inside the mask.

# Date/Time

You can use the Date/Time component to input dates, times, or input both.

![5fdad6c-date_time_component_screenshot=GUID-F82FFAF7-B701-4926-AD3B-7E1CBAE2A26E=1=en=Default](/images/5fdad6c-date_time_component_screenshot=GUID-F82FFAF7-B701-4926-AD3B-7E1CBAE2A26E=1=en=Default.png)

* Format - the format used for displaying the datetime value.
* Enable Date Input - allows users to input dates for this field.
* Use Input to add moment.js for minDate - enables the user to use an input for minDate moment function, instead of a calendar.
* Use calendar to set minDate - enables the user to use a calendar to set the minDate.
* Use Input to add moment.js for maxDate - enables the user to use an input for maxDate moment function, instead of a calendar.
* Use calendar to set maxDate - enables the user to use a calendar to set the maxDate.
* Disable specific dates or dates by range - add dates that you want to ban. For example, 2027-08-11.
* Custom Disabled Dates - allows you to ban certain dates using a customized function.
* Disable weekends - allows you to ban weekends.
* Disable weekdays - allows you to ban weekdays.
* Enable Time Input - allows users to input time for this field.
* Hour Step Size - the number of hours that have to be incremented or decremented in the time picker.
* Minute Step Size - the number of minutes that have to be incremented or decremented in the time picker.
* 12 Hour Time (AM/PM) - displays time in 12 hour periods, using AM or PM.
* Default Date - sets the default value to a specific date using Moment.js functions. For example, you can use the following function: moment().substract(10, 'days').

# Day

You can use the Day component to ask for input for Day, Month, and
          Year, either through a number-type field or a select-type field.

![74aae66-day_component_screenshot=GUID-06F2672D-FC23-4796-BF1F-285CED3DAB0E=1=en=Default](/images/74aae66-day_component_screenshot=GUID-06F2672D-FC23-4796-BF1F-285CED3DAB0E=1=en=Default.png)

* Type / Type of input - choose to give input for Day, Month, or Year either by typing in a number or by selecting options from a dropdown list.

Minimum / Maximum Year - choose the minimum / maximum year that can be entered.

* Require Day - the Day field must be filled in before the form renders.
* Require Month - the Month field must be filled in before the form renders.
* Require Year - the Year field must be filled in before the form renders.
* Maximum / Minimum Day - choose a minimum / maximum day that can be entered. You can also use Moment.js functions. For example, you can use moment().add(10, 'days').

# Time

You can use the Time component to input time in different formats.

![a68a15d-time_component_screenshot=GUID-B7ED13B7-4AD7-4A63-A286-BE754C13B065=1=en=Default](/images/a68a15d-time_component_screenshot=GUID-B7ED13B7-4AD7-4A63-A286-BE754C13B065=1=en=Default.png)

* Input Type - select the type of widget you would like to use for inputting time: HTML5 Time Input (users can choose the time from a given panel) or Text Input with Mask (users can manually input the time).

# Currency

You can use the Currency component to display financial amounts using a certain
        currency. The component has an input mask that displays the currency icon and automatically
        adds commas based on the number that the user inputs. The component allows two decimal
        values.

![15f3bca-currency_component_screenshot=GUID-32B246F0-C0D3-4687-BAD6-6B81C74D1A9B=1=en=Default](/images/15f3bca-currency_component_screenshot=GUID-32B246F0-C0D3-4687-BAD6-6B81C74D1A9B=1=en=Default.png)

* Currency - choose a certain currency from the drop-down list.

# Survey

You can use the Survey component to allow users to answer multiple questions, by
        choosing only one value from a list.

![b32df39-survey_component_screenshot=GUID-A9E2D8CA-0494-4A40-9CC4-4BF9E29C7784=1=en=Default](/images/b32df39-survey_component_screenshot=GUID-A9E2D8CA-0494-4A40-9CC4-4BF9E29C7784=1=en=Default.png)

* Questions - add the questions that the users should answer.
* Values - add the options that the user can select per question.

# Layout components

# Columns

You can use the Columns component to display other components in line, grouping them
        as columns.

![e5172ab-columns_component_screenshot=GUID-5A183DB2-7ADD-4257-B0D7-78882ED94213=1=en=Default](/images/e5172ab-columns_component_screenshot=GUID-5A183DB2-7ADD-4257-B0D7-78882ED94213=1=en=Default.png)

* Column Properties - add columns to the component and configure them, by adjusting their Width, Offset, Push and Pull properties. After configuring the columns' layout, you can drag and drop other components into the Columns component.
* Auto adjust columns - automatically adjusts columns, if there are hidden nested components.

# Panel

You can use the Panel component to group components and add them inside a named
        panel.

![00003b4-panel_component_screenshot=GUID-A29B667D-F06C-419F-B78B-82F914AABAFB=1=en=Default](/images/00003b4-panel_component_screenshot=GUID-A29B667D-F06C-419F-B78B-82F914AABAFB=1=en=Default.png)

* Theme - choose the theme of the panel from the dropdown list. The Bootstrap class is added to the wrapper div.
* Collapsible - allows you to collapse the panel.
* Initially Collapsed - the property is available only when Collapsible is checked. Collapses the panel when the form has loaded.

# Table

You can use the Table component to create a table that holds other form components
        inside the columns and rows of the table.

![86d381f-table_component_Screenshot=GUID-D77CE39C-80CC-4D2A-8D27-776A2A9258B8=1=en=Default](/images/86d381f-table_component_Screenshot=GUID-D77CE39C-80CC-4D2A-8D27-776A2A9258B8=1=en=Default.png)

* Number of Rows / Columns - enter the numbers of rows or columns that you want to be displayed in the table.
* Clone Row Components - clones the components inside rows and adds them in the remaining rows, too. You can use it when creating tables with multiple rows, that contain the same content.
* Cell Alignment- choose the horizontal alignment of the cells in the table.
* Striped - adds striped shading to rows.
* Bordered - adds visible borders to the table.
* Hover - highlights row when hovering the mouse over it.
* Condensed - condenses the size of the table.

# Tabs

You can use the Tabs component to group components into tabs. When the form renders,
        you can view one tab at a time.

![30c5f94-tabs_component_Screenshot=GUID-EF4722F9-D644-4F85-9237-DEECEBA7DDA4=1=en=Default](/images/30c5f94-tabs_component_Screenshot=GUID-EF4722F9-D644-4F85-9237-DEECEBA7DDA4=1=en=Default.png)

The Tabs setting allows you to add, configure, reorder, and remove tabs.

# Data

# Hidden

You can use the Hidden component to create a resource property that can be custom
        set inside a form. It doesn't display in rendered forms.

![6c38e30-hidden_component_screenshot=GUID-442FD292-0085-4BCC-AA4E-E1745BE25741=1=en=Default](/images/6c38e30-hidden_component_screenshot=GUID-442FD292-0085-4BCC-AA4E-E1745BE25741=1=en=Default.png)

# Container

You can use the Container component to wrap a set of fields into an object with a
        container key. A Container with the key financialPerformance submits
        as:

{
    data: {
      financialPerformance {
        grossProfitMargin: "0.83",
      netProfitMargin: "0.43"
      }
   }
}

![2553566-container_component_updated_screenshot=GUID-5B9D8D73-639B-468F-9482-E030B6CDEB53=1=en=Default](/images/2553566-container_component_updated_screenshot=GUID-5B9D8D73-639B-468F-9482-E030B6CDEB53=1=en=Default.png)

# Data Grid

You can use the Data Grid component to render multiple rows of data, similar to a
        data table. You can drag and drop multiple components in the Data Grid to match your
        use case.

![e10acdb-data_grid_component_screenshot=GUID-8A5BBC76-CEB5-4897-91BB-7BC80185A88E=1=en=Default](/images/e10acdb-data_grid_component_screenshot=GUID-8A5BBC76-CEB5-4897-91BB-7BC80185A88E=1=en=Default.png)

In the Form Renderer window, the rows inside the Data Grid component can be
        added or removed.

![4a2c64c-data_grid_rendered_screenshot=GUID-C6E329A4-2117-4C60-86AC-4434D6029EC8=1=en=Default](/images/4a2c64c-data_grid_rendered_screenshot=GUID-C6E329A4-2117-4C60-86AC-4434D6029EC8=1=en=Default.png)

* Disable Adding / Removing Rows - hides the buttons that allow adding or removing rows when the form renders.
* Allow Reorder - reorder rows by dragging and dropping them.
* Equal Column Width - makes the widths of columns equal.
* Enable Row Groups - allows separating rows into groups. Add groups, label them, and select the rows for each group.
* Initialize Empty - the Data Grid will have no visible rows when initialized.

# Edit Grid

You can use the Edit Grid component to render multiple rows of data, similar to a
        data table. You can drag and drop multiple form components into the Edit Grid, to
        capture loads of data.

![7ece8f7-edit_grid_component_screenshot=GUID-51E0275E-6385-454E-AAA2-C0AD062DC8DA=1=en=Default](/images/7ece8f7-edit_grid_component_screenshot=GUID-51E0275E-6385-454E-AAA2-C0AD062DC8DA=1=en=Default.png)

When the form renders, you can add a duplicate of the Edit Grid, by clicking Add
          Another.

![dfd0dc1-edit_grid_rendertime_screenshot=GUID-DAA1AB5C-369D-47FC-9815-2E3EF742CE3B=1=en=Default](/images/dfd0dc1-edit_grid_rendertime_screenshot=GUID-DAA1AB5C-369D-47FC-9815-2E3EF742CE3B=1=en=Default.png)

* Open First Row when Empty - opens the first row when the Edit Grid is empty.
* Disable Adding / Removing Rows - hides the buttons that allow adding or removing rows when the form renders.
* Add Another Text - changes the name of the Add Another button.
* Save Row Text - changes the text of the Save Row button.
* Remove Row Text - changes the text of the Remove Row button.

The Templates tab is specific to the Edit Grid component only. The
          Header, Row, and Footer Templates allow you to customize the grid
        using JavaScript. You can modify what type of components display in the rows within a grid
        or the look of the header / footer.

Header Template

This is the Lodash Template used to render the header of the Edit Grid
        component.

The Header
          Template doesn't work with Form Actions.

There are two variables available:

* value - the array of row data.
* components - the array of components in the grid.

Row Template

This is the Lodash Template used to render each row of the Edit Grid component.

The Row Template
        doesn't work with Form Actions.

There are three variables available:

* row - object of one row's data.
* components - the array of components in the grid.
* state - current row's state (draft/saved).

To add Click type events, add the following classes to elements:
          editRow and removeRow.

Footer Template

This is the Lodash Template used to render the footer of the Edit Grid
        component.

There are two variables available:

* value - the array of row data.
* components - the array of components in the grid.

# Grid

You can use the Grid component to render multiple rows of data, similar to a data
        table. Grid is a read-only component that you can use to display large amounts of
        data. You can drag and drop multiple form components into the Grid component.

![d08dab0-grid_component_screenshot=GUID-FB9A3056-384E-4CCE-B9D7-8F363C696BB9=1=en=Default](/images/d08dab0-grid_component_screenshot=GUID-FB9A3056-384E-4CCE-B9D7-8F363C696BB9=1=en=Default.png)

* Sortable - sort data inside columns in ascending or descending order. You sort the data at runtime, in Form Renderer.
* Filterable - filter data inside each column. Filter the data at runtime, in Form Renderer.
* Column(s) Resizable - change the width of the columns at runtime, in Form Renderer. The Column(s) Resizable capability allows you to see the data inside columns better.
* Pagination - display the data of the Grid (Preview) component on pages that are numbered. The pagination capability also includes setting the number of items per page.

To learn more about how to use the Grid component, see Using the Grid.

# Comparison between grid control components

The table below compares the capabilities of the grid controls available in the Form
        Designer. The table also describes the recommended scenarios for using each grid control
        component: Grid, Data Grid, and Edit Grid.

Legend:  = Not available.

CapabilityGridData GridEdit GridRecommended scenariosDisplaying large number of data for read-only purposes (read-only
                  capability).Displaying a small set of data that needs to be edited by the user (inline edit
                  capability).Displaying a small set of data that needs to be edited by the user (sub-form
                  inline edit capability).Recommended number of rowsUnlimited (100 rows pagination support).Not more than 100 rows. Risk of performance reduction beyond recommended
                  numbers.Not more than 100 rows. Risk of performance reduction beyond recommended
                  numbers.Recommended number of columnsUnlimited.Maximum 7 columns for 100 rows. Risk of performance reductionMaximum 7 columns for 100 rows. Risk of performance reduction.EditablePaginationSortableFilterableColumn resizable at runtimeRow groupingLogic & ConditionsExtensive customization using templatesGlobal search


### Building Your First Form

This is a step-by-step tutorial for building your first form with UiPath Form Designer. The tutorial demonstrates building a generic form .

# Tutorial

This tutorial is an example of a form assessing public opinion on environmental
                issues, composed of single choice and open-ended questions, and rating scales.

Prerequisites

Before you build your first form, make sure to have the UiPath.Form.Activities package
                installed.

To build a generic form:

1. Add a Sequence activity into your workflow.
2. Add a Create Form activity into the Sequence.
3. Select Open Form Designer. The UiPath Form Designer opens.
4. Add a Label/Header component in the form.Choose Header-Medium from the Label Size dropdown list.In the Content section type Environmental Issues Survey.Make sure to save each component after editing it.
5. Drag and drop a Radio component in the form.Rename the Label as Do you want to participate in the survey?.In the Data tab, inside the Values section, add two values for the component. Type in the Label field Yes.Click the Add Another button and then type in the Label field No.
6. Add another Radio component into the form.Rename the Label as How concerned are you about air pollution?.In the Description section, type You can choose one option only, to let the users know that they can choose one option only.In the Data tab, inside the Values section, add four values for the component. Type in the Label field Not at all concerned.Click the Add Another button and then type in the Label field Slightly concerned.Click the Add Another button and then type in the Label field Moderately concerned.Click the Add Another button and then type in the Label field Very concerned.
7. Drag and drop a Text Area component in the form and rename the Label as What is your opinion on how the government tries to reduce global warming?.
8. Drag and drop a Number component in the form and rename the Label as Please type in your age:.
9. Save the form and run the workflow to test your first form.

![c0c6def-buil_your_first_form_screenshot=GUID-752C4039-D086-4818-913F-A2F9533EBB90=1=en=Default](/images/c0c6def-buil_your_first_form_screenshot=GUID-752C4039-D086-4818-913F-A2F9533EBB90=1=en=Default.png)

See the About Form components page to learn
                more about types of components and how they work.

# Preview your first form

To preview your form, click the Preview icon, in the Form Designer ribbon.

To resize the display size (in pixels) of the form, go to the Form Display Size section and change the values for the Height and Width measurements.

![9e9345b-preview_your_first_form=GUID-29BE03B4-E7FD-4EDD-8D27-C28DFC67F872=1=en=Default](/images/9e9345b-preview_your_first_form=GUID-29BE03B4-E7FD-4EDD-8D27-C28DFC67F872=1=en=Default.gif)

To exit the Preview mode, click Exit Preview in the Form Designer ribbon.

# Select and customize themes

To select a premade theme:

1. In the Preview mode, go to the Themes panel.
2. Select one of the existing premade themes.

To customize a premade theme:

1. In the Preview mode, go to the Themes panel.
2. Select Customize Current Theme.
3. Customize the form and the primary button using the available options.
4. Select Save Customization.

# Sample Workflow

To check the complete workflows or to have a future reference, download the XAML examples


### Building Your First Data Grid

This tutorial is an example of a Data Grid that displays data about the breeds and ages of
            certain dogs. The Data Grid shows the data through a Text Field and a
                Number component.

# Tutorial

To work with the Data Grid component:

1. Drag and drop a Sequence activity into your workflow.
2. Drag and drop a Build Data Table activity into the Sequence.Go to the DataTable property and press ctrl + K on your keyboard. When Set var: appears in the Datatablefield, type in a name for the data table. For this example, type in dogBreedDataTable This creates a DataTable variable in which you store the data table.Click . The Build Data Table window opens.Rename Column1 as Breed. 2.4. Rename Column2 as Age.Remember the names of the table and columns, because you will use them as the Property Names for the components inside your form.
3. Drag and drop a Create Form activity into the Sequence.In the Properties panel, uncheck GenerateInputFields. If left checked, a component will be automatically added in the Form Designer, based on the argument type.For the FormFieldsCollection property click ellipsis. The FormFieldsCollection window opens.Create an argument named dogBreedTable. Set the Direction as In/Out, choose the type System.data.DataTable and set the value as the data table you created created, named dogBreedDataTable.
4. In the Create Form activity, click Open Form Designer.
5. Drag and drop a Data Grid component in the form.In the Display tab, rename the label of the component as Dogs Data Grid.In the Field Key tab, input the name of the data table argument created in the FormFieldsCollection property. This binds the data to the form. For this example, input dogBreedTable in the Property Name field.
6. Drag and drop a Text Field component inside the Data Grid.In the Display tab, rename the label of the component as Dog Breed.In the Field Key tab, input the name of the String column in the data table. For this example, input Breed in the Property Name field.
7. Drag and drop a Number component.In the Display tab, rename the label of the component as Dog Age.In the Field Key tab, input the name of the Int32 column in the data table. For this example, input Age in the Property Name field.
8. Save the form and run the workflow to test the capabilities of the Data Grid.

![7767964-first_data_grid_screenshot=GUID-C374E755-F65C-44E9-A27F-75720531ED93=1=en=Default](/images/7767964-first_data_grid_screenshot=GUID-C374E755-F65C-44E9-A27F-75720531ED93=1=en=Default.png)

# Sample Workflow

To check the complete workflows or to have a future reference, download the XAML example

