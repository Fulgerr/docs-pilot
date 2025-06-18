# Test Data File

# Overview

Application testing can require working with large data sets to verify workflow execution and
                cover edge cases. Instead of creating multiple test cases for each data set, you can
                import and use your data sets with your projects. The test data is imported to your
                project as a JSON file. You can find this file under Project and then Test
                    Data.

# Conditions

You can configure the data variation file to store up to 2GB of data. The file is named
                    Package.VariationFile.MaxSizeInKBytes.

# Supported files

* Excel data tables (XLSX, XLSM)
* JSON files

# Adding file test data

1. Create a new test case with test data, or add test data to an existing test case.
2. Click Source and select File from the dropdown list.
3. Select the columns that you want to add.Browse for your XLSX or CSV file and then select the Worksheet. If you have an updated JSON file, you can select that from the dropdown list.
4. Select individual or all values from your data file.

![9b24e04-import_data_variation_source=GUID-67B3E5D2-0A58-4CC5-A202-E5FDE5CDAC23=1=en=Default](/images/9b24e04-import_data_variation_source=GUID-67B3E5D2-0A58-4CC5-A202-E5FDE5CDAC23=1=en=Default.png)

The data is imported from the Excel file as InArgument together with its associated values, as you can see in the following screenshot with the workflow and Excel file side-by-side.

![04873b1-data_variations=GUID-9015BDF6-0400-4ECA-A9FD-DF8D01BBAD0C=1=en=Default](/images/04873b1-data_variations=GUID-9015BDF6-0400-4ECA-A9FD-DF8D01BBAD0C=1=en=Default.png)

Check out the following additional
                                                  actions:Add
                                                  test data when creating test
                                                  case.Verify Expression
                                                  with Operator. You can use this to compare
                                                  the workflow values with those imported from the
                                                  Excel file.Add
                                                  test data using the Test Explorer contextual
                                                  menu.

# Modifying file data

To modify file data from an imported test data source of File type, in a
                datatable format, perform the following steps.

You can only edit file data composed of primitive types. If
                the test data file contains unsupported data types, the message "The variation
                contains unsupported data types and cannot be modified" will be displayed.

Here's how to modify file data, given that your project already contains imported
                file test data:

1. Create a new test case with test data, or add test data to an existing test case.
2. For Source select Existing Data.
3. Identify and select the test data file that you want to edit.
4. Select Modify File Data.If the selected test data file isn't made of primitives, then you'll receive the following message: "The variation contains unsupported data types and cannot be modified". If you encounter this, select a file containing primitive values.Updating test data for an existing test case and the Modify File Data option displayingUpdating test data for an existing test case and the Modify File Data option displaying
5. Now you can modify cell values, add or remove rows.
6. To save your changes perform one of the following actions:If you're creating a new test case with test data, select Create.If you're adding test data to an existing test case, select Import.

![edit_test_data_file_for_datatable=GUID-42C19EC0-854B-4A86-9D94-E416AA5FF4BA=1=en=Default](/images/edit_test_data_file_for_datatable=GUID-42C19EC0-854B-4A86-9D94-E416AA5FF4BA=1=en=Default.png)

# Related articles

Update or remove test data
