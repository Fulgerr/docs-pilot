# Execution Templates

# Overview

Through execution templates, you can wrap test cases at runtime to use your defined execution conditions for multiple scenarios. For example, instead of copying, pasting, and maintaining multiple test cases, you can create a single template that acts as a boilerplate to wrap the test cases at runtime.

# Dependencies

* Testing Activities Package
* System Activities Package

# Conditions

* When you run or debug the file, the test case and its associated execution template are merged into a temporary file. The collection of arguments and variables from both files are compared by name at runtime. If the execution template shares a matching argument or variable name with the test case, it will be linked in the Invoked Workflow File after the merge. If the test case does not have any matching arguments with the execution template, the arguments from the former file will be copied to the latter.
* Moving or renaming an execution template automatically updates its associated test cases.
* When publishing a project with execution templates, any publishable test cases are merged with the execution templates. The resulting files are the project entry points.
* You can make use of reusable content by creating a library with execution templates.
* You can invoke multiple placeholders in the workflow.

# How it works

The execution template acts as a wrapper for test cases. In the Designer panel, you can see a placeholder activity within the execution template.

![341bb4e-execution_template_with_placeholder=GUID-5E25C8B7-B4D8-4A1E-9C47-FD5E168D0C8C=1=en=Default](/images/341bb4e-execution_template_with_placeholder=GUID-5E25C8B7-B4D8-4A1E-9C47-FD5E168D0C8C=1=en=Default.png)

This activity is going to be replaced at runtime with an Invoke activity, adding the invoked test case to the execution template.

![22c5827-execution_template_with_invoked_test_case=GUID-14499CF6-AF61-40F4-A3A4-C4C218840A5E=1=en=Default](/images/22c5827-execution_template_with_invoked_test_case=GUID-14499CF6-AF61-40F4-A3A4-C4C218840A5E=1=en=Default.png)

## Working With Execution Templates

To run a test case inside an execution template at runtime:

1. Create execution template.
2. Add test case to execution template.

# Create execution template

Create an execution template before setting it to a test cases.

1. Open your workflow in Studio.
2. In the Project panel, right-click the Templates folder to open the dropdown menu.
3. Navigate to Add > Execution Template.
4. Enter a name for your execution template. The location of the template is the Templates folder of the project.
5. Select a template on which you want to create the execution template. You can choose between the Default Execution Template or other execution templates stored inside the Templates folder of your current project.A new tab opens in the Designer panel with your execution template. You can build the template to match your testing needs.
6. Click Save when your execution template is done.

# Add test case to
                                execution template

To run or debug a test case with an execution template, you need to add
                                it to an execution template (Set Execution Template).
                                Alternatively, you can set an execution template for a newly created
                                                test case.

1. Open or create your test case in Studio. If you do not have one yet, you can create a test case.
2. In the Projects panel, right-click a test case to open the dropdown menu.
3. Click Set Execution Template and select a template from the dropdown list.
4. Select Invoke the templated workflow as isolated, if you want to run the invoked execution template as isolated. See the Isolate topic below for more information.
5. Click Ok to confirm. The execution template is added to the test case. Running or debugging this test case will proceed according to your associated execution template.

Now you can run or debug the test case as it will be executed with the
                                execution template.

# Isolated

When you set an execution template for a Test Case, you have the option
                                to invoke the execution template workflow as isolated. This executes
                                the invoked template in a separate process. This option can involve
                                several restrictions that are described in the Invoke Workflow File
                                activity page. Some of the restrictions are:

* Passing In arguments to an Invoke Workflow File activity that is not isolated acts as if a reference is passed, which means any changes to the object inside the invoked workflow change the object in the main workflow.
* Variables and arguments are not supported for workflow file names in Windows and cross-platform projects. This will trigger an Expressions are currently not supported error notification.
* When invoking a workflow, make sure it does not contain persistence activities. These should only be used in the main workflow.Now you can run or debug the test case as it will be executed with the execution template.

# Untitled Section

The
                                placeholder activity needs to be included in the execution template.
                                It will not work if it is in a different workflow that is invoked by
                                the execution template.

Check out
                                the following additional actions:Add
                                                  test data to your test casePublish test case to
                                                OrchestratorSet
                                                application testing Workflow Analyzer rule (see
                                                  Incorrect Amount of Placeholders in Execution
                                                  Template)

# Remove execution template from test case

1. Open your workflow in Studio.
2. In the Project panel, right-click a test case to open the dropdown menu.Hover the mouse over a test case to show whether it is added to an execution template.
3. Click Set Execution Template and select <no execution template> from the dropdown list.
4. Click Ok to confirm.

