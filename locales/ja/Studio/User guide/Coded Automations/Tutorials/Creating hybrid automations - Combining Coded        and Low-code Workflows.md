# Creating hybrid automations - Combining Coded
        and Low-code Workflows

In this section, you can explore multiple ways of building
            hybrid automations by combining low-code automations with coded automations. These
            tutorials can also help you if you want to create custom objects or implementations and
            invoke them either in other coded automations or in low-code automations. You can
                create hybrid automations, by invoking low-code and coded automations in two
                distinct ways:By employing the
                                Run Workflow method:The Run
                                Workflow method can be used as standalone, and takes two or
                            more parameters. the first parameter is the path within the project of
                            the automation you want to invoke.Visit  to
                            learn how to create hybrid automations using the
                                RunWorkflow method.By using the
                                workflows object, and then accessing
                        whatever workflow inside that project, either low-code or coded:The
                                workflows object, an instance of the
                                WorkflowRunnerService class from the
                                CodedWorkflow partial class, can run all workflows
                            in a project. This object lists every workflow in your project,
                            regardless of folder placement. If workflows with the same name exist in
                            different folders, the folder structure prefixes one to avoid
                            confusion.Visit  to
                            learn how to create hybrid automations using the
                                workflows object.

### Using the RunWorkflow method

For creating hybrid automations using the RunWorkflow method, we will
            cover the following scenarios:

* Invoking a code source file from a
                low-code workflow ( WorkflowUsingCodeSourceFile.xaml ). Check
                out the tutorial.
* Leveraging a coded automation within
                a low-code workflow ( WorkflowUsingCodedAutomation.xaml ).
                Check out the .
* Integrating a low-code workflow into
                a coded automation ( CodedAutomationUsingWorkflow.cs ). Check
                out the .
* Invoking one coded automation from
                another ( CodedAutomationUsingCodedAutomation.cs ). Check out
                the .

Sample project

To follow the steps in these tutorials, check out the following sample project, that
            covers the examples for every scenario documented: Hybrid automations - Sample project.


### Using the Workflows object

In coded automations, you can call other coded (CS) or low-code (XAML) automations using
            the workflows object. This object, an instance of the
                WorkflowRunnerService class from the CodedWorkflow
            partial class, can run all workflows in a project.

The workflows object lists every workflow in your project, regardless of
            folder placement. If workflows with the same name exist in different folders, the folder
            structure prefixes one to avoid confusion.

Compared to the RunWorkflow method, the workflows
            object allows you to invoke other automations dynamically, meaning that whatever change
            you bring to the file that was invoked somewhere else in the project, its references
            will be updated, including any potential errors.

This tutorial shows how to use the workflows object to invoke low-code
            workflows (XAML) within coded automations (CS). Secondly, it shows the use of the
                Invoke Workflow File activity to call coded automations within low-code
            automations.

Through this tutorial, you will create the following automations:

1. Random - A coded workflow (CS file) that generates a random
                value within a specific range determined by minimum and maximum integer values you
                provide. It then delivers the generated random value back to the calling
                environment.
2. Increment - A low-code XAML workflow that increments the
                received value by 1.
3. IncrementProxy - This coded workflow (a CS file) takes
                the randomly generated value from the Random workflow,
                invokes the Increment XAML workflow on this value (using the workflows object), and then returns the incremented result to
                the calling environment.
4. Main - This
                entry-point workflow integrates all the other workflows by invoking
                        the Random and the IncrementProxy coded workflows using the Invoke
                    Workflow File activity. Finally, it prints the incremented random value to
                the output.

Sample project

To follow the steps in these tutorials, check out the following sample project, that
            covers the examples for every scenario documented: Hybrid Automations Using Workflows Object.

