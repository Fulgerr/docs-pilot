# Custom Input

UiPath.System.Activities.CustomInput

Loads and displays a custom HTML form into a browser window, enabling you to collect certain data from a human user. The data gathered in the form can then be further processed with subsequent activities. The language that can be used inside the file is not limited to HTML, any other language being supported. To be able to retrieve the data inside Studio, the HTML file must contain a certain JavaScript function, which is further detailed here.

# Properties

Common

* DisplayName - The display name of the activity.

Input

* URI - The URI of the HTML file you want to load. This field supports only strings and String variables. In this field you can enter a file path or an URL.When using an URL, it must be inserted in full format, for example: https://activities.uipath.com/docs/custom-input/.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Result - The data from the custom input form, stored in a String variable. This field supports only String variables.

# Creating the custom HTML file

For the activity to be able to retrieve the data that is typed into the form, the HTML script must contain the window.external.setResult([Result]) tag, where Result is the data that is to be retrieved.

Let's take, for example, an HTML file that retrieves the First Name, Last Name and Age of a human user. The input form looks like this:

![2f2fe48-UiPath_Custom_Input_Field=GUID-917BE134-1264-4F04-BDD2-1DC97A936E6D=1=en=Default](/images/2f2fe48-UiPath_Custom_Input_Field=GUID-917BE134-1264-4F04-BDD2-1DC97A936E6D=1=en=Default.png)

The HTML code behind this page looks like this:

<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>UiPath KYC Solution</title>
  </head>
  <body>
      
          First Name:<br>
          <input type="text" id="First_Name"><br>
          Last Name:<br>
          <input type="text" id="Last_Name"><br>
          Age:<br>
          <input type="text" id="Age"><br>
          <button onclick="SubmitValues()">Submit</button>
    
  </body>
  </html>

This page does not contain the necessary code to send the gathered data back to the user. After adding it, the file should look like this:

<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>UiPath KYC Solution</title>
  </head>
  <body>
      
          First Name:<br>
          <input type="text" id="First_Name"><br>
          Last Name:<br>
          <input type="text" id="Last_Name"><br>
          Age:<br>
          <input type="text" id="Age"><br>
          <button onclick="SubmitValues()">Submit</button>
          <script type="text/javascript">
          function SubmitValues(){
            var First_Name = document.getElementById("First_Name").value;
            var Last_Name = document.getElementById("Last_Name").value;
            var Age = document.getElementById("Age").value;
            window.external.setResult(First_Name + "," + Last_Name + "," + Age);
            return true;
          }
            
          </script>
  </body>
  </html>

# Example of Using the Custom Input Activity

To exemplify how to use this activity, we have built a simple automation project which gathers the First Name, Last Name and Age from a human user and then displays it in a message box. You can download the project and the corresponding example HTML page here.
