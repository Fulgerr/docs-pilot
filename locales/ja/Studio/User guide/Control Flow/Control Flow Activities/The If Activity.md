# The If Activity

The If activity contains a statement and two conditions. The first condition (the activity in the Then section) is executed if the statement is true, while the second one (the activity in the optional Else section) is executed if the statement is false.

If activities can be useful to make decisions based on the value of variables.

The If activity is almost identical to the Flow Decision one. However, the latter can only be used in flowcharts.

### Example of Using an If Activity

To exemplify how you can use the If activity, let’s create an automation that asks the user for two numbers, checks to see if one is divisible by the other, and depending on the result, displays a different message in the Output panel.

Create a new sequence.
Create two integer variables, FirstNumber and SecondNumber for example.Add two Input Dialog activities to the Designer panel.Type titles and labels for both activities and, in the Value entered fields, add the FirstNumber and SecondNumber variables.Add an If activity to the Designer panel, under the previously added Input Dialog ones.In the Condition section, type FirstNumber mod SecondNumber = 0. This expression checks if the first number is divisible to the second one, using the mod operator.In the Then section, add a Write Line activity.On the right side of the Text field, select Plus > Open in Advanced Editor.Inside the Expression Editor window, type FirstNumber.ToString + " is divisible by "+ SecondNumber.ToString + ".". This is the message that is displayed if the first number is divisible by the second one.Click Show Else to display the Else section, and then add another Write Line activity in the Else section.Inside the Expression Editor window, type FirstNumber.ToString + " is NOT divisible by "+ SecondNumber.ToString + ".". This is the message that is displayed if the first number is not divisible with the second one.Press F5. The automation is executed.
Add numbers when prompted. Note that the Output panel displays the result, depending on the values added in the Input Dialog windows.

Download example

