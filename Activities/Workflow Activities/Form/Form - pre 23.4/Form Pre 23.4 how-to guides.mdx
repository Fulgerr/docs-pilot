# Form Pre 23.4 how-to guides

The capabilities demonstrated in these tutorials are available
            only for versions of the activity package lower than 23.4.

# Tutorials



TutorialDescriptionActivitiesReal Time
                                        FormsModify values in the form you are using without closing the form.
                                This means variables linked to the form fields you are using can be
                                easily modified without needing to close the workflow and then run
                                it again.Dynamic
                                        CheckboxesConfigure and use dynamic checkboxes. Conditional
                                        Drop-DownsSelect an option from the dropdown, based on a previous selection
                                made in another form component.Displaying a
                                        Default TabSpecify which tab to be displayed by default upon opening the
                                form.Displaying
                                        ImagesDisplay local image files, online images, Base64 encoded
                                images.Displaying PDF
                                        FilesDisplay PDF files in your forms.Displaying the Full
                                        LabelDisplay the full length of a label on multiple lines, in cases
                                where you use the Label field to enter a large
                                description.Dynamic HTML
                                        ElementsCreate HTML content that can be dynamically displayed or used in
                                any part of the form while the form is open during runtime.Managing
                                    DatesSet a minimum or a maximum date for your Date / Time
                                component of your form, as well as restrict the user selection of
                                specific dates.Searching Long
                                        Strings in Drop-downsSearch values by using the full string or sections of it.Customizing Forms
                                        Using Local CSS FilesCustomize forms using local CSS files.Executing Do Block
                                        On Checkbox ChangeConfigure activities inside the Do block to execute when a
                                specific checkbox in the form is checked or unchecked.Customizing Columns
                                        WidthSet a custom width for tables in Edit Grid and Data Grid
                                components.Updating Form
                                        DataUpdate the form without executing the Do block.Resetting
                                        Collection DataReset the data inside your form collection.Advanced
                                    logicCreate conditions and advanced logic scripts that can change the
                                state or the behavior of the selected form component.Executing Do block
                                        on dropdown option changeConfigure activities inside the Do block to execute when
                                the dropdown option changes.Reading cell values
                                        from a Data Grid componentRead the cell values from a Data Grid component. For
                                example, you will learn how to dynamically sum all values in a
                                    Data Grid column.Conditional
                                        componentsPlace conditions on components in your form, in order to hide or
                                display them.Scrolling through
                                        Data Grid componentsThis tutorial demonstrates how to scroll through the Data
                                Grid.Using the Grid
                                        componentDisplay an unlimited number of rows and columns.Dev
                                    ToolsDebug your forms and experiment with CSS styles. Calculated
                                        ValueCalculate form component values.Dynamic
                                        dropdownsAdd dynamic dropdown lists in your form, using the Drop-down
                                    List component in the Form Designer. Switching tabs with
                                        Button clickCreate a Button component that switches to the next
                                tab.Opening hyperlinks
                                        inside formOpen hyperlinks inside forms, using a Button component of
                                type Click.

#

### Real Time Forms

The Real Time Forms feature enables you to modify values in the form you are using without closing the form. This means variables linked to the form fields you are using can be easily modified without needing to close the workflow and then run it again.

To take advantage of this feature, drag and drop the desired activities inside the Do
      block of the Create Form activity. Configure the fields and buttons in the form to be
      linked to activities in the Do block.

Using Real Time Forms

Activities in the Do block execute against the fields of the form, both reading and writing data. These activities are triggered any time a button is clicked or, optionally, when the form is opened. While activities are being executed, the form remains open and editable for the end-user.

Triggering the Do Block

To trigger the activities in the Do block of the form, use buttons.

By default, a button triggers the Do loop and then closes the form.

To trigger the Do loop and keep the form open with refreshed values, add a custom property to the Field Key tab on the desired button with the key-value pair closeOnSubmit-false.

To see which button was used on a form, parse the SelectedButton property of the output object.

Updating Form Values

Values on the form can be updated by changing the corresponding variables within the Do block.

# Tutorial

Let's create a simple form containing two components: Username and City:

1. Drag and drop the Create Form activity in your sequence workflow.
2. Open the Variables panel and create two global variables, one for each component.
3. In the FormFieldsCollection property of the Create Form activity, add an In/Out argument of type String for each component, and reference them to the previously created global variables. In this way, the components are autogenerated in the form.To use the Real Time Forms feature, create buttons in the form that do not close the form once they are clicked (for example, an update button):
4. Open the Form Designer.
5. Drag and drop a Button component.
6. Navigate to the Field Key tab of the button component. Under Custom Properties, add closeOnSubmit as a Key and set the Value to false.Pay attention to the name you set for the field key. This name is used to bind the component in the form and it is case sensitive.Once this button is created, you may use activities such as If to change values in real-time in the form or the database behind the form.
7. To track the button the business user clicks, create a variable to store it: In the Properties panel of the Create Form activity > Output category > SelectedButton field, click to Create Variable for the button. As an alternative, use the CTRL + K keyboard shortcut to create the variable. The variable is also added to the Variables panel of the sequence workflow.
8. Name your button variable (for example, btn).To use form-specific buttons in the If activity, reference them by using the btn = " ... " expression. Make sure to use the correct syntax depending of your chosen programming language (C# or VB.NET). In this example, to monitor the Update button in the form.
9. Drag and drop the If activity in the Do block of the Create Form activity.
10. In the Condition field, input the expression: btn = "{button_field_key_name}" if you are using VB.NET, and btn == "{button_field_key_name}" if you are using C#. Replace the {button_field_key_name} value with the one you set at step 6.Subsequently, you can create rules for this condition.For example, once the Update button is clicked, you want to display Database Updated in the Username field:In the If activity > Then section, drag and drop the Assign activity. In the To field of the Assign activity, enter the global variable used to reference the Username field of the form. In the Value field, enter "Database Updated".Running the form now enables you to make changes in real-time, without having to close and reopen the form.

# Sample Workflow

To check the complete workflow or to have a future reference, download the archived example


### Dynamic Checkboxes

This is a step-by-step tutorial demonstrating how to configure and use dynamic checkboxes. Dynamic checkboxes allow you to view an entire list of data entries and select one or more, according to your use case. Dynamic checkboxes are created using the Select Boxes component in the Form Designer.

This tutorial demonstrates how to configure dynamic checkboxes for C# project types only.

Tutorial

To use this feature:

1. Add an Invoke Code activity into your workflow. This is where you create a List of strings, that holds the choices that appear dynamically in the form. Click Edit Arguments and create an argument named, for this example, choiceList. Set the Direction as In/Out and the Type as List<String>. In the Value field, press CTRL + k on your keyboard and create a List<String> variable, called GchoiceList. This variable holds the choices that you want to display dinamically.Click Edit code and input the initializing code snippet. Make sure to use the correct syntax depending on your chosen programming language (C# or VB.NET). For example, to define four choices for the choiceList argument, use the following code:choiceList = new List<string>();
choiceList.Add("Choice1");
choiceList.Add("Choice2");
choiceList.Add("Choice3");
choiceList.Add("Choice4");
2. Add a Create Form activity into your workflow. Open the
                            FormFieldsCollection property window. Create a
                            Dictionary<String,Boolean> type of argument. Name
                        it choices, set the Direction as
                            In/Out, and the Value as the
                            choices variable. This argument maps the choices
                        selected in the form back into the workflow. Create a
                            List<String> type of argument. Name it
                            choices_selectboxes, set the Direction as
                            In/Out, and the Value as the
                            GchoiceList variable. This argument makes the list that
                        holds the choices (Gchoicelist) to be dynamic, by adding
                        the _selectboxes suffix to it. Check GenerateInputFields. This enables the form to automatically
                            generate a Select Boxes component inside the form, based on the
                            arguments mapped in the FormFieldsCollection property window.The form
                            determines automatically that it is dealing with a set of dynamic
                            checkboxes and displays them accordingly.These checkboxes can then be later edited from the Form Designer
                            (for example, setting the minimum or maximum choices a user can
                            make).
3. Add a For Each activity into your workflow. This activity iterates through
                    every choice in the dynamic list and retrieves the name and value for each
                    choice. In the TypeArgument
                        property, choose
                            System.Collections.Generic.KeyValuePair<System.String,System.Boolean>. Inside the body of the
                        activity, type in keyVal in the ForEach field. Inside the body of the
                        activity, pass the choices variable in the In field.
4. Add a Log Message activity into the Body of the For Each activity. This activity is used to output the
                choices selected by a user inside the form. Set the Log Level as Info. In the Message property field, pass the following expression:
                            keyVal.Key +":" + keyVal.Value.

Result

The Select Boxes component is dynamically populated with the values held in the GchoiceList. For this example, a business user selects the first and second choice inside the form. When the form is submitted returns into the workflow, it displays the choices selected by the user as True and the ones that haven't been selected as False, in the Output panel.

![17f56f6-dynamic_checkboxes_Result=GUID-B26BA326-F646-49A8-AE6F-8248BE8B32B4=1=en=Default](/images/17f56f6-dynamic_checkboxes_Result=GUID-B26BA326-F646-49A8-AE6F-8248BE8B32B4=1=en=Default.png)

# Sample Workflow

To check the complete workflow or to have a future reference, download the XAML example


### Conditional Dropdowns

Conditional dropdowns enable you to select an option from the dropdown, based on a previous selection made in another form component.

For example, if you select a specific state from a dropdown list, the conditioned dropdown displays the cities in that state.

Tutorial

To use this feature:

1. Create a parent dropdown, by defining a workflow variable of type List<String> or Dictionary<String, String> . For example, stateList .
2. Create a child dropdown,  by defining a workflow variable of type Dictionary<String, List<String>> or Dictionary<String, Dictionary<String, String>>. For example, cityStateMap.
3. Drag and drop the Invoke Code activity into the workflow sequence.
4. Click Edit Arguments and add the previously created variables as In/Out arguments. Click OK.
5. Click Edit Code. Enter the code to initialize the data and populate the dropdowns with data. For example, the following code snippet initializes the dropdowns (stateList and cityStateMap) and adds items to them. // initialize the parent dropdown
stateList = new List<string>();
// add items to the parent dropdown
stateList.Add("HP");
stateList.Add("Punjab");
// initialize the child dropdown
cityStateMap = new Dictionary<string,List<string>>();
// add items to the HP-child dropdown
cityStateMap.Add("HP",new List<string>());
cityStateMap["HP"].Add("Shimla");
cityStateMap["HP"].Add("Solan");
cityStateMap["HP"].Add("Hamirpur");
// add items to the Punjab-child dropdown
cityStateMap.Add("Punjab", new List<string>());
cityStateMap["Punjab"].Add("Chandigarh");
cityStateMap["Punjab"].Add("Patiala");
cityStateMap["Punjab"].Add("Jalandhar");
6. Drag and drop the Create Form activity.
7. Store the user dropdown selection into workflow variables. For example: cityListSelected, of type List<String>—stores the list corresponding to the selected state.
selectedState, of type String—stores the selected state.
selectedCity, of type String—stores the selected city.
8. Open the FormFieldsCollection window from the activity Properties panel.
9. To define the dropdown fields in the form: Define the dropdown fields. The Name you set is used for data binding (see Dropdown Component > Field Key tab > Property name).
Additionally, define the dropdown lists by appending _dropdown to the dropdown field name.
10. In the Value column, set the user selection as follows: For the parent dropdown list, use the list defined at Step 1.
For the child dropdown list, use the variable stored at Step 7.
For the parent dropdown field, use the variable stored at Step 7.
For the child dropdown field, use the variable stored at Step 7.
11. Click OK .

Sample Workflow

To check the complete workflow or to have a future reference, download the XAML example


### Displaying a Default Tab

When working with a form that uses multiple tabs, you can specify which tab to be
            displayed by default upon opening the form.

# Tutorial

To use this feature:

1. In the Field Key tab of your Tabs Component, go to the Custom Properties field.
2. Click Add Another.
3. In the Key field enter defaultTab .
4. In the Value field enter the index number of the tab you want to display by default.The Value field support only static values.The index count for tabs starts at 0. Therefore, a 5th tab has the index number 4, a 3rd tab has the index number 2, and so on.

# Sample Workflow

Follow this example for more
                details.


### Displaying Images

You can display images in your forms:

* Local image files
* Online images
* Base64 encoded images.

Tutorials

# Dynamic Image File

To render an image dynamically:

1. Set the image file path as a variable in the FormFieldsCollection (Studio) and name it accordingly (for example, img).
2. Navigate to the Display tab of the HTML Element component (Form Designer).
3. In the Content field, add <img href={{data.img}} />.

You can set the full HTML tag containing the image as a variable. In this case, bind
                the data using only {{data.img}} in the Content field.

4. Under the Content field, check Refresh On Change.

# Base64 Encoded Image

To upload an image converted to Base64 format:

1. Store the Base64 string to a variable. For example, img.
2. In the Content field of the HTML Element component, enter the following snippet:<img href="data:image/png;base64,{{data.img}}" />This method allows you to change the image dynamically.

# Local Image File

To upload local image files in your forms:

1. Use the Content form component.
2. Click Insert Image. This prompts you to browse for the image file you want to use.

Local Image File Using HTML Element Component

To display a local image file using the HTML Element component:

1. Drag and drap a HTML Element component into your form.
2. In the Content field of the Display tab, enter <img href="/file://path-to-file" />, where path-to-file is the local path to the file you want to display.

For example, to display the image file located at
                    C:\Folder\image.jpg, enter the following snippet:

<img href="/file://c:\folder\image.jpg" />


### Displaying PDF Files

You can display PDF files in your forms.

# Tutorials

# Local PDF file

To display a PDF file inside the form:

1. Drag and drop the HTML Element component into the Form Designer.
2. In the Content field of the Display configuration tab, enter <iframe href="/file://path-to-file"></iframe>, where path-to-file is the local path to the file you want to read. For <iframe> tags we recommend using closing tags </iframe> instead of self-closing /> tags.
3. Set the height and width of the PDF file in your form by adding the width and height attributes in the <iframe> tag.For example, to display the PDF file located at C:\Folder\doc.pdf formatted as 350x500 pixels (width x height) , enter the following snippet:

<iframe href="/file://c:\folder\doc.pdf" width=350 height=500></iframe>

# Dynamic PDF File

To render a PDF file dynamically:

1. Set the PDF file path as a variable in the FormFieldsCollection (Studio) and name it pdf.
2. Navigate to the Display tab of the HTML Element component (Form Designer).
3. In the Content field, add <iframe href={{data.pdf}} width=350 height=500></iframe>. You can set the full HTML tag containing the PDF file as a variable. In this case, bind the data using only {{data.pdf}} in the Content field.
4. Under the Content field, check Refresh On Change.


### Displaying the Full Label

Display the full length of a label on multiple lines, in cases where you use the
                Label field to enter a large description.

# Tutorial

To display full label without the default trim:

1. Open your form.
2. Go to the Display tab of the desired form component.
3. In the Label field, enter the description.
4. In the Custom CSS Class field, enter show-label.
5. Click Save.


### Dynamic HTML Elements

Dynamic HTML elements enable you to create HTML content that can be dynamically displayed or used in any part of the form while the form is open during runtime. For example, you can assign an image to appear dynamically after a drop down option has been selected, then prompt the user to type in the image item in a text field.

# Tutorial

To pass a dynamic HTML element:

1. From the Create Form activity > Properties panel, open the FormFieldsCollection window.
2. Add an In argument of type String and name it suggestively.
3. Open the Form Designer and drag an HTML Element component to your form.
4. In the Display tab > HTML Tag field, add p for a new HTML paragraph.
5. In the Content field, add the type of data that you want to pass dynamically by using the expression {{data.variable}}, and replace variable with the name of the argument created at Step 2.
6. Select the Refresh on Change checkbox.To add an image in an HTML Element form field, the image has to be converted to Base64 format.To pass an image as a dynamic HTML element :
7. Convert the image to a Base64 string.
8. Save the Base64 string as a workflow variable. For example, image.
9. From the Create Form activity > Properties panel, open the FormFieldsCollection window.
10. Add an In argument of type String and name it sampleImage.
11. Set the Base64 string from Step 2 as Value.
12. Click OK to close the FormFieldsCollection window.
13. In the Form Designer > Advanced tab > HTML Element component > Content field , enter the following expression:<img href={{data.sampleImage}} height=100 width=100/>The Label/Header basic components can also be used to pass elements dynamically. This enables you to set dynamic labels and headers for form fields.


### Managing Dates

You are able to set a minimum or a maximum date for your Date / Time component of your form, as well as restrict the user selection of specific dates.

Setting a Relative Date

Removing Dates from User Selection
To make one or more specific dates unavailable for selection within the form, use the Disable specific dates or dates by range field.
Use the YYYY-MM-DD format to specify the desired dates.

The checkboxes allow you to make unavailable for selection every weekend or every weekday.

# Tutorial

To use this feature:

1. Navigate to the Date tab of your Date / Time component.
2. In the Minimum Date field, input the desired date as the earliest option for your business users.
3. In the Maximum Date field, input the desired date as the latest option for your business users.Leaving any of above fields empty permits the user the select any date on the available calendar.

# Setting a relative date

To set a relative minimum or maximum date, you may use the JavaScript library
                Moment.js.

For example, to set the minimum date 10 days prior to the current date:

1. Check the Use Input to add moment.js for minDate box.
2. Input moment().subtract(10,'days') in the Minimum Date field.
3. To set the maximum date 10 days after the current date:Check the Use Input to add moment.js for maxDate box. Input `moment().add(10,'days') in the Maximum Date field.


### Searching Long Strings in Drop-downs

Having a drop-down list in your form also allows you to search values by using the full
            string or sections of it.

# Tutorial

To find the drop-down label containing a string starting with the 27th character,
                check the Use Exact Search box in the Data tab of the Drop-down
                    List component.

However, this displays strings up to 65 characters. To search beyond this limit, open
                the Component JSON of the Drop-down List component and add the
                following properties:

...
"useExactSearch": false,
"fuseOptions": {
"distance": 800
},
"searchThreshold": 0.1
...


### Customizing Forms Using Local CSS Files

The LocalCSSFilePath field of the Create Form activity comes to greet the necessity of customizing the form to your preference.

There are some things you should consider while using the local CSS file:

* The global styles apply immediately
            after setting the CSS file path.
* Specific component styles must be
            configured as classes. Use a relevant name. (for example, .username-label or .submitButton-color ).
* Form preview doesn't display the style changes when you set the CSS file path as a
               variable. To preview the changes, use hardcoded values for the path of your CSS
               file.

The LocalCSSFilePath
         property is available starting with version 1.3.0 of the UiPath.Form.Activities pack.

# Tutorial

To design the form with specific appearance requirements:

1. Create a CSS file containing your style settings and save it on your local device. For example, to modify the label colors and to add a custom background to the form, we created the following CSS file:body { background-image: url('https://images.pexels.com/photos/6590885/pexels-photo-6590885.jpeg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover; } .lastname-label { color : red; font-size : 15px; font-weight : 10px; } .firstname-label { color : green; font-size : 17px; font-weight : 30px; } .city-label { color : blue; font-size : 19px; font-weight : 50px; } .eligible-label { color : purple; font-size : 12px; font-weight : 30px; }
2. In the Create Form activity > Format property > LocalCSSFilePath, input the path to the CSS file (for example, "/file://C:\User heCssFile.css").You may also store the path to the local CSS file as a variable, and input the variable name in the LocalCSSFilePath field.
3. Open the Form Designer and navigate to the component targeted by your customization.
4. In the Display tab of the targeted component > Custom CSS Class field, write the name of the custom CSS class configured in the file. This binds the data in the CSS file to your form. For example, to customize the label for the City drop-down, input the corresponding CSS class city-label.
5. Save the component.
6. Repeat steps 3 to 5 for every component you need to customize using your local CSS file.
7. Save the form.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Executing Do Block On Checkbox Change

You can configure activities inside the Do block to execute when a specific checkbox in the form is checked or unchecked.

# Tutorial

To use this feature:

1. Add the Create Form activity to your workflow.
2. Inside the Do block, configure the desired activities.
3. Open the Form Designer from the Create Form activity.
4. Drag and drop a Checkbox component.
5. In the Data tab, click ** Calculated Value**. This expands a list of fields.
6. In the JavaScript field, enter the following JavaScript code:const updateOnChange = instance.updateOnChange; instance.updateOnChange = function(flags, changed) { if (flags.modified) { instance.emit('execute', instance.component.key , {}); } }

The code snippet above
        triggers the execution of the activities from the Do block based on the checkbox
        change.

7. Save the form.

8. At runtime, when you make changes to the checkbox, notice the activities in the
          Do block being executed.

Result

When you select the Checkbox component, the Do block executes. For this
        example, when you select the Checkbox component, a Message Box pops up.



Known issue: The
          Do block executes twice: when you select the Checkbox component and when you
        submit the form.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Customizing Columns Width

Tables in your form sometimes need wider or narrower columns, rather than columns with the same width. You can set a custom width for tables in Edit Grid and Data Grid components.

# Tutorial

The next tutorial provides steps on how to modify the width for Column3 in
        a table saved as myTable.

Building the Data Table

To create a table to use inside your form:

1. Inside your workflow, add the Build Data Table activity.
2. Click DataTable... . The Build Data Table wizard opens.
3. Add the desired columns for your table and edit their properties.Make sure the columns name have no spaces or special characters, as you use these names to link the columns in the form through the Field Key component tab.
4. Click OK to save the table.
5. In the Properties panel > Output field of the Build Data Table activity, set a variable name for your table (for example, myTable ).You use this variable to bind the table to the form through the FormFieldsCollection property of the Create Form activity.

# Binding the Data Table to your Form and Grid Components

To bind the data table to your form:

1. Add the Create Form activity in your workflow.
2. In the Properties panel > FormFieldsCollection field, click on the three dots menu (fa-ellipsis-v:) . The FormFieldsCollection wizard opens.
3. Create an argument and link it to the previously created table using the variable (i.e., myTable). Set the argument Direction to In/Out and the Type to DataTable. Give a Name to your argument, for example table.
4. Click OK.Make sure that GenerateInputFields box is unchecked.

# To bind the data table to the Edit Grid or Data Grid component:

Open the Form Designer from the
              Create Form activity. From the Data category, drag and
            drop a grid component (i.e., Edit Grid and/or Data Grid). In the Field Key tab of your grid, reference the table argument (i.e.,
                table).The Field Key value is case sensitive.Add text components into your grid to replicate the columns in your table. Save each
              text component.For example, if your table has three columns called Column1,
                Column2, and Column3, drag and drop three text
                components into your grid, and make sure to use the column names from the table
              into the components Field Key tab.The Field Key value is case sensitive.Save the form.

# Customizing Columns Width in Edit Grid Components

Using Bootsrap 3

1. Go to the Edit Grid Component settings .
2. In the Templates tab > Header Template section, change the default generated code with the following template:<div class="row"> {% util.eachComponent(components, function(component) { %} {% if (displayValue(component)) { %} {% if (component.key=== 'Column3') { %} <div class="col-sm-8"> {% } %} {% if (component.key !== 'Column3') { %} <div class="col-sm-2"> {% } %} {{ component.label }}</div> {% } %} {% }) %} </div>
3. In the Templates tab > Row Template section, change the default generated code with the following template:<div class="row"> {% util.eachComponent(components, function(component) { %} {% if (!component.hasOwnProperty('tableView') || component.tableView) { %} {% if (component.key=== 'Column3') { %} <div class="col-sm-8"> {% } %} {% if (component.key !== 'Column3') { %} <div class="col-sm-2"> {% } %} {{ getView(component, row[component.key]) }} </div> {% } %} {% }) %} {% if (!instance.options.readOnly && !instance.disabled) { %} <div class="col-sm-2"> <div class="btn-group pull-right"> <button class="btn btn-default btn-light btn-sm editRow"><i class="{{ iconClass('edit') }}"></i></button> {% if (!instance.hasRemoveButtons || instance.hasRemoveButtons()) { %} <button class="btn btn-danger btn-sm removeRow"><i class="{{ iconClass('trash') }}"></i></button> {% } %} </div> </div> {% } %} </div>Notice that you compare the component.key value to the exact name of the column, which is the same one used in the Field Key tab of each text component (step 4 in binding the data table to Edit Grid or Data Grid components).UiPath Forms are using the Bootstrap 3 framework. The total width of the table is divided into 12 sections. Therefore, make sure that any division you make, it adds up to 12. In this example, two columns with col-sm-2 class take up 4 sections, leaving the remaining 8 for the third column (col-sm-8).

Using Style property

1. Hover over the Edit Grid component and click Edit. The configuration page opens.
2. Navigate to the Templates tab.2.1. In the Header Template script, identify all <div class="col-sm-2"> tags and add your custom width as follows: style="width:{your_custom_width}px !important". The width must be expressed in pixels.2.2. In the Row Template script, identify all <div class="col-sm-2"> tags and add your custom width as follows: style="width:{your_custom_width}px !important". The width must be expressed in pixels.The "col-sm-2" element represents the default column width. You can modify the default column width by adding a customized style tag. For example style="width:70px !important" applies a width of 70 pixels to all Edit Grid columns.
3. Save your component and the form.

# Customizing Columns Width in Data Grid Components

Create a local CSS file with the desired column widths. In our example, the following
              template creates a wider Column3 (i.e.,
              nth-child(3)):.mygrid tbody>tr>:nth-child(1){ 
width: 70px;
}
.mygrid tbody>tr>:nth-child(2){ 
width: 15%;
}
.mygrid tbody>tr>:nth-child(3){ 
width: 60%;
}In the Properties panel >
              LocalCSSFilePath field of the Create Form activity, reference the
            previously created CSS file. For
              example,"/file://C:\User\Desktop\EditColumnWidth.css". In the Data Grid component >
              Display tab > Custom CSS Class field, enter the name of the CSS class
            (for example, mygrid).

# Sample Workflow

To check the complete workflows or to have a future reference, download the XAML examples


### Updating Form Data

Clicking buttons in forms usually triggered the execution of the Do block. A new functionality called Use for Local Update is available for the Click action of a Button component. It allows you to update the form without executing the Do block.

# Tutorial

The next tutorial explains how to create buttons to navigate between several pages of a
        form.

1. Open the Form Designer from the Create Form activity.
2. Drag and drop several Panel components or any other components of your choice.In this example, each panel component represent a different page of the form, collecting different information.
3. Drag and drop a Hidden component (from the Data category). This is used to track the current panel number.For this example, set the component Label as StepId. By default, the Field Key name is set as stepId.
4. Navigate to each Panel component > Conditional tab and set the conditions for displaying the panel.In this example, each panel is displayed only when the stepId is equal to the panel number. To achieve this:In the Simple conditions section > This component should Display field, select True.In the When the form component field, select StepId.In the Has the value field, input the number of the panel (e.g., first panel—1, second panel—2, and so on).
5. Inside each Panel component, drag and drop Button components, as follows:For the first panel, add one Button component to navigate to the second panel (e.g, Next Step). For the last panel, add one Button component to navigate to the previous panel (e.g., Prev Step). For the in-between panels, add two Button components: one to navigate to the previous panel, and one to navigate to the next one.
6. Navigate to each button Display tab. Set the button Action to Click. The Use for Local Update checkbox is displayed. This is the feature that allows the navigation between form panels on button click, without executing the Do block.
7. Check the Use for Local Update box. The Update Data Logic code editor is displayed.
8. Use the predefined JavaScript snippet and enter the data you want to update between the curly brackets. Make sure you use the Field Key names of the form components you want to update (the ones set at step 3).The JavaScript snippet has the following template: instance.emit('updateData', {[field_key_name]:[field_key_update_value]});, where [field_key_name] represents the component field key, and [field_key_update_value] represents the new value for the component.For this example, use the following snippets:For Next Step buttons—instance.emit('updateData', {stepId:X});, and replace X with the number of the next panel (e.g., for the button in the second panel, use instance.emit('updateData', {stepId:3});) For Prev Step buttons—instance.emit('updateData', {stepId:Y});, and replace Y with the number of the previous panel (e.g., for the button in the second panel, use instance.emit('updateData', {stepId:1});)



# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Resetting Collection Data

A new Button functionality allows you to reset the data inside your form collection.

The Reset Data from DO block checkbox is available for Button actions of type
                Submit and Click.

# Tutorial

To reset a collection populated by the activities inside your DO block:

1. Open the Form Designer from the Create Form activity.
2. Drag and drop a Button component.
3. Set the button action to Submit or Click.
4. Check the Reset Data from DO block box.


### Advanced Logic

The Logic tab of the Form Designer allows you to create conditions and advanced logic scripts that can change the state or the behavior of the selected form component.

Using advanced logic you can dynamically change the controls, looks and feel of a form component.

A form logic consists of two parts: the trigger and the action.

Trigger The logic trigger is the condition upon which the action takes place. For example, you may want to display a specific form field only when a checkbox option is selected. In this case, the checkbox option is the trigger, and displaying the form field is the action.

There are four types of logic triggers:


| Trigger type | Description | Example |
| --- --- ---| Simple | You define one triggering form component and value. |  |
| Javascript | You provide a JavaScript logic for a form component or form data.Use the JavaScript syntax to create complex logic, such as loop or dynamic behavior. |  |
| JSON Logic | You provide a JSON logic for a form component or form data.Recommended in cases where JavaScript is not permitted.Cannot support loops or dynamic behaviors. |  |
| Event | You define a component event, which once emitted by the corresponding component, triggers the desired action. |  |

Action

The logic action is the form component behavior that should happen based on the logic conditions you set (i.e., the trigger). For example, you may want to activate a button for users of a specific age. In this case, the age range is the trigger, and activating the button is the action.

There are four types of logic actions:


| Action type | Description | Example |
| --- --- ---| Property | The trigger changes one of the available component properties, such as Tooltip, Description, CSS class, etc.The available properties depend on the type of the triggering component. |  |
| Value | The trigger changes the value of the corresponding component.The action must be defined using JavaScript syntax. |  |
| Merge Component Schema | The trigger changes the component schema parameters found in the component JSON.To see the schema parameters you can change, hover over the corresponding component and click Edit JSON.You can change multiple parameters within one action. |  |
| Custom Action | You define a custom action using JavaScript syntax, in the same you would define the JavaScript trigger type. |  |

# Tutorial

To configure an advanced logic:

1. Open the Form Designer in the Create Form activity.
2. Drag and drop components into your form. Pay attention to their field keys, as you might use those in your advanced logic.
3. Navigate to the Logic tab of the component you want to change (i.e., the component upon which the action should take place).
4. Click +Add Logic. You can add as many logics as you want.
5. Enter a name for your logic.
6. In the Trigger pane, select the type of trigger you want to use in your logic. The available types are Simple, Javascript, JSON Logic, and Event. Set the desired conditions to trigger the action.
7. In the Action pane, click +Add Action. You can add as many actions as you want, all triggered by the logic that groups them.
8. Enter a name for your action.
9. Select the type of action you want to use. The available types are Property, Value, Merge Component Schema, and Custom Action. Set the desired effect of your action.
10. When you are all set, click Save Action.
11. To save your logic, click Save Logic.

The above procedure applies generically to any type of trigger or action. For a detailed procedure, check out the specific tutorials, which provide examples of each specific trigger and action type

* Trigger type: Javascript & Action type: ValueSumming up two text fields dynamically
* Trigger type: Simple & Action type: PropertyHiding a field dynamically
* Trigger type: Simple & Action type: Merge Component SchemaChanging the title color dynamically
* Trigger type: Event & Action type: Custom ActionSetting a form field to default using events
* Trigger type: JSON Logic & Action type: PropertyDisplaying a component based on user input

# Summing up two text fields dynamically

Trigger type: JavaScript Action type: Value

This advanced logic sums up two text fields, based on the condition that the user interacts with the corresponding text fields.

1. Open the Form Designer in the Create Form activity.
2. Drag and drop three Text Field components into your form.
3. Name two of the text field components as A and B, and name the third one as Total. Pay attention to their field keys, as you use those in your advanced logic.Optionally, you can set the Total text field component as Disabled, so business users cannot interact with it.
4. Go to the Logic tab of the Total field component.
5. Add a logic and name it "dynamic sum".
6. Select the Javascript trigger type, and enter the following script in the Text Area section:result = true; return result;The above snippet detects if there are any changes in the text fields, i.e., the user interacts with the text fields, and triggers the action to sum up the fields.
7. Add an action and name it "a+b".
8. Select the Value action type, and enter the following script in the Value (Javascript) section:result = (+data.a) + (+data.b); return result;Replace a and b with the field keys values of the text field components.
9. Save the action and the logic.
10. Save the component.

At runtime, if the business user interacts with text fields A and B, the Total field gets automatically filled in, displaying the sum of A and B.

# Hiding a field dynamically

Trigger type: Simple Action type: Property

This advanced logic hides a form field (i.e., the Child field) when the user inputs "hide" in another form field (i.e., Parent field).

1. Open the Form Designer in the Create Form activity.
2. Drag and drop two Text Field components.
3. Name one of the text field components as Parent field, and the other one as Child field. Pay attention to their field keys, as you use those in your advanced logic.
4. Go to the Logic tab of the Child field component.
5. Add a logic and name it "hide input".
6. Select the Simple trigger type.6.1. From the When the form component dropdown menu, select Parent field ({parentField_field_key}).6.2. In the Has the value field, enter "hide".The above configuration detects if the user input the string "hide" in the parent field and triggers the action to hide the child field.
7. Add an action and name it "hide".
8. Select the Property action type.8.1. From the Component Property dropdown menu, select Hidden.8.2. From the Set State dropdown menu, select True.
9. Save the action and the logic.
10. Save the component.

At runtime, if the business user inputs "hide" in the parent field, the child field becomes hidden.

# Changing the title color dynamically

Trigger type: Simple Action type: Merge Component Schema

This advanced logic changes the label color of a text field component when the user select the desired color from a list. The change applies using a custom CSS file.

Prerequisites:

Create a CSS file containing the new color for the text field label and reference it in the Create Form activity, in the LocalCSSFilePath activity property.

![02db4e8-FORMS_Logic_custom_css=GUID-21132F50-E69B-4797-BAEA-B5856CB1700D=1=en=Default](/images/02db4e8-FORMS_Logic_custom_css=GUID-21132F50-E69B-4797-BAEA-B5856CB1700D=1=en=Default.png)

For example, the CSS snippet below contains a class that sets the label color to green or red:

.textFieldLabel-green 
{
   color : green;
}
.textFieldLabel-red 
{
   color : red;
}

After referencing the CSS file in the Create Form properties, design your form following the steps below:

1. Open the Form Designer in the Create Form activity.
2. Drag and drop one Text Field component and one Radio component. Pay attention to their field keys, as you use those in your advanced logic.
3. In the Display tab of the text field component, set a default Custom CSS Class. For example, to set red as the default color of the text field, use the textFieldLabel-red class. The class must be defined in the CSS file from the prerequisites documented above.
4. For the Radio component, add two values for the colors green and red.
5. Go to the Logic tab of the Text Field component.
6. Add a logic and name it "color selection".
7. Select the Simple trigger type.7.1. From the When the form component dropdown menu, select Radio ({radio_field_key}).7.2. In the Has the value field, enter "green".The above configuration detects if the user selects "green" from the radio options and triggers the action to change the text field label color.
8. Add an action and name it "change color using css".
9. Select the Merge Schema Component action type and enter the following snippet:return { customClass: "textFieldLabel-green" }
10. Save the action and the logic.
11. Save the component.

At runtime, if the business user selects the "green" radio button, the label of the text field becomes green. If the user selects the "red" radio button, the label of the text field becomes red.

# Setting a form field to default using events

Trigger type: Event Action type: Custom Action

This advanced logic changes the content of a text field when the user clicks a button. The button emits an event based on which the text field content changes to a default text.

1. Open the Form Designer in the Create Form activity.
2. Drag and drop one Text Field component and one Button component. Pay attention to the components field keys, as you use those in your advanced logic.
3. In the Display tab of the button component:3.1. Label the button component as Change value to "Default"3.2. Set the button Action as Click3.3. Select the Use for Local Update checkbox.3.4. Input the following snippet in the Update Data Logic section. This emits the event called resetTextField every time the user clicks the button.instance.emit('resetTextField', {});3.5. Save the button component.
4. Go to the Logic tab of the text field component.
5. Add a logic and name it "reset".
6. Select the Event trigger type.
7. In the Event Name field, enter the name of the event emitted when clicking the button. (i.e., resetTextField).The above configuration detects when the user click the Change value to "Default" button and replaces the text field existing content to "Default".
8. Add an action and name it "default".
9. Select the Custom Action action type.
10. Input the following snippet in the Custom Action (Javascript) section.return "Default"
11. Save the action and the logic.
12. Save the component.

At runtime, if the business user clicks the Change value to "Default" button, the resetTextField event is emitted. The trigger listens to the event and replaces the existing text field content to "Default".

# Displaying a component based on user input

Trigger type: JSON Logic Action type: Property

This advanced logic displays the content of an HTML component (in this case, an image) when the user inputs the required text.

1. Open the Form Designer in the Create Form activity.
2. Drag and drop one Text Field component and one HTML Element component. Pay attention to the components field keys, as you use those in your advanced logic.
3. In the Display tab of the text field component:3.1. Label the text field component as "Type "Show me"".3.2. Add the Description "Must be an exact match (case sensitive)", to indicate users they must input the text as required.3.3. Save the text field component.
4. In the Display tab of the HTML element component:4.1. In the Content section, reference the image you want to display. For example: <img href="https://picsum.photos/200/300" />.4.2. Select the Hidden checkbox, to hide the image from displaying by default. 4.3. Save the HTML element component.
5. Go to the Logic tab of the HTML element component.
6. Add a logic and name it "user input".
7. Select the JSON Logic trigger type.
8. Input the following snippet in the JSON Logic section, and replace {text_field_component_field_key} with the field key value you set for your text field component.{ "===": [ { "var": "data.{text_field_component_field_key}" }, "Show me" ] }The above configuration detects when the user inputs "Show me" and only then sets the value of the HTML element Hidden property to False, thus displaying the corresponding HTML content.
9. Add an action and name it "display image".
10. Select the Property action type.10.1. From the Component Property dropdown menu, select Hidden.10.2. From the Set State dropdown menu, select False.
11. Save the action and the logic.
12. Save the component.

At runtime, if the user inputs the required text in the text field, the form displays the HTML content.

# Sample Workflow

To check the complete workflow or to have a future reference, download the XAML example


### Executing Do Block on Dropdown Option Change

You can configure activities inside the Do block to execute when the dropdown option changes.

# Tutorial

To use this feature:

1. Add the Create Form activity to your workflow.
2. Inside the Do block, configure the desired activities.
3. Open the Form Designer from the Create Form activity.
4. Drag and drop a Drop-down List component.
5. In the Data tab > Data Source Values section, add your dropdown options.
6. Scroll down to the Custom Default Value section and expand it.
7. In the JavaScript subsection, enter the following JavaScript code:const updateOnChange = instance.updateOnChange; instance.updateOnChange = function(flags, changed) { if (flags.modified) { instance.emit('dropdownChanged', 'drop'); } return updateOnChange.call(instance, flag, changed); }The code snippet above triggers the execution of the activities from the Do block when the dropdown option changes.
8. Save the form.
9. At runtime, when you change the dropdown option, notice the activities in the Do block being executed.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Reading Cell Values From a Data Grid Component

You can read the cell values from a Data Grid component. For example, you will learn how to dynamically sum all values in a Data Grid column. For any new item, the Total Quantity field displays the new total value.

# Tutorial

To use this feature:

1. Add the Create Form activity to your workflow.
2. Open the Form Designer from the Create Form activity.
3. Drag and drop a Data Grid component.
4. Inside the Data Grid component, drag and drop one Text Field component to store the item name (label it as Item).
5. Inside the Data Grid component, drag and drop one Number component to store the item quantity (label it as Quantity).
6. Outside of the Data Grid component, drag and drop a Text Field component, to display the total quantity of all items in the Data Grid. This requires an advanced logic.6.1. Label the component as Total Quantity.6.2. Select the Disabled checkbox on the component Display tab. This makes the field read-only.6.3. On the Logic tab, click Add Logic to configure the trigger and the action to sum up the values.6.4. In the Trigger section > Logic Name field, enter a name for your logic.6.5. Select the trigger Type as Simple. Leave the rest of the fields empty, so the logic triggers for any Data Grid change.6.6. In the Actions section > Action Name field, enter a name for your action. In this case, the triggered action is to update the total value, so we used updateValue as the action name.6.7. Select the Value action type, and enter the following script in the Value (Javascript) section:var result = 0; for (var i = 0; i < data.dataGrid.length; i++) { result += +(data.dataGrid[i].number); } return result;The code snippet above iterates through the existing values in the Data Grid and sums them up. Any new value restarts the iteration, thus updating the total value.6.8. Save the action and the logic. 6.9. Save the Text Field component.
7. Save the form.
8. At runtime, when you add a new item to the grid, notice the Total Quantity value being updated.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Conditional Components

The Conditional tab in the Form Designer allows you to place conditions on components in your form, in order to hide or display them.

The Conditional tab has two sections:

* Simple
* Advanced Conditions

Simple conditions

The Simple section of the Conditional tab allows you to hide or display a component, based on the value of another component.

The Simple section consists of three fields:

1. This component should Display - from this dropdown list, choose: True if you want to condition when the component displays.
False if you want to condition when the component hides.
2. When the form component - from this dropdown list, choose a component in the form to act as a condition.
3. Has the value - type in the value that conditions the component when to display or hide.

Advanced conditions

The Advanced Conditions section allows you to use JavaScript code to make combinations of conditions.

Advanced Logic overrides the results of the Simple conditional logic.

In the JavaScript code section, enter a custom JavaScript code.

The show variable must be given a true or false value. The data variable is used to access other components in the form, through the API key.

![115b76f-Advanced_Conditional_Section_screenshot=GUID-4BB66D00-989C-415B-AF2A-57725B37DB0F=1=en=Default](/images/115b76f-Advanced_Conditional_Section_screenshot=GUID-4BB66D00-989C-415B-AF2A-57725B37DB0F=1=en=Default.png)

# Tutorial

Simple conditions

To configure a simple condition logic:

1. Open the Form Designer in the Create Form activity.
2. Drag and drop components into your form. For this example, drag and drop the following:Two Checkbox components 2.2. One Number component 2.3. One Text Field component.Pay attention to the field keys of each component. You need them to create your conditional logic.
3. Navigate to the Conditional tab of the Text Field component and go to the Simple section.This component should Display - choose True from the dropdown list. This creates the condition under which the Text Field component displays. If you want to hide the component, choose False 3.2. When the form component - choose the Number component from the dropdown list.Has the value - type in the value of the Number component that conditions the Text Field to display. 4. Save the component.

Advanced conditions

To configure an advanced condition logic:

1. Open the Form Designer in the Create Form activity.
2. Drag and drop components into your form. For this example, drag and drop the following:Two Checkbox components 2.2. One Number component 2.3. One Text Field component.Pay attention to the field keys of each component. You need them to create your conditional logic.
3. Navigate to the Conditional tab of the Number component.
4. Click Advanced Conditions and go to the JavaScript section.
5. If you want to create a condition, use the show variable and assign a condition to it using the equal = sign. Use the data.field_key_component variable to access the data in other form components.For this example, to display the Number component, you can type in this script:show = (data.checkbox1 === true && data.checkbox === true)If you want to hide a component under a condition, put an exclamation point ! after the equal = sign and before the condition.
6. For this example, to hide the Number component, you can type in this script:show = !(data.checkbox1 === true && data.checkbox === true)
7. 7. Save the component.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Scrolling Through Data Grid Components

When you create a Data Grid with more than 12 Text Field components inside of it, the Data Grid becomes too tight to display the content. This tutorial demonstrates how to scroll through the Data Grid.

# Tutorial

To scroll through a Data Grid component:

1. Create a CSS file containing two classes for scrolling through the Data Grid and for making the Text Field components wider. The overflow-x: scroll property allows you to scroll through the Data Grid. The min-width: 300px property makes the Text Fields larger, to display the content inside of them.Copy and paste the following code into your CSS file:.my-data-grid { overflow-x: scroll; } .my-data-grid input { min-width: 300px; }
2. Go to the LocalCSSFilePath property in the Create Form activity and input the path to the CSS file created (for example, "/file://C:/User/theCssFile.css").

You may also store the path to the local CSS file as a variable, and input the variable
            name in the LocalCSSFilePath field.

3. Navigate to the Display tab of the Data Grid component. 4. In the
               Custom CSS Class field, write the name of the custom CSS class configured in
            the file like this: my-data-grid. This binds the data in the CSS file
            to your form.

![8a9fbec-Custom_css_class_new_screenshot=GUID-A91F5D40-544E-417D-A49F-C463C483D97E=1=en=Default](/images/8a9fbec-Custom_css_class_new_screenshot=GUID-A91F5D40-544E-417D-A49F-C463C483D97E=1=en=Default.png)

5. Save the component and the form.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Using the Grid Component

The Grid component allows you to display an unlimited number of rows and columns. The Grid component also allows you to paginate, filter, sort data, and resize the column width at runtime.

Prerequisites

Have UiPath.Form.Activites v2.0.2 package or higher installed.

Sortable

You can sort data inside columns in ascending or descending order. You sort the data at runtime, in the Form Renderer.

The data in the Grid is displayed in the same order as in the input data table. To sort all data in the Grid click any column header in the Form Renderer.

* First click sorts the data in ascending order.
* Second click sorts the data in descending order.
* Third click restores the original order.

Filterable

You can filter data inside each column. You filter the data at runtime, in the Form Renderer.

To filter data in a column:

1. Hover over the column header and click the triple bar menu.
2. Choose a filtering operation.
3. Input a value in the Filter field of the triple bar menu. The input value in the Filter field is a condition for the filtering operation.

Based on the type of data, the following filter operations are available:


| Filter operation | Text | Number | Date/Time |
| --- --- --- ---| Contains |  |  |  |
| Not contains |  |  |  |
| Equals |  |  |  |
| Not equal |  |  |  |
| Starts with |  |  |  |
| Ends with |  |  |  |
| Less than |  |  |  |
| Less than or equals |  |  |  |
| Greater than |  |  |  |
| Greater than or equals |  |  |  |
| In range |  |  |  |
| Blank |  |  |  |
| Not blank |  |  |  |

For all filtering operations applied on Text and Number data, you can add an additional filtering operation, using the operators:AND - displays data if both filter operations are true.OR - displays data if any of the filter operations is true.

Column(s) Resizable

You can change the width of the columns at runtime, in the Form Renderer. The Column(s) Resizable capability allows you to see the data inside columns better.

To resize columns, hover your cursor over the border that separates the columns, until the two-way arrow  appears. Drag the border until you get the desired column width.

![cc6cccf-Columns_Resizable_gif=GUID-A6326A49-62E0-4B33-A949-D0EE3B7E9A6A=1=en=Default](/images/cc6cccf-Columns_Resizable_gif=GUID-A6326A49-62E0-4B33-A949-D0EE3B7E9A6A=1=en=Default.gif)

Pagination

You can display the data of the Grid component on pages that are numbered. The Pagination capability also includes setting the number of items per page.

To set the number of items per page: go to the Display tab of the Grid component and choose a value from the Items per page dropdown list. You can choose to display 10, 50 or 100 items per page.

At the bottom of the Form Renderer, at runtime you can view:

* The number of rows in the page that you are on.
* The total number of rows in the grid.
* The page number you are on out of the total number of pages in the grid.

You can browse through the pages by clicking the < > arrows or you can get to the first page by clicking the  arrow and last page by clicking the  arrow.

# Tutorial

To use the Grid component:

1. Drag and drop a Grid component in the Form Designer.
2. Go to the Field Key tab and change the Property Name to the input datatable argument from the FormFieldsCollection property of the Create Form activity.For this example, input fruitDataTableArg. The data table argument binds the data in the fruit_table.csv file to the form.
3. In the Display tab, check the capabilities that you want to apply to the Grid component. For this example, check all four boxes: Sortable, Filterable, Column(s) Resizable, and Pagination.
4. In the Items Per Page field, choose from the dropdown list the number of items per page that you want to display in the form. For this example, choose 10.
5. Save the component.
6. Drag and drop inside the Grid the form components that match the column values inside the input datatable. For this example, drag and drop the following components: one Text Field, one Number, and one Date/Time.6.1. Go to the Field Key tab of the Text Field component and change the Property Name to the name of the column that holds text data in the datatable. For this example, change the property name to fruit.6.2. Go to the Field Key tab of the Number component and change the Property Name to the name of the column that holds number data in the datatable. For this example, change the Property Name to qty.6.3. Go to the Field Key tab of the Date/Time component and change the Property Name to the name of the column that holds date/time data in the datatable. For this example, change the Property Name to expdate.

Make sure to save form
                components before closing them!

7. Save the form.

8. Run the workflow and explore the Grid component capabilities.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Dev Tools

The Dev Tools property in the Create Form activity allows users to debug their forms and experiment with CSS styles. When enabled, the Dev Tools developer tool opens at runtime.

This tutorial shows how to experiment with CSS styles in Dev Tools.

Customizations added in Dev Tools are temporary. To permanently apply the CSS styles to the form, you have to create a custom CSS class in an HTML Element component, where you input the code that you experiment with in Dev Tools.

# Tutorial

To use Dev Tools:

1. In the Properties panel of the Create Form activity, check:Dev ToolsDisableSanitize. This property improves the performance of the form.
2. Add form components in the Form Designer. For this example, drag and drop a HTML Element component. You use this component to customize the appearance of other form componentsIn the Display tab of the HTML Element component, go to the Content section.Input a CSS <style>class that changes the appearance of other components. Write the <style> tag and then a name for the class.Remember the name of the CSS class because you will use it to apply CSS styles to other form components.2.3. Add properties to the CSS class that match your use-case For this example, add the background-color property and set it as green. See the CSS code below:<style> .customclass{background-color: green;} </style>2.4. Save the component.
3. Drag and drop a Text Field component in the Form Designer.In the Display tab, go to the Custom CSS Class field and input the name of the CSS class created in the HTML Element. For this example type customclass.Save the component and the form.
4. Run the file. The Dev Tools window opens.Click the following icon and then select the Text Field component in the Form Renderer. The CSS class created shows in the Styles tab of Dev Tools. For this example, the customclass shows.Go to the CSS class created in Dev Tools and start experimenting with CSS styles in real-time. For this example, add a border-style property inside customclass and set it to solid.Add another border-color property and set it to deeppink.
5. After experimenting with CSS styles, you can apply them to your form permanently. Go to the Content section of the HTML Element component and add the properties you experimented with in the CSS class.For this example, add the border-style and border-color properties in customclass:<style> .customclass{background-color: green; border-style: solid; border-color: deeppink;} </style>
6. Save the component and the form.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Calculated Value

Calculated values are field inputs determined based on the values of other form
            components.

Here's an example scenario used in the tutorial:

* You have three Text Field components:
                the first component requires users to input their first name, the second component
                requires their last name, and the third component requires their full name.
* If the user provides input for the
                first name and last name Text Fields , then the full name Text Field automatically populates, by concatenating first name and last name.

# Steps

1. Open the form that you are working in.
2. Add three Text Field components. Remember the Property Names for them, because you will use them to configure the calculated value.
3. Hover over the third Text Field component and click Edit JSON.
4. In the Component JSON tab, add the following JavaScript snippet inside the curly brackets and set it to the value variable:"calculateValue": "value=data.firstName + ' ' + data.lastName"

For this example, a blank space

' '

is also added between the

firstName

and

lastName

property names, to display
            the full name accordingly.

The Component JSON tab looks like this:

![7c7213f-calculated_value_json_example=GUID-B4C4DF4F-DD7E-4B41-8482-3C5DBEF7689B=1=en=Default](/images/7c7213f-calculated_value_json_example=GUID-B4C4DF4F-DD7E-4B41-8482-3C5DBEF7689B=1=en=Default.png)

For this example, a blank space ' '  is also added between the
                    firstName and lastName field keys, to display
                the full name accordingly.

Value -
                        holds the value of the component that you want to be calculated. For this
                        example, it holds the value for the third Text Field component, named
                            Full Name.data - helps
                        you access the value of a certain component.


### Dynamic Dropdowns

You can add dynamic dropdown lists in your form, using the Drop-down List component in the Form Designer. These tutorials describe how to create a dynamic dropdown list with elements that represent countries.

# Tutorial

To create a dynamic dropdown list:

1. Drag and drop a Sequence activity into your workflow. For this example, name it DynamicDropdowns.
2. Create two variables:2.1. Create a String variable type and set the scope as the Sequence activity. For this example, name the variable country and set the scope to DynamicDropdowns.2.2. Create a List<String> variable type and set the scope as the Sequence activity. For this example, name the variable countryList and set the scope to DynamicDropdowns.
3. Inside the Default field of the List<String> variable, create a new List of type String, that holds the names of the countries. For example, inside the Default field of the countryList variable, type in the following expression:New List (Of String) From { "US", "India", "Romania" }
4. Drag and drop a Create Form activity in your Sequence.
5. In the FormFieldsCollection property menu bind the variables to your form:5.1. Create an argument of Type String with the Direction In/Out and set the value as the String variable. For this example, set the value as the country variable. Name the argument country 5.2. Create an argument of Type List<String> with the Direction In and set the value as the List<String> variable. For this example, set the value as the countryList variable. Name the argument country_dropdown.

The country_dropdown argument makes the dropdown list dynamic and populates it with the elements from the List<String> variable.

6. Open the Form Designer.

6.1. Drag and drop a Drop-down List component in the Form Designer.

6.2. In the Field Key tab, input the name of the String argument in the Property Name field. For this example, input country.

6.3. Save the component.

7. Save the form.

Result: The Drop-down List component shows as options the list of Strings created at step 3.

![8e2683f-dynamic_dropdowns_gif=GUID-AF5648B0-F485-4A6A-880F-105EE796622A=1=en=Default](/images/8e2683f-dynamic_dropdowns_gif=GUID-AF5648B0-F485-4A6A-880F-105EE796622A=1=en=Default.gif)

Creating a dynamic dropdown inside a Data Grid

This tutorial demonstrates how to create a dynamic dropdown inside a Data Grid. The Data Grid component displays, inside the form, data that comes from a Data Table previously created. To create a dynamic dropdown inside a Data Grid:

1. Create a Data Table using the Build Data Table activity. For this example, save the data table as a variable named sampleDataTable.
2. Add a Invoke Code activity into your workflow and set the Language to CSharp.2.1. Select Edit Code and create a list of Strings, where you add the options that you want to display dynamically in the dropdown list. For example, add the code below inside the Code Editor:countryListInitialized = new List<string>(); countryListInitialized.Add("USA"); countryListInitialized.Add("India"); countryListInitialized.Add("Romania"); countryListInitialized.Add("Dubai");2.2. Select Edit arguments and create an argument that will store the list of Strings created inside a variable that you can later use inside your workflow. The name of the argument must have the same name as the list created in the Code Editor. For this example, create an argument named countryListInitialized, with the direction In/Out, the type List<String>, that has the value set as a List<String> variable. For this example, name the variable countryListVariable.
3. Add a Create Form activity into your workflow.3.1. Add a Data Grid component.3.2. Add a Text Field component inside the Data Grid.3.3. Add a Drop-down List component inside the Data Grid.
4. Open the FormFieldsCollection and create the following arguments, to bind data to the form:NameDirectionTypeValueDescriptiondataGridSampleIn/OutDataTablesampleDataTableThis argument binds the data from the Data Table to the Data Grid component inside the form.For this example, the Data Table is stored inside the sampleDataTable variable.countryList_dropdownIn/OutList<String>countryListVariableThis argument binds the data from the list of Strings to the Drop-down List* component inside the form.The _dropdown suffix makes the dropdown dynamic.For this example, the list of Strings is stored inside the countryListVariable variable.countryList_parentInString"dataGridSample"This argument binds the dynamic dropdown to the Data Grid component, through the _parent suffix, and through inputting the Field Key of the Data Grid component inside the Value column.For this example, the dataGridSample is the Field Key of the Data Grid component.
5. Open the Form Designer.5.1. Set the Field Key of the Data Grid component as the argument that binds the Data Table to the form. For this example, set the Field Key of the Data Grid component as dataGridSample.5.2. Set the Field Key of the Text Field component as the name of the Data Table column that represents text. For this example, set it as name.5.3. Set the Field Key of the Drop-down List component as the name of the argument that binds the list of Strings to the form. For this example, set it as countryList.
6. Save each component and the form.

Result: The Drop-down List component shows as options the list of Strings created at step 2, inside the column of a Data Grid.

![24713dc-dynamic_dropdowns_inside_data_grid=GUID-450A8059-B48F-49FC-A080-0517F7245CA9=1=en=Default](/images/24713dc-dynamic_dropdowns_inside_data_grid=GUID-450A8059-B48F-49FC-A080-0517F7245CA9=1=en=Default.gif)

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Switching Tabs With Button Click

When you configure multiple tabs, you can add a Button component, that switches to the next tab. This tutorial demonstrates how to create a Button component that switches to the next tab.

![9d173fe-Switch_Tabs_gif=GUID-6CAFCEC9-3194-465E-BF42-5ABD794B240B=1=en=Default](/images/9d173fe-Switch_Tabs_gif=GUID-6CAFCEC9-3194-465E-BF42-5ABD794B240B=1=en=Default.gif)

# Tutorial

To create the customized Button component:

1. Drag and drop a Button component into your form.
2. In the Display tab of the Button component, set the Action property to Click.
3. Check Use for Local Update.
4. Configure the Button component to switch to the second tab in the Update Data Logic section.
5. Configure the tab control to display the second tab. In this example, we want the Q2 tab to display when clicking the button. When setting the second tab, reference it as Tab(1), because we are dealing with 0-based indexes.For this example, copy, and paste the script below, to configure the tab control. [you need to specify where the user has to paste the script]var tabs = form.getComponent('tabs'); tabs.setTab(1);
6. Use the additional script below that enables the Do Block to run when switching to the second tab. This step is optional, created to demonstrate the number of times the Button component is clicked.instance.emit('executeDoBlock', instance.component);
7. Save the component and the form.

# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example


### Opening Hyperlinks Inside Form

This is a step-by-step tutorial that demonstrates how to open hyperlinks inside forms, using a Button component of type Click. The sample workflow consists of a generic form about customer satisfaction, that prompts users to visit a certain website before submitting the form.

Starting from this tutorial, you can also create a table of hyperlinks inside a form, using a Data Grid component. You populate a Data Grid with Button components, and using the SelectedButton output property, you can create conditions under which a certain URL is opened in the browser.

# Tutorial

To open a hyperlink using a Button:

1. Add a Create Form activity into your workflow. Design the form according to your use case.1.1. Drag and drop a Button component of type Click, that you will use to open the hyperlink with. For this example, name it Visit our website and leave us feedback. Copy the generated Field Key of this Button component or create a unique Field Key for it. For this example, the Field Key is visitOurWebsiteAndLeaveUsFeedback.1.2. In the SelectedButton output property, press CTRL + k on your keyboard and create a String variable named selectedButton. This variable is used to create a condition under which the hyperlink opens only when a certain button is selected.
2. Add an If activity inside the Do block of the Create Form activity. This activity is meant to condition the hyperlink to open only when a specified button is clicked. This prevents the hyperlink to open when clicking the Submit button.2.1. In the Condition property field, pass the following expression: selectedButton = "theFieldKeyOfTheDesiredButtonComponent". For this example, pass the selectedButton = "visitOurWebsiteAndLeaveUsFeedback".
3. Add a Use Application/Browser activity inside the Then block of the If activity.3.1. Have a browser window opened already. For this example, open a Google Chrome window.3.2. Click Indicate application to automate (I) and indicate the browser that you want to use for opening the hyperlink, by clicking it. For this example, indicate the Goggle Chrome window.3.3. Go to the Close property and choose Never from the drop-down list. This makes the window not to close after executing the activities inside of it.
4. Add a Go To URL activity inside the Do block of the Use Application/Browser activity.
5. In the URL property field, input the hyperlink that you want the button to open. For this example, input "https://google.com/".
6. Drag and drop a Log Message activity into the Sequence workflow. Set the Log level to Info and print out the selectedButton variable in the Message field. For this example, pass the following expression: "This is the button that the user clicked: " + selectedButton.
7. Save the workflow and run it.

Result

When you click the Visit our website and leave us feedback button, a
                new Google Chrome window will open, prompting you to the
                    https://google.com/ URL.



# Sample workflow

To check the complete workflow or to have a future reference, download the XAML example

