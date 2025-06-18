# Table Extraction

Table Extraction, part of the Modern Experience in Studio, enables you to use the UI Automation activity package to automatically extract structured data from applications and save it as a DataTable object that can then be further used in your automation processes.

This process can be done by using the Table Extraction Recorder in Studio, which can be accessed from the Ribbon if the UI Automation v21.4 or above pack is installed in your current project, and you have selected the Modern Experience.

The same wizard is also used when using a  activity in your workflow.

# Using the Table Extraction Recorder

If you have the Modern Experience selected in your project, and the UI Automation activity package installed, you can find the Table Extraction recorder on the Ribbon in Studio.

![e53b56b-table_ext=GUID-12587A89-BF92-4414-9788-91E0A7E0C641=1=en=Default](/images/e53b56b-table_ext=GUID-12587A89-BF92-4414-9788-91E0A7E0C641=1=en=Default.png)

Clicking the Table Extraction button in the Ribbon opens up the Table Extraction wizard.

![816eeda-table_ext2=GUID-E5024321-352D-4E65-9C52-98846FC21A80=1=en=Default](/images/816eeda-table_ext2=GUID-E5024321-352D-4E65-9C52-98846FC21A80=1=en=Default.png)

This wizard enables you to configure the entire suite of features that the Extract Table
                                                  Data activity offers, in a very simple manner.

To switch between the available UI frameworks
                                                (Default, UIAutomation, or Active
                                                  Accessibility), you can select an option from
                                                the drop-down menu or hit F4.

Also, the Information section guides you through all
                                                the steps you need to take to successfully extract
                                                any structured data. The section can be collapsed to
                                                reveal more information about the step you're
                                                currently on.

![a1e19a2-table_ext3=GUID-304B96DF-D103-421E-AD9E-F7D9939738BE=1=en=Default](/images/a1e19a2-table_ext3=GUID-304B96DF-D103-421E-AD9E-F7D9939738BE=1=en=Default.png)

To begin the process of extracting data, simply click the Add Data button. This starts the process of indicating a series of similar elements that can be used to identify the table you want to create. This starts the Indicate process, which highlights all the detected elements of the application you are currently working with. By selecting the  button, you can extract URLs and image sources of the extracted data, if they are present. These are added as a new column to your final table.

![5352fee-add_data=GUID-3486DD85-3C52-4CA8-AD9D-284F09E103B3=1=en=Default](/images/5352fee-add_data=GUID-3486DD85-3C52-4CA8-AD9D-284F09E103B3=1=en=Default.gif)

As you can see above, after clicking a column header, the wizard prompts you with a message, asking whether you want to extract all of the available columns, which are automatically identified. Selecting Yes scrapes the entire table.

If you select an element that is closer (lowest common ancestor) to only one of the elements from the first column, it is automatically considered to be the first element of a new column.

If the table spans multiple pages, you can simply click Next Button and select the next page navigation button or link.

Each column can be individually edited or deleted, enabling you to customize your final table however you see fit.

![219725f-add_data2=GUID-A8A82E1C-FAC0-4247-AC38-91049A9BC2E4=1=en=Default](/images/219725f-add_data2=GUID-A8A82E1C-FAC0-4247-AC38-91049A9BC2E4=1=en=Default.gif)

Once you have selected all the data you want, simply clicking the Save and return to Studio button automatically closes the wizard and saves everything you have done in your workflow.

Editing Extract Data

You can resume editing an already scraped table by using the Edit extract data option in the contextual menu in the body of the Extract Table Data activity. Using this option reopens the wizard with all of the configurations performed earlier and enables you to pick up where you left off.

![4a6dab4-edit_extract_data=GUID-0EAF254B-9B67-43E0-81D7-0CAB23284DD4=1=en=Default](/images/4a6dab4-edit_extract_data=GUID-0EAF254B-9B67-43E0-81D7-0CAB23284DD4=1=en=Default.png)

Editing Columns

Clicking the Cogwheel icon next to the column you want to edit opens up the Column Settings window.

![26058a7-column1=GUID-673378F6-4B3B-4C5D-88F1-EC66924EAF0E=1=en=Default](/images/26058a7-column1=GUID-673378F6-4B3B-4C5D-88F1-EC66924EAF0E=1=en=Default.png)

Here, you can edit the Column Name. This can be done by simply using the text box and specifying the name you want for the column in the final table.

The Parse data as drop-down menu enables you to select between the three main types of data you can use for the columns, Text, Number, and Date & Time.

The Sample text box displays a sample of a value in the column being parsed as the data type you chose in the Parse data as drop-down.

Text

The Sort drop-down menu specifies whether you want to sort the data in the column or not. By default, None is selected, meaning the data is not sorted in any way. If you want to sort the data in the column alphabetically, you can do so by selecting Ascending or Descending, depending on the method you prefer.

Number

Selecting Number in the Parse data as drop-down displays other, number-specific options.

![15b7935-column2=GUID-A7B00214-9B3A-4188-A13C-062D9BBEC845=1=en=Default](/images/15b7935-column2=GUID-A7B00214-9B3A-4188-A13C-062D9BBEC845=1=en=Default.png)

The Sort drop-down menu specifies whether you want to sort the data in the column or not. By default, None is selected, meaning the data is not sorted in any way. If you want to sort the data in the column alphanumerically, you can do so by selecting Ascending or Descending, depending on the method you prefer.

The Decimal separator specifies the symbol you want to use for decimal separation in your final table. By default, this symbol is ..

The Thousands separator specifies the symbol you want to use for thousand separation in your final table. By default, this symbol is ,.

When scraping numbers, they are parsed according to the selected options, and separators and other symbols (e.g. $) are removed.

Date & Time

Selecting Date & Time in the Parse data as drop-down displays other options, specific to date and time formats.

![02785d7-column4=GUID-1C72C8CB-4DBA-46B1-8767-1C1E1F5654CB=1=en=Default](/images/02785d7-column4=GUID-1C72C8CB-4DBA-46B1-8767-1C1E1F5654CB=1=en=Default.png)

If the column you are editing does not match the format that is specified, the Column Settings window lets you know in the Sample section.

![95f3607-column3=GUID-67320619-A990-44E3-A7EC-39172D8C3DE8=1=en=Default](/images/95f3607-column3=GUID-67320619-A990-44E3-A7EC-39172D8C3DE8=1=en=Default.png)

The Sort drop-down menu specifies whether you want to sort the data in the column or not. By default, None is selected, meaning the data is not sorted in any way. If you want to sort the data in the column by date, you can do so by selecting Ascending or Descending, depending on the method you prefer.

The Data parse format drop-down enables you to select from a multitude of date and time formats that are supported.

When selecting dates, they are formatted according to the format that is selected in your operating system. The parsing format selected in the wizard is just to identify the data you are scraping.

# Settings Section

The Settings section lets you choose if you want to limit the extraction of elements in the table. By default, this option is set to No limit, which does not limit the extraction in any way, scraping the entire visible table.

The Max rows option limits the scraping according to the number of rows that is mentioned in the field to the right. By default, this is set to 1000 rows.

The Max pages option limits the scraping according to the number of pages that is mentioned in the field to the right. By default, this is set to 100 pages.

# Preview Section

The Preview section specifies how many columns and rows are identified for the table you have indicated. Also, by clicking the eye button, you can see a preview of the extracted table.

Preview is disabled when editing in offline mode.

# Extract Metadata

The Extract metadata property contains an XML definition of the path identifying the data to be extracted for each column. The path is built starting from the data extraction target (defined by your selector) to the column elements. The path uses attributes such as tag, idx, and text.

Example:

<extract> 
<!—columns data identified by a path > 
<column exact='1' name=’Description’ attr='text'> 
<webctrl tag='div' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='2' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='span' idx='1' /> 
</column> 
<column exact='1' name=’Currency’ attr='text'> 
<webctrl tag='div' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='2' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='span' idx='2' /> 
</column> 
</extract>

When the tag, idx, and text attributes are not enough for identifying the sample data indicated by the user, a CSS-selector is generated instead of the path. This selector uses the common class of the sample elements.

Example:

<extract> 
<!—column data identified by a path > 
<column exact='1' name='Description' attr='text'> 
<webctrl tag='li' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='a' idx='1' /> 
<webctrl tag='div' idx='2' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='h3' idx='1' /> 
</column> 
<!—column data identified by a css-selector > 
<column css-selector='.currency-value' name='Currency' attr='text' /> 
</extract>

For the Description column, tag and index attributes are used to identify the column data.

For the Currency column, the elements are identified via the CSS-selector which contains the common class of the samples.

Optionally, if available, a CSS-selector can be used for the Description as well:

<extract> 
<!—columns data identified by css-selectors > 
<column css-selector='.product-title ' name='Description' attr='text' /> 
<column css-selector='.currency-value' name='Currency' attr='text' /> 
</extract>

Row definition uses the same identification methods as the column and it is used to extract correlated data. A row contains an element from each column.

Example:

<extract> 
<! -- row definition - ->  
<row exact='1'> 
<webctrl tag='li' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='a' idx='1' /> 
<webctrl tag='div' idx='2' /> 
<webctrl tag='div' idx='1' /> 
</row> 
<column exact='1' name='Description' attr='text'> 
<webctrl tag='li' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='a' idx='1' /> 
<webctrl tag='div' idx='2' /> 
<webctrl tag='div' idx='1' /> 
<webctrl tag='h3' idx='1' /> 
</column> 
<column css-selector='.currency-value' name='Column' attr='text' /> 
</extract>

# Table Settings

This property contains an XML definition of the column settings, as they were defined in the scraping wizard. Column properties like Name or Format can be changed directly in this XML definition and will be used at runtime when building the output data table.

Example:

<Table xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://www.w3.org/2001/XMLSchema' Type='Structured'> 
<Column xsi:type='DataColumn' ReferenceName='Column0' Name=’Description'> 
<Format xsi:type='TextColumnFormat' /> 
</Column> 
<Column xsi:type='DataColumn' ReferenceName='Column2' Name=’Currency'> 
<Format xsi:type='TextColumnFormat' /> 
</Column> 
</Table>
