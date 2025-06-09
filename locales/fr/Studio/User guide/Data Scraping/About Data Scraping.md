# About Data Scraping

Data scraping enables you to extract structured data from your browser, application or document to a database, .csv file or even Excel spreadsheet.

It is recommended to run your web automations on Internet Explorer 11 and above, Mozilla Firefox 50 or above, or the latest version of Google Chrome.

Structured data is a specific kind of information that is highly organized and is presented in a predictable pattern. For example, all Google search results have the same structure: a link at the top, a string of the URL and a description of the web page. This structure enables Studio to easily extract the information, as it always knows where to find it.

The scraping wizard can be opened from the Design tab, by clicking the Data Scraping button.

![b4ae494-DataScraping_Ribbon=GUID-79D6D7BF-296A-4C21-9AC3-FB354D995B70=1=en=Default](/images/b4ae494-DataScraping_Ribbon=GUID-79D6D7BF-296A-4C21-9AC3-FB354D995B70=1=en=Default.png)

The main steps of the data scraping wizard are:

1. Select the first and last fields in the web page, document or application that you want to extract data from, so that Studio can deduce the pattern of the information. Studio automatically detects if you indicated a table cell, and asks you if you want to extract the entire table. If you click Yes, the Extract Wizard displays a preview of the selected table data.
2. Customize column headers and choose whether or not to extract URLs.
3. Preview the data, edit the number of maximum results to be extracted and change the order of the columns.
4. Optionally click Extract Correlated Data . This enables you to go through the Extract Wizard again, to extract additional info and add it as a new column in the same table.
5. Indicate the Next button in the web page, application or document (if the information you want to extract spans multiple pages).

After you are finished with the wizard, a sequence is generated in Studio.

![f7f46b6-image_178=GUID-75303364-22C9-4107-AD66-19258E60D748=1=en=Default](/images/f7f46b6-image_178=GUID-75303364-22C9-4107-AD66-19258E60D748=1=en=Default.png)

Data scraping always generates a container (Attach Browser or Attach Window) with a selector for the top-level window and an Extract Structured Data activity with a partial selector, thus ensuring a correct identification of the app to be scraped.

Additionally, the Extract Structured Data activity also comes with an automatically generated XML string (in the ExtractMetadata property) that indicates the data to be extracted.

Lastly, all the scraped information is stored in a DataTable variable, that you can later use to populate a database, a .csv file or an Excel spreadsheet.
