# Automated List Selection

The example below explains how to automate the selection of various items from a list
            displayed on a web page. It presents activities such as  and . You can find these
            activities in the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new
                        Process. Download the example in order to
                    have access to the CheckList.html page.
2. Drag a Sequence container
                    in the Workflow Designer. Create the following
                            variable:Variable NameVariable TypeDefault ValuePagePathGenericValueDaysToSelectSystem.String[]
3. Drag an Assign activity
                    inside the Sequence container. This activity retrieves the path of the
                    current directory. Add the variable
                            PagePath in the To field. Add the expression
                            Environment.CurrentDirectory in the Value field.
4. Drag another Assign
                    activity and place it below the first Assign activity. This activity
                    retrieves the file path. Add the variable
                            PagePath in the To field. Add the expression
                            Path.Combine(PagePath, "CheckList.html") in the
                            Value field.
5. Place a third Assign
                    activity below the previous Assign activity. This activity established
                    the days that need to be selected. Add the variable
                            DaysToSelect in the To field. Add the expression {
                            "Monday","Friday","Saturday" } in the Value field.
6. Drag an Open Browser
                    activity below the last Assign activity. In the Properties
                        panel, select the IE option from the BrowserType drop-down
                        list. Add the variable
                            PagePath in the Url field. Select the check box for the
                            NewSession option for starting a new session of the selected
                        browser.
7. Drag a Select Multiple
                        Items inside the Open Browser activity. Inside the activity, click
                        the Indicate element inside browser option. The GIF below shows all
                        the steps you need to follow: In the Properties
                        panel, add the variable DaysToSelect in the
                            MultipleItems field.
8. Place a Message Box
                    activity below the Open Browser activity. Add the expression
                            "Days were selected." in the Text field. In the Properties
                        panel, select the check box for the TopMost option. This brings the
                        message box to the foreground.
9. Drag an Element Scope
                    activity below the Message Box activity. Inside the activity, click
                        the Indicate element inside browser option. The GIF below shows all
                        the steps you need to follow:
10. Place a Click activity
                    inside the Do container of the Element Scope activity. Inside the activity, click
                        the Indicate on screen option. The GIF below shows all the steps you
                        need to follow: In the Properties
                        panel, select the check box for the SimulateClick drop-down list for
                        simulating the click by using the technology of the target application and
                        working in the background.
11. Run the workflow. An .html page is open, multiple days are selected from the list
                then the Submit button is clicked.

Download example
