# Before and After contexts

Within test cases, the Before and After executions allow you to execute certain actions
            before and after the test case is run. These contexts are commonly used to set up and
            tear down resources, perform logging, and manage the test environment.BeforeRunContext (Setup): The Before execution
                    is used to perform actions before the main execution of the test case. It is
                    often used for setting up the initial state of the test environment and
                    preparing resources. Some common use cases for the Before context include:Initializing variables or
                            data required for the test.Setting up connections to
                            external systems or databases.Logging the start of the
                            test execution.Opening applications or
                            web pages that the test interacts with.Setup exceptions specific
                            before running the test case.AfterRunContext (Teardown): The After execution
                    is used to perform actions after the main execution of the test case is
                    complete. It is typically used for cleaning up resources, finalizing operations,
                    and recording the results of the test. Common use cases for the After context
                        include:Closing applications or
                            web pages used during the test.Releasing resources, such
                            as database connections or network resources.Catch and print out
                            exceptions recorded in the Before context and main execution.

In coded automations, you have the option to create a custom interface for actions to be executed
            before and after a run. This can be achieved by declaring the
                IBeforeAfterRun interface adjacent to the main class, and then
            implementing your own custom logic for these actions.

# BeforeRunContext

When you explore the definitions of BeforeRunContext, you can find
                the following code
                snippet:// Context of the run before the execution.
public class BeforeRunContext
{
    // The relative path of the workflow.
    public string RelativeFilePath { get; set; }
}

This context represents the state before the execution of the automation. It contains
                information about the relative path of the workflow being executed. You can set up
                exceptions here, according to your use case.

# AfterRunContext

When you explore the definitions of AfterRunContext, you can find
                the following code
                snippet:// Context of the run after the execution.
public class AfterRunContext
{
    // The relative path of the workflow.
    public string RelativeFilePath { get; set; }

    // The exception caught in execution if any.
    public Exception Exception { get; set; }
}

This context represents the state after the execution of the automation. It includes
                details about the relative path of the executed workflow and any exception caught
                before and during the execution.

# Exception handling

The Before and main executions operate concurrently, capturing
                exceptions that surface during execution. Any exceptions thrown during these phases
                are captured and stored in the AfterRunContext, leaving it as null
                if no exceptions occur.

After the Before and main executions run, the After
                method is executed. If an exception is thrown during the After run,
                then the execution ends, and the corresponding exception is thrown.

If exceptions occur in both the Before and After
                runs, they are bundled into an AggregateException.

## Implementing before and after
        executions

Before and After executions let you define
            actions before and after your coded test cases, enhancing automations. You can create
            this custom implementation within a coded test case or as a separate partial class.
            Learn how to integrate setup, teardown and logging in your coded test cases in this
            tutorial.

# Implementing within a coded test
                case

You can implement the Before and After executions interface directly within your
                coded test case.

1. Inside the public class where your coded test case resides, add the IBeforeAfterRun interface. This will be highlighted in red, indicating potential fixes.public class MyTest : CodedWorkflow, IBeforeAfterRun
2. Choose Show potential fixes or press Ctrl + . and select Implement interface.This will generate a default interface as follows:public void After(AfterRunContext context) { throw new NotImplementedException(); } public void Before(BeforeRunContext context) { throw new NotImplementedException(); }
3. Modify the implementation according to your needs. In the provided code example, the context logs a message before execution and checks for exceptions afterward.public void After(AfterRunContext context) { if (context.Exception != null) { Log(context.Exception.Message); } } public void Before(BeforeRunContext context) { Log("this is before"); }

# Implementing using a custom
                partial class

You can implement the Before and After executions interface only for certain
                    .cs files within your project, using a custom partial
                class.

1. Create a Code source file. This is where you implement the Before and After executions interface. For this example, name the file TestCaseBase.Add the IBeforeAfterRun interface next to the public class. This will be highlighted in red, indicating potential fixes.The custom partial class (TestCaseBase in this example) must inherit the CodedWorkflow class. This allows other cs files, that inherit the custom partial class, to run as expected.public class TestCaseBase : CodedWorkflow, IBeforeAfterRunChoose Show potential fixes or press Ctrl + . and select Impelment interface.This will generate a default interface as follows:public void After(AfterRunContext context) { throw new NotImplementedException(); } public void Before(BeforeRunContext context) { throw new NotImplementedException(); }Modify the implementation according to your needs.In the provided example, the context logs a message before the execution and checks for exceptions afterwards.public void After(AfterRunContext context) { if (context.Exception != null) { throw context.Exception; } else { Log("Test " + context.RelativeFilePath + " finished with no exception."); } } public void Before(BeforeRunContext context) { Log("Execution started for " + context.RelativeFilePath); }You can now use this custom partial class to use the same Before and After executions interface only for the .cs files which inherit it.
2. Create a coded automation. For this example, create a coded test case named TestCase. To use the same Before and After executions interface from the custom partial class, ensure that the coded test case inherits from this partial class.public class TestCase : TestCaseBase { [TestCase] public void Execute() { Log("Executing the test..."); }

To demonstrate how this specific implementation works, check its output logs
                below: Execution started for file: TestCase.cs
 [Info] IBeforeAfterRunExamples execution started
 [Info] Execution started for TestCase.cs
 [Info] Executing the test...
 [Info] Test TestCase.cs finished with no exception.
 [Info] IBeforeAfterRunExamples execution ended in: 00:00:00

# Implementing using the
                    CodedWorkflow partial class

You can implement the Before and After contexts interface using the
                    CodedWorkflow partial class, that any other coded test case or
                coded workflow inside your project can inherit. This implementation applies to all
                coded test cases and coded workflows within your project.

1. Create a code source file, and name it differently than CodedWorkflow.cs, otherwise the partial class will have a conflict with the existent CodedWorkflow read-only class.
2. Construct a partial class that implements the custom interface for Before and After contexts.
3. Rename the class to CodedWorkflow. Otherwise, you won't be able to use the available services.
4. Make sure the class within your coded source file inherits the CodedWorkflowBase class.
5. Add the UiPath.CodedWorkflows namespace at the start of your code source file.using System; using System.Collections.Generic; using UiPath.CodedWorkflows;
6. Within the class of your code source file, include IBeforeAfterRun.namespace TestAutomationProject1 { public partial class CodedWorkflow : CodedWorkflowBase, IBeforeAfterRun
7. Hover over IBeforeAfterRun and select Show potential fixes, or select it and press Ctrl + ..
8. Select Implement interface.This creates the default implementation below:public void After(AfterRunContext context) { throw new NotImplementedException(); } public void Before(BeforeRunContext context) { throw new NotImplementedException(); }
9. Optionally, you can further customize the interface, according to your use case. In the code sample below, the context prints out a message before the execution and after the execution, it checks if any exception was thrown and prints it out again.public void After(AfterRunContext context) { if (context.Exception != null) { Log(context.Exception.Message); } } public void Before(BeforeRunContext context) { Log("this is before"); }

