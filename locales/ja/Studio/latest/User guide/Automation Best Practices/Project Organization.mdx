# Project Organization


## High-Level Frameworks

Starting from a generic (and process agnostic) framework ensures you deal in a consistent and structured way with any process. A framework helps you start with the high-level view, then you go deeper into the specific details of each process.

![ae902c5-highlevel_framework_1_best_practices=GUID-AA075583-F7CC-4AF0-B576-DF88BD52A867=1=en=Default](/images/ae902c5-highlevel_framework_1_best_practices=GUID-AA075583-F7CC-4AF0-B576-DF88BD52A867=1=en=Default.png)

The Robotic Enterprise Framework Template proposes a flexible high-level overview of a repetitive process and includes a good set of practices described in this guide and can easily be used as a solid starting point for RPA development with UiPath. The template is built on a State Machine structure.

![2800ea1-highlevel_framework_2_best_practices=GUID-C033122D-4CBB-4593-9717-03E744A986BC=1=en=Default](/images/2800ea1-highlevel_framework_2_best_practices=GUID-C033122D-4CBB-4593-9717-03E744A986BC=1=en=Default.png)

How it works:

* The Robot loads settings from the config file and Orchestrator assets, keeping them in a dictionary that is to be shared across workflows.
* The Robot fetches the required credentials and logs into all applications.
* It retries a few times if any errors are encountered, then succeeds or aborts.
* The Robot checks the input queue or other input sources to start a new transaction.
* If no (more) input data is available, configure the workflow to either wait and retry, or end the process.
* The UI interactions to process the transaction data are executed.
* If the transactions are processed successfully, the transaction status is updated and the Robot continues with the next transaction.
* If any validation errors are encountered, the transaction status is updated and the Robot moves to the next transaction.
* If any exceptions are encountered, the Robot either retries to process the transaction a few times (if configured), or it marks the item as a failure and restarts.
* At the end, an email is sent with the status of the process, if configured.

For transaction-based processes (such as processing all the invoices from an Excel file) which are not executed through Orchestrator, local queues can be built using .NET enqueue/ dequeue methods.

![8f0db90-hl_framework_4best_practices=GUID-DF330C24-C77C-4EDD-951F-4676C952E6D4=1=en=Default](/images/8f0db90-hl_framework_4best_practices=GUID-DF330C24-C77C-4EDD-951F-4676C952E6D4=1=en=Default.png)

Then, the flow of the high-level process (exception handling, retrial, recovery) could be easily replicated - easier than by having the entire process grouped under a For Each Row loop.

![6517963-consume_q_best_practices=GUID-08A97EFD-F1CA-459B-BA21-239532B678D4=1=en=Default](/images/6517963-consume_q_best_practices=GUID-08A97EFD-F1CA-459B-BA21-239532B678D4=1=en=Default.png)

All the REFrameWork files, together with the documentation are found on this page.


## Design Principles

Splitting projects into smaller workflows and using Invoke Workflow File activities is paramount to good project design. Dedicated workflows allow independent testing of components, encourage team collaboration, and improve design and execution performance when compared to projects organized in fewer, larger files. We recommend keeping workflow file sizes under 5 MB. Workflow files over 10 MB are not supported.

Choose the layout type wisely (flowcharts and sequences). Normally the logic of the process stays in flowcharts while the navigation and data processing is in sequences.

By developing complex logic within a sequence, you will end up with a labyrinth of containers and decisional blocks, very difficult to follow and update.

On the contrary, UI interactions in a flowchart make it more difficult to build and maintain.

![45727bd-linear_ui_interaction_best_practices=GUID-B5388117-D52E-4DBF-9CA3-E132A49F0207=1=en=Default](/images/45727bd-linear_ui_interaction_best_practices=GUID-B5388117-D52E-4DBF-9CA3-E132A49F0207=1=en=Default.png)

Project related files (such as email templates) could be organized in local folders or shared drives.

If placed inside the project folder, they are replicated during the deployment process (together with the projects workflows) on all the Robot machines in the lib/net45 folder.

These folders could be also stored on a shared drive, so all the Robots connect to the same unique source. This way, the process related files could be checked and maintained by the business users entirely, without support from the RPA team. However, the decision (shared or local folders) is complex and should take into consideration various aspects related to the process and environment: size of the files, frequency of changes, concurrency for editing the same file, security policies, etc.


## Source Control

In order to easily manage project versioning and share the work on more developers, we recommend using a Version Control System. UiPath Studio is directly integrated with GIT, TFS, and SVN. You can find a tutorial explaining the connection steps and functionalities here.


## Control Settings

To avoid hard-coding external settings (like file paths, URLs, etc.) in the workflows, we recommend keeping them in a .config file (.xlsx, .xml, or .json) or in Orchestrator, as assets, if they change often.

Generally speaking, the final solution should be extensible in order to allow variation and changes in input data without developer intervention. For example, lists with customers that are allowed a certain type of transaction, emails of people to receive notifications, etc. should be stored in external files (like Excel) where business people or other departments can alter them directly (add/remove/update).

For any repetitive process, all workflow invocations from the main loop should be marked with the Isolated option to defend against potential Robot crashes (such as Out of memory).


## Credentials

No credentials should be stored in the workflow directly, but rather loaded from safer places like local Windows Credential Store or Orchestrator assets. You can use them in workflows via the GetCredential activity.


## Error Handling

Two types of exceptions may happen when running an automated process: somewhat predictable or totally unexpected. Based on this distinction there are two ways of addressing exceptions, either by explicit actions executed automatically within the workflow or by escalating the issue to human operators.

In situations when exceptions may be encountered, it is useful to add a Global Exception Handler to the automation project. Only one such type of workflow can be added per automation project and the Global Exception Handler is not available for libraries.

The workflow can be set to determine the workflow's behavior when an exception is encountered by having the execution ignore the error and continue from the next activity, retry the activity which threw the error, abort the execution or continue and re-throw the error.

Moreover, arguments contained in the Global Exception Handler can be set to log the name of the activity which threw the exception or retry the activity a number of times. For more information on how to use its arguments, check out the Global Exception Handler page.

As an alternative to the Global Exception Handler, exception propagation can be controlled by placing susceptible code inside Try/Catch blocks where situations can be appropriately handled. At the highest level, the main process diagram must define broad corrective measures to address all generic exceptions and to ensure system integrity.

Contextual handlers offer more flexibility for Robots to adapt to various situations and they should be used for implementing alternative techniques, cleanup or customization of user/log messages. Take advantage of the vertical propagation mechanism of exceptions to avoid duplicate handlers in catch sections by moving the handler up some levels where it may cover all exceptions in a single place.

Enough details should be provided in the exception message for a human to understand it and take the necessary actions. Exception messages and sources are essential. The source property of the exception object indicates the name of the activity that failed (within an invoked workflow). Again, naming is vital, because poor naming gives no clear indication about the component that crashed.

As you can see below, choosing not to rename the Invoke activity makes the exception source meaningless in case of a crash (such as Invoke Workflow File > Invoke Workflow File > Invoke Workflow File > Type Into).

![2ba77f4-invoke_rename_best_practices=GUID-DF420AE5-2E81-4D31-ABEC-DCE40CED9DB9=1=en=Default](/images/2ba77f4-invoke_rename_best_practices=GUID-DF420AE5-2E81-4D31-ABEC-DCE40CED9DB9=1=en=Default.png)


## Keep It Clean

In the process flow, make sure you close the target applications (browsers, apps) after the Robots interact with them. If left open, they use the machine resources and may interfere with the other steps of automation.

Before publishing the project, take a final look through the workflows and do some clean-up:

* Remove unreferenced variables.
* Delete temporary Write Line outputs.
* Delete disabled code.
* Make sure the naming is meaningful and unique.
* Remove unnecessary containers ( Right-click > Remove Sequence ).

The project name is also important. This is how the process is seen in Orchestrator, so it should be in line with your internal naming rules. By default, the project ID is the initial project name, but you can modify it from the project.json file.

The description of the project is also important (it is visible in Orchestrator). It might help you differentiate easier between processes, so choose a meaningful description as well.


## Code Reusability

When developing, we often need to automate the same steps in more than one workflow/project, so it should be a common practice to create workflows that contain small pieces of occurring automation and add them to the Library.

There is no universal recipe that tells you how to split any given process.

However, separation of business logic from the automation components is a good principle that helps with building a code that can be reused effectively.

# Example

Let’s assume that a part of your process requires reading the customer info, then, based on that info and internal business rules, update the customer details.

Get Customer Info and Change Customer Info should be two distinct automation components, completely agnostic of any process. The logic (update the customer type only when the total amount is greater than 100k in the last 12 months) should be kept separated from automation. Both components could be used later, separately, in the same project or in a different one, with a different logic. If needed, specific data could be sent to these components through arguments.

Change Customer Info should not be invoked from within Get Customer Info, as this makes it more difficult to test, handle exceptions, and reuse.

Use separate components for Get Info and Change Info.

![7730128-recommended_best_practices=GUID-79BF60DA-44EF-4E99-8382-48FC38BA1348=1=en=Default](/images/7730128-recommended_best_practices=GUID-79BF60DA-44EF-4E99-8382-48FC38BA1348=1=en=Default.png)

When the separation between actions is not that obvious, copy-pasting existing code from one workflow to another (or from one project to another) is also a good indication that you should build a separate component (workflow) for the code and invoke it when needed.

# Where to Store Reusable Components

Dragging and dropping existing code from the Library to a workflow is easier than recreating the code from scratch, again and again. Dealing with data (sorting, filtering) or with text (splitting, Regex patterns) are examples of what could be added to the sample library. Please take into account that once the code is added to the workflow, it becomes static, so if you update the workflow in the Library, it won’t be reflected in the existing live processes.

Common (reusable) components (such as App Navigation, Log In, Initialization) are better stored
                and maintained separately, on network shared drives. From that drive, they can be
                invoked by different Robots, from different processes. The biggest advantage of this
                approach is that any change made in the master component is reflected instantly in
                all the processes that use it.Windows
                    and cross-platform projects do not support invoking .xaml and .cs files outside
                    of the project location.


## How to Check Quality Automation

* Modularity: Separation of concerns with dedicated workflows allows fine granular development and testing;
Extract and share reusable components or workflows between projects.
* Maintainability: Good structure and development standards.
* Readability: Standardized process structure encouraging clear development practices;
Meaningful names for workflow files, activities, arguments, and variables.
* Flexibility: Keep environment settings in external configuration files or Orchestrator instances, making it easy to run automation in both testing and production environments.
* Reliability: Exception handling and error reporting;
Real-time execution progress update.
* Extensible: Ready for new use cases to be incorporated.

