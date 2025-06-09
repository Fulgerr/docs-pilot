# Creating a Basic Library

The following tutorial walks you through the steps of creating a library in Studio, publishing and using it in other automation projects.

Creating a library is similar to Creating a Basic Process. The difference is that a library is a package containing reusable components which can be used in the context of other projects.

This example gets data from an Excel spreadsheet and appends it to another Excel file. Next, it walks you through the steps for packaging and publishing the project to a custom feed, installing the package to another project, and using the activity it contains.

This example uses Excel activities that do not require Microsoft Excel to be installed on your machine.

Let’s begin.

## Creating a Library

Launch Studio. In the HOME Backstage view, click Library to create a new library
          project. The New Blank Library window is displayed.In the New Blank Library window:Enter a name for the new project and a description that summaries what you are
              aiming to do with this automation. For this example, you can use the name
                QuickLibrary.The project name cannot
                exceed 128 characters, and the description cannot exceed 500 characters.Select Show advanced options
              and choose the location where to create the project. Select Windows for the Compatibility option and VB for Language.Click Create. The new library is opened in Studio.


## Adding Excel Activities

In the Activities panel, search for the  Excel Process Scope activity and drop it to the Designer panel.Add a Use Excel File activity to the sequence. This activity is required for most of the Excel-related activities.In the Excel file field, browse to the Excel file from which you want to get the data. Optionally, you can usethe Reference as field to change the way this file is referenced throughout the workflow (Excel1 in this case).Add a second Use Excel File activity inside the first Use Excel File activity and browse to the Excel file where you want to copy the data. Add an optional reference to this second file (Excel2 in this case).Add a Copy/Paste Range activity.In the Source field, select the Plus button to indicate the name of the sheet in the first workbook. For this example, the field should read Excel1.Sheet("Sheet1").In the "Destination" field, select Plus to indicate the name of the sheet in the second workbook (Excel2.Sheet("Sheet1") in our case). Your project should look like in the image below.In the ribbon, click Run File or use Ctrl + F6 to execute the workflow. The data gathered from the first Excel spreadsheet is copied to another.


## Packaging a Library

To add this library as a reusable component to other automation projects, you need to package it as a .nupkg file by publishing the project.

Open the library project in Studio.
From the ribbon, click the Publish button. The Publish Library window opens.In the Package properties tab, enter a package name. In the Release Notes field, add a few details about the library. This is useful for tracking the changes made to the library in each new published version.
In the Publish options tab, select Publish to > Custom, and then, in the Custom URL field, add the path to a local folder. For example, you can create a myfeed folder on your Desktop.
Click Publish.  The package is now available in the local folder as a .nupkg file.


## Installing Reusable Components

To use the package in another project, you first need to add it as a project dependency. To get started, create a new Process in Studio, as explained in the Creating a Basic Process page.

Read more about project dependencies in the About Dependencies page.


### Adding a Custom Feed

In the Studio ribbon, click Manage Packages > Settings. The default and user-defined feeds are displayed.In the User defined packages sources container, add a name for your feed in the Name field. In the Source field, add the path to the folder where you published your library to.Click Add. Your new feed is added to the section.

You need to follow the above steps whenever you want to add or remove a user-defined feed in Studio. Check out the About Activities Packages to read more information about activities feeds.


### Installing the Package

In the Manage Packages window, go to the previously added feed under the All Packages tab on the left. The list of packages available on the feed is displayed.Search for the package and select it. In our example, the package name is QuickLibrary.Click Install, then Save. The package is now installed in your project, and visible in the Project panel, under Dependencies.


### Adding Activities From the Library

In the Activities panel, search for the name of the package, in our case Quick Library.Drop the activity in the Designer panel.In the Studio ribbon, click Run File or use Ctrl + F6 to execute the activity.

You can add other activities like Copy Sheet or Auto Fill Range, but these require Microsoft Excel to be installed on your machine.The advantage of reusable components is that they reduce repetition. You create them once and reuse them in other projects.To download the library we created above, click the button below:Download example

