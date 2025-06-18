# Get App Tasks

UiPath.Persistence.Activities.UserAction.GetAppTasks

# Description

Retrieves a single App task or a set of App tasks, filtered by specific criteria, namely the task's DTO properties:

* Status
* Title
* ID
* Priority
* TaskCatalogName
* AssignedToUser
* CreatorUser
* LastModifierUser
* CreationTime
* LastModificationTime
* OrganizationUnitID

The output object of the Get App Tasks activity can be used in any other persistence activity, for example Wait For App Task And Resume, to cover the scenarios that require another workflow to wait on the tasks, different than the workflow that created those tasks (for example, building a recovery workflow in case the current job fails). You can also pass the output object to a different process as input, so that you don't need to wait for all the tasks to be completed until the initial process resumes.

* Filtering and querying the actions uses the OData syntax, based on the action's metadata.

# Project compatibility

Windows | Cross-platform

# Windows configuration

Designer panel

* Task Objects (Output) - The list of output objects that match the criteria set in the activity. The output is returned from Orchestrator as a List<FormTaskData> object. Use this object to create a recovery workflow or to pass it as input to a different process.

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.
* Reference - The Action's reference that was set using the Create App Task activity.
* Task Catalog Name - The action's catalog name that was set using the Create App Task activity.

Misc

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

OData Query Options

OData Query OptionDescriptionField Data TypeExampleExpandThe OData expand option, used to display the related entities of a criterion.String"AssignedUser"FilterThe OData filter option, used to filter the retrieved actions by the specified criteria.StringStatus in ('Pending', 'Unassigned') and Priority eq 'High'Order ByThe OData orderby option, used to order the retrieved actions ascending (asc) or descdending (desc) by a specified criterion.String"Title asc""ID desc"SelectThe OData select option, used to retrieve a subset of the action's properties.String"ID, Status, TaskCatalogName"SkipThe OData skip option, used to skip a number of actions from being retrieved.Int322TopThe OData top option, used to set the number of records to be retrieved, limited to 1000 records at a time. If left empty, top 100 records are retrieved.Int3220

AND/OR operators are also supported.

Output

* Task Objects (Output) - The list of output objects that match the criteria set in the activity. The output is returned from Orchestrator as a List<FormTaskData> object. Use this object to create a recovery workflow or to pass it as input to a different process.

# Cross-platform configuration

* Filter - The OData filter option, used to filter the retrieved actions by the specified criteria. This field supports only strings and String variables. For example, Status in ('Pending', 'Unassigned'), and Priority eq 'High'.
* Select - The OData select option, used to retrieve a subset of the action's properties. You are required to input the ID option. Therefore, if you want to retrieve the Action Catalogs, the query you would use is "Id, TaskCatalogName". This field supports only strings and String variables.
* Orchestrator Folder Path - The path to the Orchestrator Folder you want to use with this activity. If left empty, the current Orchestrator folder is used. This field supports only strings and String variables.
* Task Catalog Name - The action's catalog name that was set using the Create App Task activity.
* Reference - The Action reference that was set using the Create App Task activity.
* Task Objects (Output) - The list of output objects that match the criteria set in the activity. The output is returned from Orchestrator as a List<FormTaskData> object. Use this object to create a recovery workflow or to pass it as input to a different process.

Advanced options

Misc

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.

If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.

* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

OData Query Options

OData Query OptionDescriptionField Data TypeExampleExpandThe OData expand option, used to display the related entities of a criterion.String"AssignedUser"Order byThe OData orderby option, used to order the retrieved actions ascending (asc) or descdending (desc) by a specified criterion.String"Title asc""ID desc"SkipThe OData skip option, used to skip a number of actions from being retrieved.Int322TopThe OData top option, used to set the number of records to be retrieved, limited to 1000 records at a time. If left empty, top 100 records are retrieved.Int3220

# OData Query Examples

Use the following examples to Get App Tasks, or for inspiration for other queries:Get the IDs of Get App Tasks
                        of High priority that are Pending, ordered by their title in descending
                            order.Filter:
                                    "((Priority eq 'High') and (Status eq
                                    'Pending'))"Order By:
                                    "Title desc"Select:
                                    "Id"Get the Action Catalog where
                        all the Get App Tasks that are Unassigned and of Medium priority are stored
                        in, and order them by their title in ascending order.Filter:
                                    "((Priority eq 'Medium') and (Status eq
                                    'Unassigned'))"Order By:
                                    "Title asc"Select:
                                    "Id, TaskCatalogName"
