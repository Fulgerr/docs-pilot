# Manage Text Automation

The example below explains how to automate a text received as an input by using
            activities like , , and . You can find these
            activities in the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new
                        Process. Open the Notepad.exe
                    application.
2. Drag a Sequence container
                    in the Workflow Designer. Create the following
                            variable:Variable NameVariable TypeDefault ValuequestionString
3. Drag an Input Dialog
                    activity inside the Sequence container. In the Properties
                        panel, add the expression "Please ask a 'YES/NO' question"
                        in the Label field.Add the value
                            "Question" in the Title field.Add the variable
                            question in the Result field.
4. Drag an Open Application
                    activity below the Input Dialog activity. Inside the activity, click
                        the Indicate window on screen option. Now you can select the desired
                        application. The GIF below shows all the steps you need to follow:
5. Place a Sequence container
                    inside the Open Application activity. Create the following
                            variables:Variable NameVariable TypeDefault ValuefullTextStringvisibleTextStringvisibleInfoSystem.Collections.Generic.IEnumerable<UiPath.Core.TextInfo>positionSystem.Drawqing.Rectangle
6. Drag a Type Into activity
                    inside the Sequence container. Inside the activity, click
                        the Indicate element inside window option. Now you can select the
                        desired application. The GIF below shows all the steps you need to follow: In the Properties
                            panel, add the expression `question.ToString + " --Yes"` in the
                                Text field.7. Drag a Get Full Text activity and
                            place it below the Type Into activity.Inside the activity, click
                        the Indicate element inside window option. Now you can select the
                        desired application. The GIF below shows all the steps you need to follow: In the Properties
                        panel, add the variable fullText in the Text field.
7. Place a Get Visible Text
                    activity underneath the Get Full Text activity. Inside the activity, click
                        the Indicate element inside window option. Now you can select the
                        desired application. The GIF below shows all the steps you need to follow: In the Properties
                        panel, add the variable visibleText in the Text
                        field. Add the variable
                            visibleInfo in the WordsInfo field.
8. Drag a Get Position
                    activity below the Get Visible Text activity. Inside the activity, click
                        the Indicate element inside window option. Now you can select the
                        desired application. The GIF below shows all the steps you need to follow: In the Properties
                        panel, add the variable position in the Rectangle
                        field.
9. Place a Message Box
                    activity below the Get Position activity. In the Properties
                        panel, select the Ok option from the Buttons drop-down list. Add the expression
                            "Text information" in the Caption field. Add the expression
                            "The text '" + fullText.ToString +"' is at position" +
                            position.ToString in the Text field.
10. Run the process. Type a question in
                the dialog box that is automatically typed into a notepad and then processed. In the
                end, a message box is displayed with information about the question entered by you.

Download example
