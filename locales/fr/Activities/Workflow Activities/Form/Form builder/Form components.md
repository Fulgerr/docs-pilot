# Form components

Form components provide you with the ability to collect various kinds of data. To create a
      custom form, drag the desired UI components into the form and arrange them to the logic of
      your use-case.

The form components are available in the Components panel.

Form components can be associated with a specific data type, such as String,
        Double or SecureString. However, there are some form components
      that do not have a standard data type associated with them. In these cases, there are two
      possible behaviors:The form component may be hidden at
          runtime, meaning it will not be displayed to the end-user when the form is rendered. For
          example, this behavior applies for the HTML Element.Secondly, the form component may not have
          a data type itself, but instead contains other form components that do have specific data
          types. In this case, the form component serves as a container or wrapper for the other
          components, allowing them to be grouped together in a logical manner.

### Basic components

# Text Field

Data type:String

You can use the Text Field component to input short text.

![8ca9d95-text_field_component_screenshot_SUPERFINAL=GUID-06AC565C-3DFC-4904-B093-7B5F4229ED44=1=en=Default](/images/8ca9d95-text_field_component_screenshot_SUPERFINAL=GUID-06AC565C-3DFC-4904-B093-7B5F4229ED44=1=en=Default.png)

# Text Area

Data type:String

You can use the Text Area component to input long text. The Text Area component offers multi-line input.

The Rows setting allows you to set how many rows are visible in the Text Area component.

# Number

Data type:System.Double

You can use the Number component to input any number value.

![5850642-number_component_test=GUID-F54BFBBC-A4EF-4E6B-A365-D620523EC443=1=en=Default](/images/5850642-number_component_test=GUID-F54BFBBC-A4EF-4E6B-A365-D620523EC443=1=en=Default.png)

# Password

Data type:System.Security.SecureString

You can use the Password component to input passwords. The text is displayed as asterisks instead of the actual value entered for secrecy.

![8b8d917-password_component_screenshot=GUID-B94FFBDF-04BB-473A-B67F-C3597355BCF8=1=en=Default](/images/8b8d917-password_component_screenshot=GUID-B94FFBDF-04BB-473A-B67F-C3597355BCF8=1=en=Default.png)

# Checkbox

Data type:Boolean

You can use the Checkbox component to input boolean values (true or false).

![1eb1c39-checkbox_component_screenshot=GUID-14595437-6451-49C0-839E-BE19A6AFB6C3=1=en=Default](/images/1eb1c39-checkbox_component_screenshot=GUID-14595437-6451-49C0-839E-BE19A6AFB6C3=1=en=Default.png)

# Select Boxes

Data type:System.Collections.Generic.IEnumerable<System.String>

You can use the Select Boxes component to allow users to choose multiple values from a list.

![8f20310-select_boxes_component_screenshot=GUID-E847A1D2-B7F6-4866-9699-5628CDB4A6D9=1=en=Default](/images/8f20310-select_boxes_component_screenshot=GUID-E847A1D2-B7F6-4866-9699-5628CDB4A6D9=1=en=Default.png)

Values - allows you to add options to your Select Box component. The  column is the value visible to users. The Value column is the name stored in the data.

You can pass or retrieve values from a Select Boxes component, using the Set Form Values and Get Form Values activities. To do this, assign the value of the argument as a variable of type List .

# Label/Header

Data type:String

You can use the Label/Header component to add labels to other form components. You
                                                            can also use it to separate sections in your form.

![414b0f5-label_header_component_screenshot=GUID-A35CEB17-8FDB-4911-B5F6-680CC0335683=1=en=Default](/images/414b0f5-label_header_component_screenshot=GUID-A35CEB17-8FDB-4911-B5F6-680CC0335683=1=en=Default.png)

* Label Size - choose a size or type for the Label/Header component from the dropdown list.

# Drop-down List

Data type:String

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

Data type:String

You can use the Radio component to allow users to choose only one value from a list.

![26efae7-radio_component_screenshot=GUID-494D8226-EE2D-4C90-8917-7407B20141C9=1=en=Default](/images/26efae7-radio_component_screenshot=GUID-494D8226-EE2D-4C90-8917-7407B20141C9=1=en=Default.png)

* Values - input the values that appear in the list. The Label column is the value visible to users. The Value column is the name stored in the database.

# Button

Data type:String

You can use the Button component to allow users to perform various actions in the form.

![button_component=GUID-B69EF2FF-4D49-4D6B-A003-E99DE9DD0F8F=1=en=Default](/images/button_component=GUID-B69EF2FF-4D49-4D6B-A003-E99DE9DD0F8F=1=en=Default.png)

* Action - select the action you want the button to perform:Submit - submits the form.Click - performs the click operation.Reset Form - resets the form fields. Event - when a user clicks the button, a certain event starts running. When selecting Event you need to input the event in the Button Event field.
* Theme - choose the color theme of the button from the drop-down list.
* Size - choose the size of the button from the drop-down list.
* Block Button - stretches to the full width of the bounding container.
* Left / Right Icon - add the full icon class string, to show a specific icon. For example, you can add fa fa-plus.


### Advanced components

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

To display images forms, you need to use the HTML Element component. Check out
                the following tutorial .

For PDF files, you can only display them when you create a custom HTML form.

# Content

You can use the Content component to add information in your form, that is
                display-only. The value of the component is not submitted back to the workflow.

![3661120-content_component_screenshot=GUID-EDAEFC61-F8E0-467A-AB42-B623BD17A2C5=1=en=Default](/images/3661120-content_component_screenshot=GUID-EDAEFC61-F8E0-467A-AB42-B623BD17A2C5=1=en=Default.png)

* Refresh On Change - renders the Content component each time a value in the form changes.

# Email

Data type:String

You can use the Email component to add a field for inputting email
                addresses.

![fb38070-email_component_screenshot=GUID-33FD5AE3-05DF-46FB-84F0-94AFA0E0EBBC=1=en=Default](/images/fb38070-email_component_screenshot=GUID-33FD5AE3-05DF-46FB-84F0-94AFA0E0EBBC=1=en=Default.png)

# Url

Data type:System.Uri

You can use the Url component to add a field for inputting url addresses,
                ensuring they're in the correct format.

# Phone Number

Data type:String

You can use the Phone Number component to add a field for inputting phone
                numbers.

![3d14226-phone_number_component_screenshot=GUID-FA0E8296-A470-4A84-8F3C-2473333292C0=1=en=Default](/images/3d14226-phone_number_component_screenshot=GUID-FA0E8296-A470-4A84-8F3C-2473333292C0=1=en=Default.png)

* Input Mask - Provides a predefined format for the phone number. For the phone number field, the default format is (999) 999-9999.
* 9 - numeric
* a - alphabetical
* ** \* ** - alphanumeric
* Input Mask Placeholder Char - You can use a character as a placeholder in the field. For example, you can use a hyphen (-).

The placeholder
                character gets replaced by a space if it is used inside the mask.

# Date/Time

Data type:String

You can use the Date/Time component to input dates, times, or input both.

![5fdad6c-date_time_component_screenshot=GUID-F82FFAF7-B701-4926-AD3B-7E1CBAE2A26E=1=en=Default](/images/5fdad6c-date_time_component_screenshot=GUID-F82FFAF7-B701-4926-AD3B-7E1CBAE2A26E=1=en=Default.png)

* Format - the format used for displaying the datetime value.
* Enable Date Input - allows users to input dates for this field.
* Use Input to add moment.js for minDate - enables the user to use an input for theminDate moment function, instead of a calendar.
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

Data type:System.DateOnly

You can use the Day component to ask for input for Day,Month,
                and Year, either through a number-type field or a select-type field.

![74aae66-day_component_screenshot=GUID-06F2672D-FC23-4796-BF1F-285CED3DAB0E=1=en=Default](/images/74aae66-day_component_screenshot=GUID-06F2672D-FC23-4796-BF1F-285CED3DAB0E=1=en=Default.png)

* Type / Type of input - choose to give input for Day, Month, or Year either by typing in a number or by selecting options from a dropdown list.

Minimum / Maximum Year - choose the minimum / maximum year that can be
                entered.

* Require Day - the Day field must be filled in before the form renders.
* Require Month - the Month field must be filled in before the form renders.
* Require Year - the Year field must be filled in before the form renders.
* Maximum / Minimum Day - choose a minimum / maximum day that can be entered. You can also use Moment.js functions. For example, you can use moment().add(10, 'days').

# Time

Data type:System.TimeOnly

You can use the Time component to input time in different formats.

![a68a15d-time_component_screenshot=GUID-B7ED13B7-4AD7-4A63-A286-BE754C13B065=1=en=Default](/images/a68a15d-time_component_screenshot=GUID-B7ED13B7-4AD7-4A63-A286-BE754C13B065=1=en=Default.png)

* Input Type - select the type of widget you would like to use for inputting time: HTML5 Time Input (users can choose the time from a given panel) or Text Input with Mask (users can manually input the time).

# Currency

Data type:System.Double

You can use the Currency component to display financial amounts using a
                certain currency. The component has an input mask that displays the currency icon
                and automatically adds commas based on the number that the user inputs. The
                component allows two decimal values.

![15f3bca-currency_component_screenshot=GUID-32B246F0-C0D3-4687-BAD6-6B81C74D1A9B=1=en=Default](/images/15f3bca-currency_component_screenshot=GUID-32B246F0-C0D3-4687-BAD6-6B81C74D1A9B=1=en=Default.png)

* Currency - choose a certain currency from the drop-down list.

# Survey

Data type:System.Collections.Generic.Dictionary<System.String,System.String>

You can use the Survey component to allow users to answer multiple questions,
                by choosing only one value from a list.

![b32df39-survey_component_screenshot=GUID-A9E2D8CA-0494-4A40-9CC4-4BF9E29C7784=1=en=Default](/images/b32df39-survey_component_screenshot=GUID-A9E2D8CA-0494-4A40-9CC4-4BF9E29C7784=1=en=Default.png)

* Questions - add the questions that the users should answer.
* Values - add the options that the user can select per question.


### Layout components

# Columns

You can use the Columns component to display other components in
            line, grouping them as columns.

When configuring the Size parameter, you have
                the option to select the desired screen width for displaying the columns using Bootstrap
                grid classes:

* xs - phones (less than 768px)
* sm - tablets (equal to or greater than 768px)
* md - small laptops (equal to or greater than 992px)
* lg - laptops and desktops (equal to or greater than 1200px)
* xl - large monitors (equal to or greater than 1200px)

![e5172ab-columns_component_screenshot=GUID-5A183DB2-7ADD-4257-B0D7-78882ED94213=1=en=Default](/images/e5172ab-columns_component_screenshot=GUID-5A183DB2-7ADD-4257-B0D7-78882ED94213=1=en=Default.png)

* Column Properties - add columns to the component and configure them, by adjusting their Width, Offset, Push and Pull properties. After configuring the columns' layout, you can drag and drop other components into the Columns component.
* Auto adjust columns - automatically adjusts columns, if there are hidden nested components.

# Panel

You can use the Panel component to group components and add them
                inside a named panel.

![00003b4-panel_component_screenshot=GUID-A29B667D-F06C-419F-B78B-82F914AABAFB=1=en=Default](/images/00003b4-panel_component_screenshot=GUID-A29B667D-F06C-419F-B78B-82F914AABAFB=1=en=Default.png)

* Theme - choose the theme of the panel from the dropdown list. The Bootstrap class is added to the wrapper div.
* Collapsible - allows you to collapse the panel.
* Initially Collapsed - the property is available only when Collapsible is checked. Collapses the panel when the form has loaded.

# Table

You can use the Table component to create a table that holds other
                form components inside the columns and rows of the table.

![86d381f-table_component_Screenshot=GUID-D77CE39C-80CC-4D2A-8D27-776A2A9258B8=1=en=Default](/images/86d381f-table_component_Screenshot=GUID-D77CE39C-80CC-4D2A-8D27-776A2A9258B8=1=en=Default.png)

* Number of Rows / Columns - enter the number of rows or columns that you want to be displayed in the table.
* Clone Row Components - clones the components inside rows and adds them in the remaining rows, too. You can use it when creating tables with multiple rows, that contain the same content.
* Cell Alignment- choose the horizontal alignment of the cells in the table.
* Striped - adds striped shading to rows.
* Bordered - adds visible borders to the table.
* Hover - highlights row when hovering the mouse over it.
* Condensed - condenses the size of the table.

# Tabs

You can use the Tabs component to group components into tabs. When
                the form renders, you can view one tab at a time.

![30c5f94-tabs_component_Screenshot=GUID-EF4722F9-D644-4F85-9237-DEECEBA7DDA4=1=en=Default](/images/30c5f94-tabs_component_Screenshot=GUID-EF4722F9-D644-4F85-9237-DEECEBA7DDA4=1=en=Default.png)

The Tabs setting allows you to add, configure, reorder, and remove
                    tabs.


### Data components

# Data

# Hidden

You can use the Hidden component to create a resource property that
                can be custom set inside a form. It doesn't display in rendered forms.

![6c38e30-hidden_component_screenshot=GUID-442FD292-0085-4BCC-AA4E-E1745BE25741=1=en=Default](/images/6c38e30-hidden_component_screenshot=GUID-442FD292-0085-4BCC-AA4E-E1745BE25741=1=en=Default.png)

# Container

You can use the Container component to wrap a set of fields into
                an object with a container key. A Container with the key
                financialPerformance submits
                as:

{
                    data: {
                    financialPerformance {
                    grossProfitMargin: "0.83",
                    [tab]netProfitMargin: "0.43"
                    }
                    }
                    }

![2553566-container_component_updated_screenshot=GUID-5B9D8D73-639B-468F-9482-E030B6CDEB53=1=en=Default](/images/2553566-container_component_updated_screenshot=GUID-5B9D8D73-639B-468F-9482-E030B6CDEB53=1=en=Default.png)

# Data
            Map

Data type:System.Collections.Generic.Dictionary<System.String,System.String>

Use
                    the Data Map component to create key-value pairs. The component is editable at
                    runtime, so users can create new key-value paris, by clicking Add Another.The Key field is by default a Text Field and cannot be
                        changed. The Value field can be changed with other components.Label for Key column - set a
                                label to show for the Key column. If left empty, the name of the column stays as
                                Key.Disable Adding / Removing Rows -
                                hides the buttons that allow adding or removing rows when the form shows. Show Key Column Before Value -
                                select if you want the Key column to show before the Value column.Add Another Text - set the text
                                to display for the Add Another button.

The Layout tab is specific only to the Data Map component:HTML Attributes - add custom
                                HTML attributes to the component.Attributes from other
                                    components dominate the attributes that you configure.PDF Overlay - apply styling
                                settings to PDF forms.

To learn how to use the Data Map component check out the Using the Data
                            Map component tutorial.

# Data
            Grid

You can use the Data Grid component to render multiple rows of data,
                similar to a data table. You can drag and drop multiple components in the Data Grid
                to match your use case.

![e10acdb-data_grid_component_screenshot=GUID-8A5BBC76-CEB5-4897-91BB-7BC80185A88E=1=en=Default](/images/e10acdb-data_grid_component_screenshot=GUID-8A5BBC76-CEB5-4897-91BB-7BC80185A88E=1=en=Default.png)

In the Form Renderer window, the rows inside the Data Grid component
                    can be added or removed.

* Disable Adding / Removing Rows - hides the buttons that allow adding or removing rows when the form renders.
* Allow Reorder - reorder rows by dragging and dropping them.
* Equal Column Width - makes the widths of columns equal.
* Enable Row Groups - allows separating rows into groups. Add groups, label them, and select the rows for each group.
* Initialize Empty - the Data Grid will have no visible rows when initialized.

# Edit
            Grid

You can use the Edit Grid component to render multiple rows of data,
                similar to a data table. You can drag and drop multiple form components into the Edit
                    Grid, to capture loads of data.

![7ece8f7-edit_grid_component_screenshot=GUID-51E0275E-6385-454E-AAA2-C0AD062DC8DA=1=en=Default](/images/7ece8f7-edit_grid_component_screenshot=GUID-51E0275E-6385-454E-AAA2-C0AD062DC8DA=1=en=Default.png)

When the form renders, you can add a duplicate of the Edit Grid, by clicking
                        Add Another.

* Open First Row when Empty - opens the first row when the Edit Grid is empty.
* Disable Adding / Removing Rows - hides the buttons that allow adding or removing rows when the form shows.
* Add Another Text - changes the name of the Add Another button.
* Save Row Text - changes the text of the Save Row button.
* Remove Row Text - changes the text of the Remove Row button.

The Templates tab is specific to the Edit Grid component only. The
                            Header,Row, and Footer Templates allow you to customize the grid
                            using JavaScript. You can modify what type of components display in the rows within a grid
                            or the look of the header / footer.

Header Template

This is the Lodash
                                Template used to render the header of the Edit Grid component.

The Header Template
                                    doesn't work with Form Actions.

There are two variables
                                            available:

* value - the array of row data.
* components - the array of components in the grid.

Row Template

This is the Lodash Template used to render each row of the
                                                Edit Grid component.

The Row Template doesn't work with
                                                    Form Actions.

There are three variables
                                                            available:

* row - object of one row's data.
* components - the array of components in the grid.
* state - current row's state (draft/saved).

To add Click type events, add the following classes to elements:
                                                                editRow and removeRow.

Footer
                                                                    Template

This is the Lodash Template used to render the footer of the Edit
                                                                        Grid component.

There are two variables available:

* value - the array of row data.
* components - the array of components in the grid.

# Data
            Table

You can use the Data Table component to render multiple rows of data,
                similar to a data table. Data Table is a read-only component that you can use to
                display large amounts of data. You can drag and drop multiple form components into the
                Data Table component.

* Sortable - sort data inside columns in ascending or descending order. You sort the data at runtime.
* Filterable - filter data inside each column. Filter the data at runtime.
* Column(s) Resizable - change the width of the columns at runtime. The Column(s) Resizable capability allows you to see the data inside columns better.
* Pagination - display the data of the Data Table component on pages that are numbered. The pagination capability also includes setting the number of items per page.
* Inline editing - allow editing at runtime, similarly to how you would do it in Excel.

Sortable

You can sort data inside columns in ascending or descending
                    order. You sort the data at runtime, in the form.

The data in the Data Table is
                        displayed in the same order as in the input data table. To sort all data in the Data
                            Table, click any column header in the form.

* First click sorts the data in ascending order.
* Second click sorts the data in descending order.
* Third click restores the original order.

Filterable

You can filter data inside each column. You can filter the
                                data while the form is showing.

To filter data in a column:

1. Hover over the column header and click the triple bar menu.
2. Choose a filtering operation.
3. Input a value in the Filter field of the triple bar menu. The input value in the Filter field is a condition for the filtering operation.

Based on the type of data, the following filter operations are available:

Filter operationTextNumberDate/TimeContainsNot containsEqualsNot equalsStarts withEnds withLess thanLess than or equalsGreater thanGreater than or equalsIn rangeBlankNot blank

