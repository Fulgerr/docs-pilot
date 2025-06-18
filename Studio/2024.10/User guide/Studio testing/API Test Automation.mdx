# API Test Automation

Studio supports API Test Automation projects through its integration with Postman, a software development tool for performing test calls to APIs. This integration also includes Newman, a command-line collection runner for Postman for running and testing a collection directly from the command-line.

To import a collection from Postman into Studio, use the New Service wizard for libraries,
            and access the Postman collection using a general API key, that you can generate from
            the API keys section.

Imported collections can be used for testing projects. Details about Postman
            prerequisites are available here.

In the context of testing, Postman collections imported in Studio libraries may be published as a .nupkg package locally or in Orchestrator, and then installed as dependencies in test automation projects.

## Example of API Test Automation

The following example uses a data collection defined in Postman, imports it in a Studio library, publishes the library with the collection, installs it in a testing project, and uses testing activities part of the UiPath.Testing.Activities pack to verify the data usage.

The test cases are designed for a workflow that automatically applies for loans and retrieves loan data for bank customers.

To check Postman and Newman installation prerequisites read this page.

# Define a Data Collection

In Postman, either define a data collection or import an existing one to your current workspace. We created a data collection for applying for a loan, retrieving, and deleting loan details. When used in a API test project, this collection checks whether the logic of our workflow is correct.

![2d9088c-collection=GUID-4614AB38-E712-41DD-9131-B06B5D6B84A9=1=en=Default](/images/2d9088c-collection=GUID-4614AB38-E712-41DD-9131-B06B5D6B84A9=1=en=Default.png)

# Import Collections

To import a collection in Studio , create a library project and make use of the New Service window. Access to the collection is granted through the Postman API key. Add this key in the File or Link field and click Load.

![53f1493-addservice=GUID-1C77FBC2-9F80-435F-835C-819D893E6857=1=en=Default](/images/53f1493-addservice=GUID-1C77FBC2-9F80-435F-835C-819D893E6857=1=en=Default.png)

Select only the endpoints you would like to load in your project, and add a new Namespace if needed.

Check the Linked collections box so that a link is used so the newest version of your collection is executed at runtime, instead of a version stored locally. Click Save when done.

# Using Data Collections

After the collection is imported in the Studio library, its endpoints are automatically transformed into activities, available in the Activities tab, under the namespace that you previously set.

![7724fb0-imported=GUID-023B370B-5CAF-49D1-9452-D423A088B657=1=en=Default](/images/7724fb0-imported=GUID-023B370B-5CAF-49D1-9452-D423A088B657=1=en=Default.png)

In our example, a separate Sequence file was created for each activity generated from the endpoints.

![e7b621f-sequence=GUID-73310193-A00C-4FE5-A77F-67B9D0C16D9B=1=en=Default](/images/e7b621f-sequence=GUID-73310193-A00C-4FE5-A77F-67B9D0C16D9B=1=en=Default.png)

After adding an activity, add the Postman environment (in between quotes "") in the Properties panel.

![c8075a3-env=GUID-BA4C69C5-B0AA-4829-BE21-F20D382D4423=1=en=Default](/images/c8075a3-env=GUID-BA4C69C5-B0AA-4829-BE21-F20D382D4423=1=en=Default.png)

Data values defined in the Postman collection are imported as Arguments:

![c331161-arguments=GUID-27A2291A-47F8-461E-9938-5BB02A61F7E2=1=en=Default](/images/c331161-arguments=GUID-27A2291A-47F8-461E-9938-5BB02A61F7E2=1=en=Default.png)

Libraries can be published locally or in Orchestrator as a .nupkg package.

# Load Library in API Test Project

1. Create a test project in Studio using the Test Automation project type.
2. Install the published library as a dependency using the Manage Packages window.
3. Sequence files previously defined in the library are now available in the Activities panel under the library's namespace, together with activities generated from the Postman import.
4. Use these activities in your API test automation project, combined with activities part of the UiPath.Testing.Activities pack. We created a test project to verify the data entered when applying for a loan in our demo application. This small test uses a set of hardcoded variables, visible here in the Properties panel:This simple test process was used as a smoke test, to check if the application responded correctly. Several such tests can be created in Studio, depending on your automation needs.
5. To verify several scenarios in one test project, go to the ribbon, New > Data Driven Test Case. Import the data set, as explained here. Below is an example of such a test case. The values are now stored into arguments, mapped in the activity.
6. Select Run file or Debug file with data variations and choose the data to use. This is useful when testing several scenarios with multiple data sets.
7. After running the process, the results are visible in the Output panel.


## Using a Swagger file or link

This example shows how to perform API Test Automation by loading either a Swagger JSON file
      in Studio or a Swagger link.

# Prerequisites

To follow this example, you need
      to have one of the following resources available:

* A JSON file exported from Swagger, that is located on your machine.
* A link to a Swagger file.

# Steps

1. In your library project, from the Design ribbon, select New Service.The Service Editor window is displayed.
2. Choose a Swagger resource you want to use:For a local JSON Swagger file, select the More Options menu adjacent to the File or Link field. Browse and open the desired Swagger file to import.If you are using a link to a Swagger file, enter the Swagger link directly into the File or Link field.
3. In the Service Editor, select Load.All defined endpoints from the Swagger file are now loaded in the Service Editor.
4. Type in the method or operation you need in the Search Operations search box and view the returned results.For Swagger files, the methods are marked with different colors for each endpoint that you want to load. The namespace is generated automatically, but you can edit it.
5. Select Save to integrate the service into your library.

![import_a_swagger_file_as_a_new_service=GUID-3A1F1338-546B-4370-B18C-105BA250FD7F=1=en=Default](/images/import_a_swagger_file_as_a_new_service=GUID-3A1F1338-546B-4370-B18C-105BA250FD7F=1=en=Default.png)

