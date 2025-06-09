# Orchestration Process

Long-running workflows are master projects which support service orchestration, human intervention, and long-running transactions in unattended environments.

Human intervention comes into play when certain processes require human inputs to handle exceptions, approvals or validation before proceeding to the next step in the activity. In this situation, the process execution is suspended freeing up the Robots until the human task completes.

### Workflow Fragmentation

A long-running workflow contains UiPath.Persistence.Activities and may be combined with Invoke Process and non-user interaction activities, orchestrating human tasks with Robot tasks. It runs in Session 0, thus ensuring speedy execution. Please note that the debugging of an Orchestration Process is done in a user session.

![81cd713-OrchProcess_1=GUID-7CC304D7-2E80-4751-AE7F-6F4E4A1F4ADC=1=en=Default](/images/81cd713-OrchProcess_1=GUID-7CC304D7-2E80-4751-AE7F-6F4E4A1F4ADC=1=en=Default.png)

Long-running workflows may orchestrate:

* Background processes that may contain activities performing API calls, and running in Session 0. They can be invoked using Invoke Process activity.
* UI: a process with user interaction activities called through the Start Job from Orchestrator activity, and running in a user session.
* Human in the Loop: the user interacts through tasks that require forms to be completed in Orchestrator. It implies the usage of Create Form Task activity paired with Wait for Form Task and Resume .


### Orchestration Process Template

In Studio, go to Home > Orchestration Process to open the template, which contains the default UiPath.Persistence.Activities and UiPath.System.Activities dependencies in a Flowchart workflow type.

![073e585-orch=GUID-9DCF987C-27E4-4D4A-92F1-4B30B108713E=1=en=Default](/images/073e585-orch=GUID-9DCF987C-27E4-4D4A-92F1-4B30B108713E=1=en=Default.png)

The template's project.json file has the supportsPersistence: true parameter, indicating that process execution resumes upon task completion.

The requiresUserInteraction: false parameter indicates this workflow does not contain user interaction activities, similar to a Background Process.

It is not recommended to manually modify parameters in the project.json file.

![24ebf17-json=GUID-58D29C4C-37D6-4B0A-A162-88F0C8F63AE9=1=en=Default](/images/24ebf17-json=GUID-58D29C4C-37D6-4B0A-A162-88F0C8F63AE9=1=en=Default.png)

A process may be turned into an Orchestration Process from the Project Settings window by setting the Supports Persistence toggle to Yes.

# Snippets for Orchestration Processes

To get you started, the Snippets panel contains a number of workflow snippets that you can use to create an Orchestration Process.

![b90c69b-snip=GUID-46168012-147D-4CE0-A888-105E92D65867=1=en=Default](/images/b90c69b-snip=GUID-46168012-147D-4CE0-A888-105E92D65867=1=en=Default.png)

# Build an Orchestration Process

Follow the steps below to pair activities part of UiPath.Persistence.Activities pack and build your own Orchestration Process:

1. Use the Add Queue Item and Get Reference activity to add a Queue Item with in, in/out or out parameters and get the corresponding Queue Item object. When the Queue Item is processed, arguments provided in the ItemInformation property are assigned back to the mapped workflow variables if this activity is paired with Wait for Queue Item and Resume activity.
2. The Wait for Queue Item and Resume activity should be paired with Add Queue Item and Get Reference activity. The workflow enters the suspended state freeing up the Robot at this activity waiting on a specific queue item completion before proceeding to the next step in the process.
3. The Start Job and Get Reference activity invokes another process by providing arguments of type in, in/out or out. After execution, the modified arguments are then mapped back to the workflow variables if this activity is paired with Wait for Job and Resume activity.
4. The Wait for Job and Resume activity should be paired with Start Job and Get Reference by providing the Job Object given as output from the latter activity. This temporarily suspends the current process and waits for reference job to complete, resuming the process once the reference job updates status to complete.
5. Use the Create Form Task activity to create a task with form-based visualization for human interactions within a workflow. These forms with the relevant workflow context are presented to users for decision-making and other scenarios. To enable the Form Designer in this activity, you must install the UiPath.FormActivityLibrary package.When using a Studio version starting with 2021.4 with UiPath.Persistence.Activities and UiPath.FormActivityLibrary versions prior to 1.2.1, the Form Designer window does not hold focus and you can interact with Studio when the designer window is open. To avoid this issue, make sure to update the packages to the latest version.
6. The Wait for Form Task and Resume activity should be paired with Create Form Task by providing Task Object as input to suspend the workflow until this particular task is completed by the end-user.
7. Use the Resume After Delay activity to suspend the execution of the workflow and resume it at a specified date and time.
8. Execute the workflow from Studio. Whenever the Robot executes a long-running activity, Studio enters the read-only state with the Resume option enabled in the ribbon. To continue, complete the underlying task, queue item or job and click on Resume.


### Best Practices

* Long-running activities (Wait and Resume activities) part of the UiPath.Persistence.Activities package can only be used in an Orchestration Process entry point, the file marked as Main.xaml .
* Reusable components built out of an Orchestration Process can only be referred to within another Orchestration Process.
* If a long-running workflow is attached to queue processing and the workflow is in a suspended state, the queue item will remain in an in-progress state even beyond 24 hours until the workflow sets the transaction status upon resumption. Queue item identifiers will be part of the persisted workflow context if included in the same scope of Wait and Resume activities.
* Persistence points (Wait and Resume activities) must not be used within the body of a For Each activity as they suspend the workflow after executing the first iteration and this might not be the desired behavior. Alternatively, try using loops with persistence activities, for example, the Parallel For Each activity. Please note that by default, the maximum number of resume triggers per job is limited to 1,000.
* The Delay and Retry Scope activities are not supported and do not work properly when used in the Main workflow of an Orchestration Process . In such cases, they should be placed inside a No Persist Scope activity.
* Long-running workflows can be resumed in any available Robot of the same type as the one that suspended a job (for example unattended or non-production) part of the same environment or folder, thus local resources required for execution must be made available after persistence points too.
* All variables used in the scope of a long-running activity must be serializable. Types of variables listed in this page are serializable: Text, True or False, Number, Array, Date and Time. Data Table and GenericValue variables.
* Variables used in scopes that do not contain long-running activities are not subjected to the serialization requirement, as the workflow does not get suspended in their scope. Non-serializable data types can be used in separate sequence scopes in the same workflow or by invoking other files, as long as they are between Wait and Resume activities, like Wait for Job and Resume , Wait for Queue Item and Resume and Wait for Form Task and Resume .
* Please take into consideration that some properties of objects generated by long-running activities cannot be evaluated in the Locals panel.
* Implement an appropriate batching in workflows that expect a high number of actions per job. Please note that there is a default limit of 1,000 actions (or other job triggers) that a job can wait for at a time.

