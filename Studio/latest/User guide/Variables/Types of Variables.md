# Types of Variables


## Text Variables

A text or string variable is a type of variable that can store only strings. These types of variables can be used to store any information such as employee names, usernames or any other string.

All strings in UiPath have to be placed in between quotes.


### Example of Using a Text Variable

To exemplify how you can work with text variables, we are going to create a project that asks for the user’s name, stores it and displays only the first letter of his name in the Output panel.

Create a sequence.
Create two simple string variables, FullName and FirstLetter.Add an Input Dialog activity to the Designer panel.In the Input Label field, type "Type your full name please.".In the Dialog Title field, type "What is your name?".In the Value entered field, add the FullName variable. This variable stores whatever the user writes when prompted with the Input Dialog activity.Add an Assign activity under the Input Dialog one.In the Properties panel, in the To field, add the FirstLetter variable.In the Value field, type FullName.Substring(0,1). The FirstLetter variable is assigned the new value created by the FullName.Substring(0,1) expression.This field uses the Substring() function to find the first character from the string added by the user in the Input Dialog.Add a Write Line activity under the Assign one.In the Properties panel, in the Text field, enter the FirstLetter variable. This means that the Output panel is going to display the first letter of what the user wrote in the Input Dialog. The project should look as in the following screenshot.Press F5. The What is your name? window is displayed.Type your name in the text field and click OK. In UiPath Studio, in the Output panel, note that the first letter of your name is displayed.

Download example


## True or False Variables

The true or false variable, also known as boolean, is a type of variable that only has two possible values, true or false. These variables enable you to make decisions, and thus have a better control over your flow.


### Example of Using a True or False Variable

To exemplify how you can work with true or false variables, we are going to create an automation that asks the user for his name and gender, and displays the results in another window.

Create a new process and add a Flowchart.Create two string variables, Name and Gender. The first is going to be used to store the name of the user, and the second to store the user’s gender.Create a boolean variable, Male. This variable is going to be used to verify if the user is a male.Add an Input Dialog activity to the Designer panel and connect it to the Start node.In the Properties panel, in the Label field type "What is your name?".Add a title and, in the Result field, add the Name variable.Add another Input Dialog activity and connect it to the previous one.In the Properties panel, in the Label field, type "What is your gender?".Add a title and, in the Result field, add the Gender variable.Add a Flow Decision activity to the Designer panel, and connect it to the second Input Dialog.In the Properties panel, in the Condition field, type Gender = "Male" or Gender = "male". This activity checks if the user is a male or female.Add two Assign activities.Connect one to the True branch of the Flow Decision activity.In the Properties panel, in the To field enter the Male variable.In the Value field, type True. This assigns the True value to the Male variable when the Gender = "Male" or Gender = "male" condition is met.Connect the second Assign activity to the False branch of the Flow Decision.In the Properties panel, in the To field, enter the Male variable.In the Value field, type False. This assigns the False value to the Male variable when the Gender = "Male" or Gender = "male" condition is not met.Add a new Flow Decision and connect the previously added Assign activities to it.In the Properties panel, in the Condition field, type Male = True.Add a Message Box activity and connect it to the True branch of the Flow Decision.In the Properties panel, in the Text field, type Name + " is a " + Gender + ".". This message displays the name of the user and its gender, if Male is true.Add another Message Box activity and connect it to the False branch of the Flow Decision.In the Properties panel, in the Text field, type Name + " is a " + Gender + ".". This message displays the name of the user and its gender, if Male is false. The final project should look like in the following screenshot.Press F5. The automation is executed. Note that the final Message Box displays the message as expected.

Download example


## Number Variables

Number variables are also known as integer or Int32, and are used to store numeric information. They can be used to perform equations or comparisons, pass important data, and many others.


### Example of Using a Number Variable

To exemplify how you can work with number variables, we are going to create an automation that asks the user for the year in which he or she was born and displays the age in a window.

Create a new sequence.
Create two Int32 variables, BirthYear and Age. The first stores the user’s birth year and the second, the user’s age.Add an Input Dialog activity to the sequence.In the Dialog Title and Input Label fields, type an appropriate title and label.In the Value entered field, add the BirthYear variable.Add an Assign activity under the Input Dialog.In the Properties panel, in the To field, add the Age variable.In the Value field, type 2022 – BirthYear. This assigns the value of the subtraction (2022 minus the user’s birth year) to the Age variable.Add a Message Box activity under the Assign one.In the Properties panel, in the Text field, type "Congratulations! You are " + Age.ToString + ".".The .ToString
            method converts the integer stored in the Age variable to a string and
            displays it as such.

The final project should look as in the following screenshot.11. Press F5. The automation is executed. Note that the Message Box displays your age, as expected.Download example


## Array Variables

The array variable is a type of variable which enables you to store multiple values of the same type.

UiPath Studio supports as many types of arrays as it does types of variables. This means that you can create an array of numbers, one of strings, one of boolean values and so on.


### Example of Using an Array Variable

To exemplify how you can work with array variables, we are going to create an automation that asks the user for his first and last name and age, stores the information in an array and then writes it in a .txt file.

Create a new sequence.
Create three string variables, FirstName, LastName and Age, in which to store the information gathered from the user.Create an array of strings variable called NameAge.Add an Input Dialog activity to the Designer panel.Fill in the Dialog Title and Input Label fields to ask for the user’s first name.In the Value entered field, type the FirstName variable. This variable stores the first name of the user.Add another Input Dialog activity under the previous one.Fill in the Dialog Title and Input Label fields to ask for the user’s last name.In the Value entered field, type the LastName variable. This variable is going to store the last name of the user.Add another Input Dialog activity under the previous one.Fill in the Dialog Title and Input Label fields to ask for the user’s age.In the Value entered field, type the Age variable. This variable is going to store the age of the user.We use a string variable and not an integer to store the age, so that we do not have to convert it later on, when we add it to the string array variable.Add an Assign activity under the last Input Dialog.In the Properties panel, in the To field, type the NameAge variable.In the Value field, type {FirstName,LastName,Age}. This Assign activity enables you to store all the values from the initial string variables in the NameAge one.Add a Write Text File activity under the Assign one.In the Properties panel, in the FileName field, type the path of the file you want to write to between quotation marks, such as "%HOMEPATH%\Desktop\array_variable.txt".If the file does not exist at the provided path, it is created.In the Text field, type NameAge(0) + " " + NameAge(1) + " " +NameAge(2) + " ".By adding the index number of the array items you can access their values and write them, in this example, to a text file.The final project should look as in the following screenshot.Press Ctrl + F5 to run the project.
Navigate to the file provided at step 17 and double-click it. A Notepad window is displayed with the information you added at step 20.

Download example


## Date and Time Variables

The date and time variable is a type of variable that enables you to store information about any date and time. This type of variable can be found in the Browse and Select a .Net Type window, under the System namespace System.DateTime. For more information, see Browsing for .Net Variable Types.

For example, they can be used to append dates to invoices or any other documents you may be working with and are time-sensitive.


### Example of Using a Date and Time Variable

To exemplify how you can work with a date and time variable, we are going to build an automation that gets the current date and time, subtracts a specific amount of time and writes the result to a Microsoft Excel spreadsheet.

Create a new sequence.
Create two DateTime variables, Today and LastTime.Create a TimeSpan variable, called Span, and in the Default field type 1.02:10:04.The default value attributed to theSpan variable uses the day.hh:mm:ss format.Add an Assign activity to the Designer panel.In the Properties panel, in the To field, add the Today variable.In the Value field, type Now. This gives you the date and time when the project is executed, in the dd/MM/yyyy and hh:mm:ss formats.Add another Assign activity under the previous one.In the Properties panel, in the To field, add the LastTime variable.In the Value field, type Today.Subtract(Span). This is
                    going to subtract the default value of the Span variable from
                    the current date, stored in the Today variable.Add an Excel Process Scope activity under the last Assign one. This activity opens or reuses Excel processes, loads the Excel project settings, and applies them to the associated Excel file.Add a Use Excel File activity inside the Excel Process Scope activity.Use the Manage Packages feature to download the Excel activities, if you do not already have them installed.In the Workbook path field, type the path of the Excel file you want to write to, between quotation marks. In our case, "%HOMEPATH%\Desktop\urgent_invoice.xlsx".If the file does not exist at the provided path, it is going to be created.Add a Write Cell activity in the Use Excel File activity.In the What to write field, type LastTime.ToString. This transforms the value of the LastTime variable to a string and writes it to the coordinates previously given.On the right side of the Where to write field, select Plus > Excel > Indicate in Excel.Inside the Excel file, indicate the cell in which you want to write (in our case, "E3"). Click Confirm after indicating the cell.The final project should look as in the following screenshot:Press F5. The automation is executed.
Navigate to your Excel file and double-click the cell in which you added the date. Note that the time and date information is displayed in the cell you pointed towards.

Download example


## Data Table Variables

DataTable variables represent a type of variable that can store big pieces of information, and act as a database or a simple spreadsheet with rows and columns. They can be found in the Browse and Select a .Net Type window, under the System.Data namespace (System.Data.DataTable). For more information, see Browsing for .Net Variable Types.

These variables can be useful to migrate specific data from a database to another, extract information from a website and store it locally in a spreadsheet and many others.


### Example of Using DataTable Variables

To exemplify how you can use DataTable variables, we are going to create an automation that reads only two out of multiple columns from an Excel spreadsheet, and then transfers them to another spreadsheet that already contains other information.The initial file is a database of people, transactions, dates, and products. In this example, we are going to extract their names and order dates and append them to an Excel spreadsheet that already contains similar information.

Create a new sequence.
Add an Excel Process Scope activity. This activity opens or reuses Excel processes, loads the Excel project settings, and applies them to the associated Excel file.Add a Use Excel File activity to the sequence. This activity is required for most of the Excel-related activities.If you do not have Excel activities installed on your version of UiPath, use the Manage Packages functionality to get them.Create two DataTable variables, dt_NamesList and dt_DateInfo. These are going to be used to store information from the initial Excel spreadsheet.In the Properties panel, in the Workbook path field, type the path of the initial Excel file to be used, between quotation marks.Add two Read Range activities and place them one under the other, in the Use Excel File activity. These are used to get information from the initial spreadsheet.Select the first Read Range activity. On the right side of the Range field, select Plus > Excel > Indicate in Excel.Inside the Excel file, indicate the coordinates that tell UiPath Studio from where to extract information (in our case, "G7:G37"). Click Confirm after selecting the range.In the Save to field, type the name of the first DataTable variable, dt_NamesList. This variable stores all the information available between the G7 and G37 rows.(Optional) Change the value in the DisplayName field to Read Names, so you can easily tell apart this activity from the second one.Select the second Read Range activity. On the right side of the Range field, select Plus > Excel > Indicate in Excel.Inside the Excel file, indicate the coordinates that contain the order date we want to extract (in our case, "C7:C37"). Click Confirm after selecting the range.In the Save to field, specify the dt_DateInfo variable. This variable retains all the date information we require.Add a second Use Excel File activity to the sequence.In the Properties panel, in the Workbook path field, type the path of the Excel file to be used to store all the information gathered at the previous steps.Add a Write DataTable to Excel activity to the Designer panel, under the second Use Excel File. This activity is used to write the stored information to another Excel file.The file used with the Write Range activity has to be closed when you run the project. If it is not closed, an error is displayed and the automation execution stops.In the What to write field, type the dt_NamesList variable.On the right side of the Destination field, select Plus > Excel > Indicate in Excel.Inside the second Excel file, select the starting cell in which information from the initial file is to be added (in our case, "B7"). Click Confirm.Add another Write DataTable to Excel activity and place it under the first one.In the What to write field, type the dt_DateInfo variable.On the right side of the Destination field, select Plus > Excel > Indicate in Excel.Select the starting cell (in our case, "A7"). Click Confirm.Press F5. Your automation is executed.
Double-click the final Excel file. Note that the copied information is available, and correctly updated.

Download example

