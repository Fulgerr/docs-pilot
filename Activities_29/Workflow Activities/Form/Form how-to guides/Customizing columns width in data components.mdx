# Customizing columns width in data components

When you use components similar to grids, such as the ones under Data, the content
            can become less readable if it's too wide. To adjust the width of a column inside a grid
            component and make the content inside of it readable, you can use custom CSS or
            configure certain properties of the components.

There are two different ways in which you can customize the columns width, based on the
            component that you are using:

* 
*

### Customizing column width in Data Grids

This tutorial shows how to modify the width of the last
            column in a Data Grid.

Prerequisites: To follow the steps in this tutorial,
            create a data table. Make sure that the last column of the table has content longer than
            five to six words.Add a Build Data Table activity in your workflow.Open the Build Data Table wizard and add the desired columns for your table.Make sure the columns have no spaces or special
                            characters, because you will later use these names to link the columns
                            in the form through Property Names.Save the data table to a variable. For this example, you can name it
                        dataTable.

Add a Data Grid into your form, and use the name of the data table
                    variable (dataTable) as the Property Name of the
                    component.Add components into the Data Grid, according to the columns and their
                    values in the data table. The Property Names of these components are the
                    exact names of the columns in the data table.For this example, add three Text Field components. Use the following
                        Property Names for the components: column1,
                        column2, and column3.In the Properties panel of the form, input the following code in the
                        Custom CSS field:.mygrid tbody>tr>:nth-child(1){ 
width: 25%;
}
.mygrid tbody>tr>:nth-child(2){ 
width: 15%;
}
.mygrid tbody>tr>:nth-child(3){ 
width: 60%;
}The nth-child element represents a
                        column in the grid component. Edit the Data Grid component. In the Display tab, under Custom
                        CSSinput the mygrid CSS class.Save the component and the form. This results in a wider third column,
                    where the content is longer than approximately five to six words.


### Customizing column width in Edit Grids

This tutorial shows how to modify the width of the last
            column in a Edit Grid.

Prerequisites: To follow the steps in this tutorial,
            create a data table. Make sure that the last column of the table has content longer
            than, approximately, five to six words.Add a Build Data Table activity in your workflow.Open the Build Data Table wizard and add the desired columns for your table.Make sure the columns have no spaces or special
                            characters, because you will later use these names to link the columns
                            in the form through Property Names.Save the data table to a variable. For this example, you can name it
                        dataTable.

Add an Edit Grid into your form, and use the name of the data table
                    variable (dataTable) as the Property Name of the
                    component.Add components into the Edit Grid, according to the columns and their
                    values in the data table. The Property Names of these components are the
                    exact names of the columns in the data table.For this example, add three Text Field components. Use the following
                        Property Names for the components: column1,
                        column2, and column3.Go to the Edit Grid component settings, in the Templates tab. You
                    can choose to edit the column width using Bootstrap 3 or using the CSS
                        style property.Using Bootstrap 3In the Header Template section, change the default generated
                                code with the following
                                template:<div class="row">
      {% util.eachComponent(components, function(component) { %}
        {% if (displayValue(component)) { %}
        {% if (component.key=== 'Column3') { %}
              <div class="col-sm-8">
            {% } %}
            {% if (component.key !== 'Column3') { %}
              <div class="col-sm-2">
            {% } %}
          {{ component.label }}</div>
        {% } %}
      {% }) %}
    </div>In the Row Template section, change the default generated
                                code with the following
                                template:<div class="row">
      {% util.eachComponent(components, function(component) { %}
       {% if (!component.hasOwnProperty('tableView') || component.tableView) { %}
            {% if (component.key=== 'Column3') { %}
              <div class="col-sm-8">
            {% } %}
            {% if (component.key !== 'Column3') { %}
              <div class="col-sm-2">
            {% } %}
            {{ getView(component, row[component.key]) }}
          </div>
        {% } %}
      {% }) %}
      {% if (!instance.options.readOnly && !instance.disabled) { %}
        <div class="col-sm-2">
          <div class="btn-group pull-right">
            <button class="btn btn-default btn-light btn-sm editRow"><i class="{{ iconClass('edit') }}"></i></button>
            {% if (!instance.hasRemoveButtons || instance.hasRemoveButtons()) { %}
              <button class="btn btn-danger btn-sm removeRow"><i class="{{ iconClass('trash') }}"></i></button>
            {% } %}
          </div>
        </div>
      {% } %}
    </div>Notice that you compare the component.key
                                    value to the exact name of the column, which is the same one
                                    used as the Property Name of each text component.UiPath Forms are using the Bootstrap 3 framework. The total
                                    width of the table is divided into 12 sections. Therefore, make
                                    sure that any division you make, it adds up to 12. In this
                                    example, two columns with col-sm-2 class take
                                    up 4 sections, leaving the remaining 8 for the third column
                                        (col-sm-8).Using the style property:In the Header Template script, identify all <div
                                    class="col-sm-2"> tags  and add your custom width as
                                follows: style="width:{your_custom_width}px
                                    !important". The width must be expressed in pixels.In the Row Template script, identify all <div
                                    class="col-sm-2"> tags and add your custom width as
                                follows: style="width:{your_custom_width}px
                                    !important". The width must be expressed in pixels.The "col-sm-2" element represents the default
                            column width. You can modify the default column width by adding a
                            customized style tag. For example style="width:70px
                                !important" applies a width of 70 pixels to all Edit
                                Grid columns.Save the component and the form.

