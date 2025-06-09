# Create External Task

UiPath.Persistence.Activities.ExternalTask.CreateExternalTask

# Description

Creates an External Action with the given data, task title, task priority, and task catalog.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Windows, Windows - Legacy configuration

Designer panel

* TaskTitle - The title of the action you want to create. This field supports strings and String variables only.
* TaskPriority - Enables you to select the priority level of the action. By default, this property is set to TaskPriority.Medium The following options are available: TaskPriority.Low, TaskPriority.Medium, TaskPriority.High, TaskPriority.Critical.
* TaskCatalog - An optional business classification of task items. This field supports strings and String variables only.
* TaskData - A collection of business data, in the form Dictionary<String,Argument>, that you want to store in a given action. Modifying Out and In/Out arguments maps them back to the workflow after the action is completed. This field supports Dictionary<String,Argument> objects only.
* TaskObject(Output) - The task object that is returned from Orchestrator as an ExternalTaskData object after the action is created. This object can be passed to the Wait for External Task and Resume activity in order to suspend the execution of the workflow until the action is completed.

Properties panel

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* DisplayName - The display name of the activity.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* External Tag - A tag that can be used to identify the external system which is the source for the data in the given action. This field supports strings and String variables only.
* Labels - The robot adds the inputted labels to the action, allowing future filtering. This field supports string values only and has naming restrictions.

To allow automatic actions labeling through Persistence activities, the robot account executing the workflow needs View, Create, and Delete permissions on Tags.

* Orchestrator Folder Path - The path to an Orchestrator Folder different to the one the current process operates in, where you want to create the task. To read more on Orchestrator Folders, go here. For Classic folders, this property can only be used with Floating Robots and only if the current user has the correct task privileges in the target folder. For Modern folders, folder path overriding is not supported. This field supports strings and String variables only.

The FolderPath property must be used only if the task must be created or queried from a folder different than the current one. If the user performing this action does not have the required permissions for the target folder, task creation fails and throws a critical error. You can view more info on Folder Permissions here.

* TaskCatalog - An optional business classification of task items. This field supports strings and String variables only.

Make sure the Action catalog exists before the action
                creation. Otherwise, action creation fails with the following error message: "No
                task catalog exists with name [action_catalog_name] Error code: 2451".

* TaskData - A collection of business data, in the form Dictionary<String,Argument>, that you want to store in a given action. Modifying Out and In/Out arguments maps them back to the workflow after the action is completed. This field supports Dictionary<String,Argument> objects only.
* TaskPriority - Enables you to select the priority level of the action. By default, this property is set to TaskPriority.Medium The following options are available: TaskPriority.Low, TaskPriority.Medium, TaskPriority.High, TaskPriority.Critical.
* TaskTitle - The title of the action you want to create. This field supports strings and String variables only.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* TaskObject(Output) - The task object that is returned from Orchestrator as an ExternalTaskData object after the action is created. This object can be passed to the Wait for External Task and Resume activity in order to suspend the execution of the workflow until the action is completed.

# Cross-platform
                configuration

* TaskTitle - The title of the action you want to create. This field supports strings and String variables only.
* TaskPriority - Enables you to select the priority level of the action. By default, this property is set to TaskPriority.Medium The following options are available: TaskPriority.Low, TaskPriority.Medium, TaskPriority.High, TaskPriority.Critical.
* TaskCatalog - An optional business classification of task items. This field supports strings and String variables only.

Make sure the Action catalog
                exists before the action creation. Otherwise, action creation fails with the
                following error message: "No task catalog exists with name [action_catalog_name]
                Error code: 2451".

* TaskData - A collection of business data, in the form Dictionary<String,Argument>, that you want to store in a given action. Modifying Out and In/Out arguments maps them back to the workflow after the action is completed. This field supports Dictionary<String,Argument> objects only.
* TaskObject(Output) - The task object that is returned from Orchestrator as an ExternalTaskData object after the action is created. This object can be passed to the Wait for External Task and Resume activity in order to suspend the execution of the workflow until the action is completed.

Advanced options

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is
                included in Try Catch and the value of the ContinueOnError property is
                True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Input

* Labels - The robot adds the inputted labels to the action, allowing future filtering. This field supports string values only and has naming restrictions.

To allow automatic
                actions labeling through Persistence activities, the robot account executing the
                workflow needs View, Create, and Delete permissions on
                    Tags.

* Orchestrator Folder Path - The path to an Orchestrator Folder different to the one the current process operates in, where you want to create the task. To read more on Orchestrator Folders, go here. For Classic folders, this property can only be used with Floating Robots and only if the current user has the correct task privileges in the target folder. For Modern folders, folder path overriding is not supported. This field supports strings and String variables only.

The FolderPath
                property must be used only if the task must be created or queried from a
                folder different than the current one. If the user performing this action does not
                have the required permissions for the target folder, task creation fails and throws
                a critical error. You can view more info on Folder Permissions here.

* Reference - A tag that you can use to identify the external system which is the source for the data in the given action. This field supports strings and String variables only.

Creating external actions

To create an External Action choose between the following procedures:

1. Add a Create External Task activity into your workflow and provide information for the following property fields:Task TitleTask PriorityTask Data (Collection)External Tag - Specify a tag to uniquely identify batches of external tasks that you want to retrieve from a third-party system. You can use this tag to sync External Tasks with an external system. Also, you can use this tag to complete tasks based on the actions a user takes in the third party system.
2. Create External Action using APIs.

Syncing external actions with third-party tools

To sync External Actions with other external systems, you need to first create a
                corresponding object for it inside the external system, and then retrieve the task,
                or batch of tasks, created by the third-party system, using an API call.

1. Create an object inside an external system, such as:Create an issue in Jira. Create a contact in Salesforce.
2. Call the following API in Swagger: GET/odata/Tasks/UiPath.Server.Configuration.OData.GetTasksAcrossFolders.For example: GET<ORCH_URL>/odata/Tasks/UiPath.Server.Configuration.OData.GetTasksAcrossFolders?$filter=(Type eq 'ExternalTask') and (IsDeleted eq false) and (ExternalTag eq 'JiraTasks') and (Status ne 'Completed')&$count=true.

# Retrieving external actions

Call the following API to retrieve information about an external task, using the
                    Task Id and the Organization Unit Id (the Id of the Orchestrator
                folder): GET/tasks/GenericTasks/GetTaskDataById. You can use the retrieved
                details to create a similar task in a third-party system.

The screenshots below show the API parameters and responses in Swagger. To access
                your tenant inside Swagger, follow the Accessing your Swagger
                    file procedure.

# Untitled Section

![a5d6d81-get_external_task_data_api=GUID-D532B52E-8FC2-4DD3-9D0F-6BE8759AB4CE=1=en=Default](/images/a5d6d81-get_external_task_data_api=GUID-D532B52E-8FC2-4DD3-9D0F-6BE8759AB4CE=1=en=Default.png)

![1eef71e-getexternaltaskdata_api_response=GUID-032FE928-874B-47CA-AB7E-E3CD1CE7D402=1=en=Default](/images/1eef71e-getexternaltaskdata_api_response=GUID-032FE928-874B-47CA-AB7E-E3CD1CE7D402=1=en=Default.png)

# Completing external actions

Call the following API to complete an external task, using the Task Id and the
                    Organization Unit Id (the Id of the Orchestrator folder): POST/tasks/GenericTasks/CompleteTask.

Visit the Complete External Task procedure from the
                Orchestrator API guide for more details.

# Untitled Section

![1b9f8b2-complete_external_task_api=GUID-48B618A4-5941-4C21-9C14-91A66B6568DC=1=en=Default](/images/1b9f8b2-complete_external_task_api=GUID-48B618A4-5941-4C21-9C14-91A66B6568DC=1=en=Default.png)

Workflow example

For an example or future reference, check out the sample project
