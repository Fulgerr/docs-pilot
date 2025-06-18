# Automation Lifecycle

# Process Understanding

Deciding between an automation for Attended Robots or Unattended Robots is the first important decision that impacts how developers build the code, as the general running framework (Robot triggering, interaction, exception handling) is different. Switching to the other type of Robots later may be cumbersome.

For time-critical, live, humanly triggered processes, like in a call center an Attended Robot working side by side with a human might be the only possible answer.

But not all processes that need human input are supposed to run with Attended Robots. If a purely judgmental decision (not rule-based) during the process could not be avoided, evaluate if a change of flow is possible, like splitting the bigger process into two smaller sub-processes, when the output of the first sub-process becomes the input for the second one. Although human intervention takes place in between, such as validating/modifying the output of the first sub-process, both sub-processes could be triggered automatically and run unattended.

A typical case would be a process that requires a manual step somewhere during the process, such as checking the unstructured comments section of a ticket and, based on that, assign the ticket to certain categories.

Generally speaking, going with an Unattended Robot ensures a more efficient usage of the Robot load and a higher ROI, a better management and tracking of robotic capacities.

But these calculations should take into consideration various aspects, such as the fact that an Attended Robot could usually only run in the normal working hours of a person, or it may keep the machine and user busy until the execution is finished. Input types, transaction volumes, time restrictions, the number of Robots available, and others also play a role in this decision.

# Documenting the Process - DSD

The process documentation guides the developer's work and provides help in tracking the requests and the application maintenance. Of course, there might be lots of other technical documents, but one is critical for a smooth implementation, namely DSD (Development Specification Document).

The Development Specification Document should contain the automated process details and focus on two main categories: Runtime Guide and Development Details.

The Runtime Guide should contain a high-level runtime diagram, as well as details about the functionality of the Robot, such as sub-processes, schedules, configuration settings, input files, output files, temporary files, and performed actions. Additional details about the master process should be specified, such as prerequisites, automatic and manual error handling, process resuming in case of failure, Orchestrator usage, logging and reporting, credential management, and any other relevant information related to security or function.

The Development Details should contain information about the packages in use, the development environment, the logging level, the source code repository and versioning, a list of workflow components with their description and argument list, a list of reusable components, the workflow invoke tree, defined custom logs and log fields, relevant snapshots of the process flowchart, the level of background versus foreground automation, and any other relevant or outstanding development items.

# Development and Code Review

The RPA Solution Architect is responsible for continuously coaching developers on the best practices. Hence, frequent and thorough code reviews are a must, to enforce a very high quality of the developed workflows. This way, the developers are motivated to build robust workflows and to follow the best practices guide.

# Test

After each component is built, unit testing should be conducted. If every component is thoroughly tested, the integration runs more smoothly, and debugging lasts for a shorter period of time. The REFramework contains a Test_Framework folder where all the test files should be placed. Using the RunAllTests.xaml file, a developer can test a sequence containing a lot of .xaml files automatically, thus being able to try out small integrations between components and to run stress tests. A report is generated at the end of each test. Typically, these kinds of tests should be executed outside of office hours, in testing environments, to optimize the developer’s time.

The recommended UiPath architecture includes Dev and Test environments that allow the processes to be tested outside the live production systems.

Sometimes applications look or behave differently between the Dev, Test, or Production environments and extra measures must be taken, sanitizing selectors or even conditional execution of some activities.

Use the UiPath.config file or Orchestrator assets to switch flags or settings for the current environment. A test mode parameter (Boolean) could be checked before interacting with live applications. This could be received as an asset (or argument) input. When it is set to True, during debug and integration testing, it follows the test route, does not execute the case fully. For example, the test patch can skip sending notifications, skips the OK or Save button or press the Cancel or Close button instead. When set to False, the normal Production mode route is followed.

This allows you to make modifications and test them in processes that work directly in live systems.

# Release

There are various ways of designing the architecture and release flow, considering the infrastructure setup, concerns about the segregation of roles, etc.

In this proposed model UiPath developers can build their projects and test them on Development environments in Orchestrator. They are allowed to check in the project to a drive managed by a version control system (VCS), such as GIT, SVN, or TFS.

Publishing the package and making it available for Test and Production environments is the work of a different team, such as IT.

The deployment paths on Orchestrator have been changed from their default to folders managed by the VCS, by changing the Storage.Location value in the UiPath.Orchestrator.dll.config file in the Deployment section..

The model also contains a repository of reusable components.

![97f7228-Automation_Lifecycle=GUID-65C04F2F-EFBF-4FA2-8460-3E4F448B76E9=1=en=Default](/images/97f7228-Automation_Lifecycle=GUID-65C04F2F-EFBF-4FA2-8460-3E4F448B76E9=1=en=Default.jpg)

Here is the project publishing flow, step by step:

1. Developers build the process, test & debug pieces of it locally (Studio).
2. Once the automation development is completed, the process is published to the Development Orchestrator and tested again end-to-end.
3. The project folder is committed (not packaged) to a Master Library folder (on VCS).
4. The IT/ RPA Operations team creates the project package for QA. This step is intended to be an additional safety measure: the automation source code is inspected (by a different entity) before being packaged and run by robots.For example, the packaged process is stored in the Process Pckgs (QA) folder on VCS, from which it is deployed to the QA robots and executed.
5. If any issue is revealed during the tests, the steps above are repeated.
6. Once all QA tests are passed, the package is pushed to a Production environment - Process Pckgs (Prod).
7. When the Process goes live, the process package is deployed to the production Robots and executed.

Reusable Content is created and deployed separately, as UiPath code (Reusable Code Library) and Invokes (Invokes Repository).

Workflows with source code are .xaml files containing activities for automating common processes, such as Log in to SAP:

![dbc63fb-login_sap_code=GUID-0E950DAF-B6EC-4D00-A5D3-121666E1227B=1=en=Default](/images/dbc63fb-login_sap_code=GUID-0E950DAF-B6EC-4D00-A5D3-121666E1227B=1=en=Default.png)

Invokes represent workflows composed only of one Invoke activity of the code workflows mentioned above.

![768befe-login_sap_invoke=GUID-594502AB-4E1E-4F4E-B52A-0D19D1A9456D=1=en=Default](/images/768befe-login_sap_invoke=GUID-594502AB-4E1E-4F4E-B52A-0D19D1A9456D=1=en=Default.png)

The Snippet panel of a Studio developer should point to this Invoke repository in order to provide easy access (drag & drop) to Reusable Content.

![834ae7a-snippets_studio_best_practices1=GUID-4D99C318-0DAB-4074-BE88-8F5FF34584B4=1=en=Default](/images/834ae7a-snippets_studio_best_practices1=GUID-4D99C318-0DAB-4074-BE88-8F5FF34584B4=1=en=Default.png)

The local design authority in charge with maintaining the Reusable Content updates (due to a change in process, for instance) the workflows with code. The Invokes remain unchanged.

The advantage of this approach (as opposed to working directly with the library of source code) is that when a change is done to a reusable component, all the running projects reflect this change as well, as they only contain an Invoke of the changed workflow.

# Monitoring

Using Log Message activities to trace the evolution of a running process is essential for supervising, diagnosing and debugging a process. Messages should provide all relevant information to accurately identify a situation, including the transaction ID and state.

Logging should be used:

* At the beginning and the end of every workflow;
* When data is coming in from external sources;
* Each time an exception is caught at the highest level.

Messages are sent with the specified priority (e.g. Info, Trace, Warning) to Orchestrator and are also saved in the local .nlog file.

Custom Log Fields

To make data easily available in Kibana for reporting purposes, the Robot may tag log messages with extra values using the Add Log Fields activity. By default, any UiPath log output has several fields already, including message, timestamp, level, processName, fileName, and the Robot’s Windows Identity. Log Fields are persistent so if we do not need to mark all messages with a tag, fields should be removed immediately after logging, using the Remove Log Fields activity. Do not use a field name that already exists. It’s important to specify the proper type of argument the first time when you add the field. This is how Elasticsearch indexes it.

![e098e20-kibana_best_practices=GUID-EF074F9A-F22C-4D1F-BCC2-4F439B6C756C=1=en=Default](/images/e098e20-kibana_best_practices=GUID-EF074F9A-F22C-4D1F-BCC2-4F439B6C756C=1=en=Default.png)
