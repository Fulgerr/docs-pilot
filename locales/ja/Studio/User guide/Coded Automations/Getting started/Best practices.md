# Best practices

To ensure that your coded automations are efficient, maintainable, and scalable you need
            to follow their best practices. This section provides an overview of key best practices
            to remember as you embark on your journey of leveraging code to build automation
            solutions. Adopting these best practices will help you design coded automations,
            specifically when structuring your code, implementing error handling strategies, or
            creating reusable components.

# Parallelism

Parallelism improves performance, and implementing it in coded automations is
                easier. A For Each loop can increase the speed with which an automation
                executes.

# Nested classes

Coded automations (CS files) don't support using or invoking variables or arguments
                from nested classes within low-code automations (XAML files). If you try to invoke
                these type of arguments using an Invoke Workflow File activity, or to create
                such arguments in XAML files, then you'll receive errors. We recommend using
                variables and arguments from nested classes only within other CS files.

# Coded workflow inheritance

Coded workflow inheritance

promotes code
            reusability and modularity, allowing you to create a hierarchy of classes where child
            classes inherit and extend the functionality of parent classes. This inheritance
            hierarchy facilitates the organization of code and avoids duplicating common
            functionality across multiple classes. Additionally, it simplifies maintenance and
            updates because changes made to the parent class automatically transmit to its child
            classes, reducing the chances of introducing bugs or inconsistencies.

# Untitled Section

Let's demonstrate how inheritance works using three classes:
                    CodedWorkflow, ParentFile (an intermediate
                class that inherits CodedWorkflow and contains a custom method),
                and MyCustomWorkflow along with
                    AnotherCustomWorkflow (derived classes that inherit
                    ParentFile). The table below shows how inheritance between
                these classes and files works:

Coded automationDescriptionCodeCodedWorkflow (read-only partial class)This class serves as the foundation for all coded workflows. It
                                contains essential methods and properties that are common to all
                                workflows, inherited from the CodedWorkflowBase
                                class. In this example, it is the class from which all other
                                workflows ultimately inherit.The file you want
                                        other workflows to inherit must also inherit the
                                            CodedWorkflow and implicitly the
                                            CodedWorkflowBase classes. This ensures
                                        all workflows inherit essential functions and work as
                                        expected.public partial class CodedWorkflow : CodedWorkflowBase
    {
        public CodedWorkflow()
        {
         //...

    }
}ParentFile (code source file containing an
                                intermediate class and a custom method)This class inherits from CodedWorkflow and adds
                                custom methods and functionality. In this example, it includes a
                                custom method called CustomMethod, which performs
                                specific actions, such as starting a job in Orchestrator.public class ParentFile : CodedWorkflow
{
    public void CustomMethod(string processName, string folderPath, 
    StartProcessDtoJobPriority jobPriority, bool resumeOnSameContext, 
    out string jobId)
    {
        // Enter your custom code here.
        // For example, use the StartJob API inside this custom method.
        jobId = system.StartJob(processName, folderPath, jobPriority, resumeOnSameContext);
    }
}MyCustomWorkflow and
                                    AnotherCustomWorkflow (coded workflows that
                                inherit the code source file)These classes inherit from ParentFile and
                                further customize the workflow by overriding methods or providing
                                different parameter values. In this example, we have
                                    MyCustomWorkflow and
                                    AnotherCustomWorkflow, both of which inherit
                                    ParentFile. public class MyCustomWorkflow : ParentFile
    {
        [Workflow]
        public void Execute()
        {
            // You can now call CustomMethod from the base class.
            string processName = "YourProcessName";
            string folderPath = "YourFolderPath";
            StartProcessDtoJobPriority jobPriority = StartProcessDtoJobPriority.Normal;
            bool resumeOnSameContext = false;
            string jobId;

            // Call the custom method from the base class.
            CustomMethod(processName, folderPath, 
            jobPriority, resumeOnSameContext, out jobId);
        }
    }

In conclusion, because ParentFile inherits from
                    CodedWorkflow, any class that inherits from
                    ParentFile indirectly inherits the functionality and methods of
                    CodedWorkflow. In other words, both
                    MyCustomWorkflow and AnotherCustomWorkflow
                inherit the core functionality from the CodedWorkflow partial class
                through the intermediate ParentFile, along with other custom
                classes, such as CustomMethod.

# Registering custom services

To enhance your coded automations, using custom logic, you can register custom
                services that you later use in your coded automations. Visit  to learn how to
                register your own custom service.

# Before and After contexts

Within test cases, the Before and After contexts allow you to execute certain actions
                before and after the test case is run. These contexts are commonly used to set up
                and tear down resources, perform logging, and manage the test environment. Visit
                     to learn
                how the contexts behave and how to implement them.

### Tips and tricks

Design efficient and robust coded automations using the following tips and tricks. This
            collection of insights helps you to optimize your code, avoid errors, and maximize
                performance.We recommend that you do not make
                    any changes to namespaces.Store an action inside a class
                    and reuse it throughout your project, so you avoid duplicating code.You can remove namespaces that
                    you imported during design time, but aren't necessary anymore.If you need to get data from
                    multiple applications, separate the phases of the coded automation, so you don't
                    mix data coming from various sources.

