# Release notes


## V1.6.4

Release date: May 28, 2025

We are constantly working to improve your Persistence experience. Even though there are
            no major significant changes with this release, we made sure to bring minor improvements
            to our product.


## V1.6.2

Release date: May 5, 2025

# Improvements

* The Apps dropdown list from the Create App Task activity now displays Action apps based on the Orchestrator folder where they were created and deployed to.
* In Studio Web workflows that are part of a solution, if options are available within the solution itself, they will be displayed for both the Add Queue Item And Get Reference and Start Job And Get Reference activities. This update populates the Queue Name and Process Name dropdown lists with options available as part of the solution.
* When adding a process in Orchestrator that contains a Create App Task activity, referencing a specific Action app, you now have the option to overwrite the packaged Action app with another one during the process configuration in Orchestrator. For more information, visit Deploying processes. Additionally, a similar option is now available for action catalogs - you have the ability to overwrite any action catalog that was initially configured in the Studio process.

# Bug fixes

Erratum: XX May 2025: Selecting Save in the Bulk Form Designer
                did not save the latest changes.


## V1.5.19

Release date: April 2, 2025

# What's new

The ability to create actionable notifications, using the Create App Task activity,
                is now generally available. After you select the desired Action app, enable
                    Actionable notifications, and configure the fields you want to include in
                the actionable notification. Currently, Outlook is the only notification channel
                that supports this feature. For more information on enabling and configuring
                actionable notifications, visit .

# Improvements

We have made the following enhancements to the Create App Task activity: The Orchestrator Folder
                            Path now auto-populates when you select a deployed app from the
                            Apps dropdown list, aligning the location of the app and the task
                        creation. After the field is automatically populated, it becomes
                        read-only.For better visibility, we
                        have also moved the Orchestrator Folder Path property from the
                        Properties panel to the more prominent Designer panel.


## V.1.5.11

Release date: 4 October 2024

# What's new

As part of our ongoing
                        improvements, we have introduced a size limit of 1 MB for arguments
                        used in data at design time.The affected activities are:CreateAppTaskCreateExternalTaskCreateFormTask

# Bug fixes

* For activities of type "wait and resume", we've resolved an issue that incorrectly converted edited numbers with decimal points to integers upon submission. Decimal data will now be retained correctly.
* We've updated the process of creating an App task to fix a bug around tenant name matching. Now, the Orchestrator URL and the API response correctly match tenant names, regardless of differing letter cases.


## V1.5.9

Release date: 19 July 2024

# What's New

App actions are now
                                                  generally available!

What's exciting in this
                                                  release:

* A new Get App Task activity. This activity allows you to fetch either a specific app task or multiple app tasks defined in Apps. To learn more about the Get App Task activity, check the official documentation.
* A new Configure Task Timer activity. This activity allows you to set a timer for tasks that need to be completed by a certain time. Once the task's expiry time approaches, automated processes start notifying you. You no longer need to manually keep track. For more information about the new Configure Task Timer activity, check the official documentation.
* The Apps dropdown in the Create App Tasks activity only shows deployed apps that have actions.


## V1.5.5

Release date: 19 February 2024

# What's New

This marks the release of App actions, currently in public preview! App actions empower you
        to design interactive apps using App Studio, and then employing them as actions within
        Action Center. App actions bring increased customization of actions and a more seamless
        integration between other UiPath services, while interacting during a long-running workflow.
        The key benefits of App actions are:

* Effortless Action creation: easily build custom actions or use pre-made templates in Apps.
* Seamless interaction: create actions while being fully immersed in the UiPath user experience, without using any third-party tool.
* Custom controls: design actions using all the controls available in App Studio.

To kickstart your App actions journey, visit the documentation resources below:

* 
* 
* 

App actions are available with Studio version 2022.10 or
        higher.

# Improvements

Enhanced the platform for an improved user experience.


## V1.4.8

Release date: 20 October 2023

Install UiPath.FormActivityLibrary version 2.0.7 or
            higher to enable the form designer.

# What's New

Advanced Forms

Get ready to experience a new way of creating forms with Advanced Forms in Action
                Center. With these latest enhancements, you'll have even more tools to create
                forms:

* Improved rendering performance.
* Full usage of Edit Grid Templates - Now you can use the Templates for customizing an Edit Grid using JavaScript to enhance your forms.Visit to learn how to customize Edit Grid templates.
* New Button type - The Button component has been revamped allowing it to function as an Event. You can now configure event-based actions for buttons, making your form actions more dynamic and interactive.Visit to learn how to use the new button type.
* Modern JavaScript customization - Personalize your forms using ES6 and modern JavaScript practices.
* Expanded form logic capabilities - Use the instance and options variables in JavaScript form logic, to create more responsive forms.

# Improvements

We enhanced accessibility and user experience with various fixes and improvements,
                including targeted enhancements to the look and feel of activities.


## V1.4.6

Release date: 15 June 2023

# Bug fixes

When using the Persistence activity package inside Cross-platform projects,
                the Create Form
                    Task activity was disabled.


## V1.4.5

Release date: 28 March 2023

# Improvements

Brought improvements for the general performance of the activity package.


## V1.4.4

Release Date: 13 March 2023

# What's New

Assigning tasks just got easier with the improved Assign Tasks activity! How
                did the process of assigning tasks change?You can now assign a single task based on Task ID and username (or
                        email).You can achieve a different view of the activity when you want to assign
                        multiple tasks to multiple users, by selecting Enable Multiple
                            Assignments.

Check out the documentation for the Assign
                    Tasks activity.

# Known Issues

Erratum 14 August 2023: The Form Designer might not automatically update when
                a new column is added to grid components. To address this, you can use the
                workaround documented at the end of the  topic.

Erratum 24 March 2023: When using the 1.4.4 version of the Persistence
                package in Cross-platform projects, the Create Form Task activity is
                disabled.


## V1.4.3

Release Date: 19 December 2022

# New features

The reusability and management of Form Actions is now improved thanks to the Use Local Form File property. This property allows you to create the form layout as a JSON file outside the Create Form Task activity, and inside the project. Find out more about the new properties by visiting the Create Form Task activity page, and more about how to use the feature by checking the Using an external form layout tutorial.

To use the external form layout feature, also install the following packages:

* FormActivityLibrary v2.0.4
* FormActivityLibrary.Contracts v2.0.4.


## V1.4.2

Release Date: 15 November 2022

For Studio versions 2022.10 or higher, you must pair it with Persistence.Activities version 1.4.2 and with FormActivityLibrary.Activities version 2.0.3 or higher.

Features

* The Persistence activity package is now fully compatible with Cross-platform project types.

# Improvements

* Starting with this release, the Form Layout has a limit of maximum 1 MB. Therefore, you are no longer allowed to create Actions that have a Form Layout bigger than 1 MB.To fit in this 1MB limit, you need to embed images inside forms, using Storage Buckets only. Also, we suggest using images of type base64 only for logos and icons smaller than 2KB.
* The look of the activities was improved.

# Known Issues

* When paired with UiPath Studio version 2022.10.3, the Open Form Designer and Open Bulk Form Designer buttons are enabled even if the FormActivityLibrary package isn't installed. Even if the buttons are enabled, clicking them won't perform any action, until you install the FormActivityLibrary package. To solve this, make sure to install the FormActivityLibrary package.
* When paired with UiPath Studio version 2022.10.3, the Open Form Designer and Open Bulk Form Designer buttons don't have tooltips attached, that display when hovering over them.

# Bug Fixes

For the Wait for Form Task and Resume Activity, the AssignedToUserProperty did not display the expected information in the Output panel.


## V1.4.1

Release Date: 28 June 2022

# Bug Fixes

* When leaving empty or clearing a non-mandatory DateTime field inside a grid, users get the following error: "Error converting value "" to type 'System.DateTime'. Path '[1].atd', line 31, position 13". This behavior has been fixed.


## V1.4.0

Release Date: 4 May 2022

* We're boosting the human-robot
                interaction by including action labeling in the robot span of operations. For Create
                form task and Create external task activities, we added a new property called
                Labels, allowing you to add labels for all actions generated by aforementioned
                activities. Moreover, a new activity joins the pack, to help you add or delete
                labels from an existing action. Read more details about the Update Task Labels activity.
* The error "Attempted to access an
                element as a type incompatible with the array" occurred while creating a form action
                through the Create Form Task activity.

May the forth be with you!


## V1.3.4

Release Date: 7 April 2022

With this patch, we upgraded the Telemetry Client version to 1.5.3.


## V1.3.3

Release Date: 15 March 2022

Starting with this version, the UiPath.Persistence.Activities pack supports the .NET5 framework. Additionally, you can now design actions in the OS of your choice, as cross-platform development also becomes available.


## V1.3.2

Release Date: 27 January 2022

We fixed a bug that caused the Create Form Task activity to result in a HTTP timeout expired exception. The exception occurred in Orchestrator versions older than 2021.10 and UiPath.Persistence.Activities packs newer than 1.2.2.


## V1.3.1

Release Date: 14 October 2021

This version contains a fix that allows the package to be installed in v2021.10 Studio. The Persistence pack has a dependency on the UiPath.Activities.Api pack, whose installation was restricted by Studio.


## V1.3

Release Date: 12 October 2021

New patch, new features. Enrich your long-running workflows with the new functionality brought by this version of the Persistence activities package

# Features

* The new Create Form Task property, called Enable Bulk Edit, reveals the freshly added Bulk Form Designer. Use the new designer to create special action forms, that can be updated in bulk.For more information about bulk editing actions, read our documentation.
* Did you know you can instruct your robot to add comments on a specific action? Use the Add Task Comment activity and put your robot to good work.Learn how to use the new activity from our guide.


## V1.2.2

Release Date: 26 April 2021

# Bug Fixes

* The Task Objects (Output) of the Get Form Tasks activity didn't contain the AssignedToUser attribute. We made sure to include it in this version.


## V1.2.1

Release Date: 26 March 2021

# Bug Fixes

* We fixed a bug causing the buttons from Studio to be accessible even if the Form Designer was opened. This occurred for Studio versions greater than 21.4.


## V1.2

Release Date: 8 March 2021

# Features

* March brings new persistence activities, whose unified goal is to smooth your human in the loop workflow design and RPA exploration. From now on, in addition to what the previous pack versions provided, you can:Complete Tasks without the actual human intervention, Forward Tasks to a different user from within the workflow, Get Form Tasks to filter actions by the their DTO properties, and Get Task Data to retrieve the current state of a task object.
* Prior to Persistence Activity pack v1.2, when a user deleted one or more actions from the UI or through API endpoints, the workflow containing the deleted actions remained in a suspended state permanently. This Persistence Activity version resumes the workflow automatically after a deletion, and delivers the isDeleted property of a task object, to help you identify the resumption' source (action deletion or completion).

# Improvements

* The Create Form Task activity is now enhanced with the Reference and GenerateInputFields fields. The Reference field helps you group several actions under the same reference ID, and later retrieve those actions using the Get Form Tasks activity. The GenerateInputFields is a select box field that, if selected, adds the additional entries from the FormData collection to the Form Designer.
* The Task Assignment Type property of the Assign Task activity now holds the Reassign attribute, which allows you to assign the same action to a different user.
* The Task Object (Output) from the Create Form Task activity has an additional property, namely ActionUrl, configured as https://cloud.uipath.com/<myOrganization>/<myTenant>/actions_/tasks/<taskId>. This URL directs the user to the cloud version of the action that corresponds to the <taskId>, from the <myTenant> tenant within the <myOrganization> organization in Automation Cloud.

Bug Fixes

* The TableName of a DataTable object used in a Create Form Task activity was lost after the execution of the corresponding persistence point activity (WaitForFormTaskAndResume). This behavior no longer occurs.
* We fixed an issue that caused a runtime error for the CreateFormTask activities that had Select Boxes components.


## V1.1.9

Release Date: 13 November 2020

# New Features and Improvements

This update brings a new, optimized reading of task meta-data, specifying only the fields that are required and thus helps scenarios where workflows contain the Wait for Task and Resume activity in a Parallel For Each with a large number of Actions in the list.

Please note that it is recommended to introduce an appropriate batching of the number of actions that one job can wait on for each business scenario, as the payload size is influenced by the size of the form per Action, as well as the server capacity (server configuration, expected load, etc.), while using the Wait for Task and Resume activity in a Parallel For Each. The default limit is set to 1000 actions per job, on which you can read more here.


## V1.1.8

Release Date: 12 October 2020

# New Features and Improvements

The amount of packages you can find on UiPath activity feeds is humongous, and it grows with each passing day. This can prove to be a nuisance when searching for a package with a more common name, for example. We felt your pain and decided to do something about this. From now on, all UiPath official activity packs can be easily filtered in the Package Manager so you’ll be able to reach your favorite package in no time!

In a lot of business cases, the need arises that people can upload files when completing a form, and the files then need to be passed on to other machines in order to be processed. Uploading files and passing them to Robots by using the Create Form Task and Upload File activities is now supported, and the RPA developer can configure parameters such as maximum file size and single or multi upload.


## V1.1.7

Release Date: 1 September 2020

# Improvements

Telemetry is now supported only if the versions of the Studio and Robot you are using are above v20.4.


## V1.1.6

Release Date: 17 August 2020

# Improvements

Due to some internal dependencies that have been modified, a hotfix has been created for this activities pack and the version has been incremented.


## V1.1.5

Release Date: 5 August 2020

# New Features and Improvements

The TLS internal dependency version has been upgraded to match the one used by the entire UiPath Platform.

Folder Path headers used when performing Orchestrator API calls have been modified for enhanced functionality.

Performing API calls to Orchestrator can now be done by using the bearer tokens from the Robot API.

Dynamic drop-downs in forms can now be used with the Create Form Task activity, enabling you to select which values are displayed in a child drop-down based on the selection in a parent drop-down.

The Persistence activities pack has been updated to support the new Interactive Sign In feature, enabling the usage of the Access Token for accessing Orchestrator Resources.

The FormTaskData object now features several new attributes, which enable you to filter your results by criteria such as User ID or creation and completion time. These values are populated when the workflow connects to Orchestrator 20.7 or above and remain empty for lower versions.

# Bug Fixes

* When using the Create Form Task activity, values in drop-down menus were duplicated.
* Fixed an issue that caused very long response times in Orchestrator when using large forms with the Create Form Task activity.
* When using search in drop-downs, only the first 4 results were displayed.


## V1.1.4

Release Date: 22 June 2020

# New Features and Improvements

The Storage Bucket Name and Storage Folder Path properties have been added to the Create Form Task activity, to fully enable you to use the Orchestrator Storage Bucket feature in your workflows.

# Bug Fixes

* The Start Job And Get Reference activity failed to create jobs when using Modern Folders if a folder path was supplied.
* When using Modern Folders, the Persistence activities failed to execute if a folder path was not supplied.


## V1.1.3

Release Date: 21 April 2020

# Improvements

This patch has brought the End User License Agreement of the UiPath.Persistence.Activities up to date.


## V1.1.2

Release Date: 9 April 2020

# Improvements

Internal dependencies have been updated to be consistent with updates done to the UiPath.Form.Activities pack.


## V1.1.1

Release Date: 23 March 2020

# New Features and Improvements

Further developing our  solution, the ,,, and  activities have a new property, called FolderPath, which
                enables you to designate the creation of tasks in other folders than the one the
                Robot executes in.

# Known Issues

* Drop-down fields do not function properly in Task Forms, values in drop-downs are duplicated, automatically deleted, and search does not work with them in versions lower than Orchestrator 20.4.


## V1.1.0

Release Date: 4 February 2020

This package version requires Studio v2019.10 or above and Orchestrator v2020.2 or above. This also requires upgrading the UiPath.FormActivityLibrary to v1.0.2 or above. Using versions lower than recommended does not provide the long running workflow capabilities and may create unexpected results during execution.

New Features and Improvements

As we now support external tasks, we have added two new activities,  and , that can easily
            add external tasks to your workflows.

The  activity has been
            added, enabling you to assign any kind of task to a specified human user.

# Known Issues

* The Edit Grid control for IN arguments displays a read-only grid with an add new row button.
* DataTables with OUT direction added in the FormFieldsCollection property do not function properly.


## V1.0.1

Release Date: 25 October 2019

# New Features and Improvements

This release features our first stable official version of the Persistence activities, comprised of seven activities, as follows:

* Start Job And Get Reference
* Wait for Job and Resume
* Add Queue Item And Get Reference
* Wait For Queue Item And Resume
* Create Form Task
* Wait for Form Task and Resume
* Resume After Delay


## V1.0.0

Release Date: 23 September 2019

# New Features and Improvements

This first version of the Persistence activities pack comes as a Community release, meant to showcase the newest concept that we want to introduce in the world of Digital Process Automation. These activities, alongside our other features in the rest of the UiPath components, embody our Human In the Loop cross-platform concept, which uses a seamless transition between robotic automation and human intervention to enhance the capabilities of RPA.

