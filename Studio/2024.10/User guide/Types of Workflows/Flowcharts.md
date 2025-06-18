# Flowcharts

Flowcharts provide a visual representation of the flow of a workflow, helping better
      illustrate decision points and the overall view.

Flowcharts can be used in a variety of settings, from large jobs to small projects that you can reuse in other projects.

The most important aspect of flowcharts is that, unlike sequences, they present multiple branching logical operators, that enable you to create complex business processes and connect activities in multiple ways.

Flowcharts come with the Auto arrange option in the context menu, and can be auto arranged
      either horizontally or vertically.

When you drag an activity from the Available category for the
      first time, the corresponding activity package is installed but the activity is not added to
      the Designer panel. A banner message will then prompt you to add the activity
      again.

## Example of a Flowchart

To exemplify the properties of a
                flowchart, we are going to build a guessing game that generates a random number from
                1 to 999 that the user must guess. To create such an automation, do the
                following:

Create a blank process and from the Design tab, in the File
                    group, select New > Flowchart. The New Flowchart window is
                    displayed.You can also
                        add a Flowchart
                        activity to the Designer panel to create a new flowchart
                        project.In the Name field type a name for the automation, such as "First
                    Flowchart", and leave the default project location or add a subfolder. Click
                        Create. The Designer panel is updated accordingly.Create two Int32 variables (RandomNumber,
                        GuessNumber) and a String one
                        (Message).Set the default value of the Message variable to "Guess a
                    number from 1 to 999." The RandomNumber stores a random number
                    between 1 and 999, GuessNumber stores the user’s guess and
                        Message stores the message that is going to be displayed to
                    prompt the user.Add an Assign activity to the
                        Designer panel, and connect it to the Start node.In the Properties panel, in the To field add the
                        RandomNumber variable.In the Value field, type new
                    Random().Next(1,999).This field
                        uses the Random() function to generate a random number
                        between 1 and 999. For more information on variables, see Variables.Add an Input Dialog activity to the
                        Designer panel and connect it to the Assign one.In the Properties panel, in the Label field, add the
                        Message variable.In the Result field, add the GuessNumber variable. This
                    activity asks and stores the user’s guesses in the GuessNumber
                    variable.Add a Flow Decision
                    activity and connect it to the Input Dialog. This activity enables you to
                    tell the user if they correctly guessed the number or not.In the Properties panel, in the Condition field, type
                        GuessNumber = RandomNumber. Alternatively,
                    you can select the Condition Builder from the Plus menu to edit
                    your condition. This enables you to verify if the number added by the user is
                    the same as the randomly-generated one.Add a Message Box activity and
                    connect it to the True branch of the Flow Decision.In the Properties panel, in the Text field, type
                    "Congratulations! You guessed correctly! The number was " +
                        RandomNumber.ToString + ".". This is the message that is
                    going to be displayed if the user correctly guessed the number.Add a new Flow Decision activity and connect it to the False
                    branch of the previously added Flow Decision.In the Properties panel, in the Condition field, type
                        GuessNumber > RandomNumber. You can
                    also select the Condition Builder from the Plus menu to edit your
                    condition. This activity enables you to check if the number the user added is
                    bigger than the randomly-generated one.In the DisplayName field, type Comparison. This enables you to
                    easily to tell the difference between the two Flow Decisions used.Add an Assign activity and connect it to the True branch of the
                        Comparison activity.In the To field, type the Message variable, and in the
                        Value field, type a message indicating that the guess was too high,
                    such as "Too big. Try again.".Select the Assign activity and press Ctrl+C. The entire activity and its
                    properties are copied to the Clipboard.Press Ctrl + V. A duplicate of the previous Assign activity is
                    displayed.Connect it to the False branch of the Comparison activity and, in
                    the Properties panel, in the Value field, type "Too small. Try
                    again.".Connect the Assign activities created at steps 18-22 to the Input
                        Dialog. A loop is created, asking the user to type a smaller or bigger
                    number, until he guesses correctly. Optionally, you can add labels by
                    right-clicking a connection and selecting Add label.The final project should look as in the screenshot below.

Download
            example

