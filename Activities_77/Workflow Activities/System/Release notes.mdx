# Release notes


## v25.4.4

Release date: May 29, 2025

# Bug fix

Run Job

activities running a job without any input arguments caused your automation to fail.


## v25.4.3

Release date: May 26, 2025

# Bug fixes

* The Run Job activity applied the input arguments of the first item in the list for all items when used inside a Parallel For Each activity.
* Fixed an issue where arguments weren't importing correctly in certain Solutions contexts.
* Running System v25.2.1+ activities caused a WorkerProcess.exe error, which incorrectly required the installation of .NET6.


## v25.4.2

Release date: April 30, 2025

# Run Job: a fusion activity

We're streamlining how you start other automations within your workflows with the introduction of a new, comprehensive activity: Run Job. This activity consolidates the functionality of several existing activities:

* Start Job
* Run agent
* Start Job and Get Reference + Wait for Job and Resume

The Run Job activity offers offers flexible options for managing the execution flow, through the Execution mode setting: you can wait for outputs, suspend the execution with persistence, or run the job without waiting. It also offers you a way to provide input arguments statically or fully dynamically during design time, for any process type, such as RPA, Agent, or API.

Known limitation: When used inside a Parallel For Each activity, Run Job applies the input arguments of the first item in the list for all items. As a workaround, use the For Each activity instead of Parallel For Each.

Learn more about the Run Job activity in our documentation.

# Updates to Orchestrator activities in Studio Web solution-based projects

For Studio Web projects that are part of a solution, we've made the following changes to how Orchestrator activities work:

The Orchestrator folder path field is now unavailable for these projects.The name field now offers two options:Define new—to create the missing Orchestrator resources, such as queues, assets, or storage buckets, during design time.Open Orchestrator—to manage existing Orchestrator resources, such as queues, assets, storage buckets.

# Bug fix

The Wait Queue Item activity now triggers a Start transaction entry in the workflow logs when used in a Process Tracking Service (PTS) context.


## v25.2.4

Release date: April 2, 2025

# Untitled Section

This version enables support for Orchestrator-related activities used in a Solution. Keep in mind that this support is part of a public preview experience. When interacting with a Solution, a banner notifies you that you are using a preview feature.


## v25.2.3

Release date: March 25, 2025

# Bug fix

The Agent name dropdown of the Run Agent preview activity would not display any agents, even though agents existed in the selected folder. This occurred when Agentic processes or apps were also deployed to the selected folder.


## v25.2.2

Release date: March 6, 2025

This activity package delivers several improvements to the Run Agent - preview activity.


## v25.2.1

Release date: February 18, 2025

# Process tracking activities

New activities join the pack!

A warm welcome to long-awaited Process Tracking Scope, Set Trace Status, Set Task Status, and Track Object activities, developed specifically for optimizing and monitoring existing workflows. These new activities provide granular insights into your processes, allowing for detailed object, task, or trace management. Integrate these activities with Process Mining to have an end-to-end view of your process, identify bottlenecks, optimize performance, and facilitate data-driven decisions to improve your automation.

To access the full functionality of these activities, make sure you're using the latest UiPath Studio and System activity package version.

Using earlier Studio versions with System activity package v25.2.1 provides access to all activities mentioned in this release note. However, it lacks the functionality to automatically switch from a Sequence to a Process Tracking Scope activity, or vice versa. The latest Studio version includes this option: it's the Process tracking checkbox, that is available for both the Sequence workflow type and the Process Tracking Scope activity, as the transition is bidirectional.

# Improvements

* Erratum, added April 2, 2025: In version 25.2.1, we adjusted the retry mechanism for Orchestrator activities. Previously, it unnecessarily threw a TimeoutException after retries. Now, it correctly rethrows the last received error, and only returns a TimeoutException if no response is received within the timeout period. Additionally, HTTP 404 response codes are no longer retried.Original note: In both cases, the retry mechanism respects the activity Timeout property value, which is set to 30 seconds by default.The retry behavior is as follows:The retry mechanism for Orchestrator-related activities has been improved to handle the following HTTPS response codes, in addition to the already supported 408 and 429:404 Not found500 Internal Server Error502 Bad Gateway503 Service Unavailable504 Gateway TimeoutIf the Retry-After response header is present in the response, its value is used to determine the retry interval.If the Retry-After response header is not present, the activity retries every two seconds.
* On-hover descriptions for the Start Job, Invoke Process, and Run Parallel Process activities have been updated to provide clearer explanations of their use cases.
* The Report Status activity now logs the string from the Status Text field at the Info level in both the Studio Output panel and Orchestrator logs.
* Several System activities now have support for the Process Tracking Service. With this update, these activities can automatically send information about traces, tasks, and objects.

# Breaking change

Starting with the 25.2.1 release of the System activity package, support for the .NET 4.6.1 framework has been discontinued. As a result, this and all subsequent package versions cannot be used for Windows-Legacy projects. Restrict package usage to Windows or cross-platform projects exclusively.

Package versions released before this date continue to support .NET 4.6.1 until October 2027.

# Known issue

Using a Set Task Status activity in a workflow that is further invoked from the Process Tracking Scope activity is not permitted.

However, to set the status of the invoked workflow:

1. In the invoked workflow (A), create Out arguments of the following types: UiPath.Activities.System.ProcessTracking.TaskStatus, or UiPath.Activities.System.ProcessTracking.TraceStatus.
2. Use the Assign activity to assign a status to the Out arguments created in step 1. For example, setting a cancelled status for a task type argument: StatusOutArg = UiPath.Activities.System.ProcessTracking.TaskStatus.Cancelled.
3. In the process-tracking scoped workflow (B), from where you invoke the workflow (A), use a Set Task Status activity.
4. For the Status field, select the Out argument configured in steps 1 and 2.

# Known issue

Added May 26, 2025

Running System v25.2.1+ activities caused a WorkerProcess.exe error, which incorrectly required the installation of .NET6. To resolve this, make sure .NET 8 Desktop Runtime is installed, or upgrade your System activity pack to v25.4.3.

# Bug fixes

* When you hovered the cursor over the fields in a Multiple Assign activity, it prevented scrolling within the workflow.
* The Preview field of the Combine Text activity did not display the merged strings.


## v24.10.7

Release date: December 5, 2024

# Bug fixes

Several System activities incorrectly logged the "[AutomationTracker]: The service is not enabled" message.

# Security fixes

This release brings several minor improvements and security fixes.


## v24.10.6

Release date: October 21, 2024



# What's new

This package version brings in a new activity, currently in preview, aimed to help you execute business rules defined in Orchestrator. The Evaluate Business Rule activity not only streamlines decision-making processes in your workflows, but also enhances auditing of complex decisions, and assesses their impact as part of an end-to-end process.

# Improvements

* System activities for storage bucket operations now support the disabled pre-signed URL setting. This prevents the use of pre-signed URLs during storage bucket operations.
* To update the JSON schema properties of the selected queue in an Add Queue Item activity, use the Refresh arguments option next to the Item Information property.
* A new property, Timeout (ms), has been added to Is Text Matching, Find Matching Patterns, and Replace Matching Patterns activities. It helps prevent performance issues when these activities process complex or inefficient RegEx patterns.
* Minor UI tweaks for several activities include changing the Import Arguments and Open Workflow buttons into clickable links: Refresh arguments and Open workflow. The Open workflow change applies to the Invoke Workflow File activity while the Refresh arguments link is relevant for Invoke Workflow File, Invoke Process, and Add queue item activities. To open the arguments list and edit their attributes, select the Arguments field box.
* The Browse for file activity allows you to set a default directory that automatically opens in the Open dialog box. It also allows multiple files to be selected at once and outputs a list that contains the full paths to those files.

# Bug fixes

* Outputs from Input Dialog and Browse For Folder activities contained unexpected characters, due to an encoding issue.
* Special characters in file names would prevent the successful execution of the Delete Storage File activity.
* Tooltips for the Username and Password fields in the Get Credential activity were previously interchanged. Now, they are displayed correctly.
* Prompts from Browse for File and Browse for Folder activities weren’t always displayed on top of other applications.

# Security fixes

* This release brings several minor improvements and security fixes.


## v24.10.5

Release date: September 9, 2024

# Bug fixes

* Previously, the Invoke Workflow activity displayed multiple output arguments on the same, single line. Now, each output argument is displayed on a separate line.
* We've addressed several vulnerabilities.


## v24.10.4

Release date: July 15, 2024

Starting with this package version, System activities need Studio 2023.4 or newer.


## Erratum

Versions 24.10.3, 24.10.2, 24.10.1, and 24.10.0 are unavailable for selection in the Official feed of activity packages. Use the latest package version for System activities, 24.10.4.


## v24.10.3

Release date: July 1, 2024

# Bug fixes

The Invoke Workflow File activity would still display a warning for missing arguments, even if they were correctly configured.


## v24.10.2

Release date: June 27, 2024

# Bug fixes

In cross-platform projects, the Invoke Workflow File activity encountered an issue when trying to access files from a subfolder, causing it to fail.


## v24.10.1

Release date: June 27, 2024

# Bug fixes

An issue prevented coded workflow files from being published or compiled if they were declared in a namespace starting with "UiPath."


## v24.10.0

Release date: June 27, 2024

# Improvements

* Files keep their original names when handled via compression and extraction activities. Additionally, new activity properties help you manage how files are zipped or unzipped.
* A new design proposes a logical sequence for For each activities. The values you provide in the In and Current item fields define the activity’s title.For example, with "emails" in the In field and "userEmail" in the Current item field, the title becomes "For each userEmail in emails". Modifying the Current item value instantly adjusts the title. If you erase this value, the system auto-generates a default name such as "currentItem". Additionally, the Current item field moves to the Advanced-options section of the activity.
* Transaction-specific properties, including Id, Progress, SpecificContent, Reference, QueueName, and RetryNo, are now available for selection in activities that produce a QueueItem object. However, an exception is the Get Queue Items activity, which doesn't display these properties in Studio Web.
* The log level for the "Transaction video snapshot is not supported" message has been downgraded from Warning to Info .
* In the New Item Added to Queue activity, queues with a Specific Data JSON schema now have a new Specific Data output property, allowing direct access to user-defined queue properties.
* The GetCredential coded automation API now provides two functions:string GetCredential (...), where you provide an asset name and the method returns the username.(string, SecureString) GetCredential (...), where you provide an asset name, and the method returns the username and the password.
* A more intuitive configuration experience has been added to the Invoke process activity. Additionally, it now provides automatic context identification of process arguments.
* The Invoke Workflow File activity now offers the same user experience and configuration properties for both Windows and Cross-platform projects. Plus, it introduces several new properties to simplify arguments handling and setting up execution.

# Bug fixes

* Transaction operations displayed the warning message "Transaction video snapshot is not supported" to indicate a robot version incompatible with the job recording feature. This occurred even when the transaction was successful.
* An Invalid Operation Exception sometimes occurred when using the Kill Process activity in a library-based project.
* The text preview fails when using new lines in Text Builder widgets of activities managing text or dates. This issue occured as the activity automatically replaced the text for a String.Format() expression, which could not be parsed.The fix currently applies to System activities used in Studio Web projects.


## v24.3.1

Release date: April 10, 2024

# Bug fixes

Wait for Download and Do While activities were incorrectly displaying an extra Body property in Studio Web.


## v24.3.0

Release date: April 1, 2024

# Get Transaction Item: New Specific Data output property

In the Get Transaction Item activity, queues with a Specific Data JSON schema now have a new Specific Data output property, allowing direct access to user-defined queue properties.

# Invoke Power Shell: New Execution Mode property

When using modules in the Invoke Power Shell activity, you can now directly select a PowerShell version through the Execution Mode property, which displays the following options:

* PowerShell Core 7.2.15
* WindowsPowerShell 5.1 64 bit
* WindowsPowerShell 5.1 32 bit (for Legacy projects)

The following recommendations apply:

* For the VSTeam module, use PowerShell Core 7.2.15, as it does not require deserialization, and the output can be easily used inside the workflow.
* For process argument transformation, use the WindowsPowerShell 5.1 execution mode.
* For the CimCmdlet module, use the WindowsPowerShell 5.1 execution mode.

# Improvements

* The Get Credential activity can now retrieve credentials from an offline Credential Store - configured in Orchestrator as a disconnected proxy. This means you can retrieve only Windows credentials without having your passwords travelling through our cloud.
* System activities now support the Retry-after response header for Orchestrator operations.
* The Sample Input field of the Generate Data Table From Text activity has been improved to:support Tab charactersuse a monospace fontThese improvements simplify data visualization in Legacy and Windows projects.
* For the Add Transaction Item activity, we’ve moved the Transaction Item field to the dedicated section for Output properties.
* We’ve renamed the Output Data Table activity to Output Data Table as Text. Additionally, searching for the term convert returns this activity as a result.

# Bug fixes

* In versions 22.10.8+ of UiPath.System.Activities, the Generate Data Table From Text activity may process tables incorrectly when:the input text includes fixed width columns padded with spaces.header column names span across multiple rows.This version improves column autodetection and processing.
* We’ve addressed the issue where System activities for credentials and assets lost their configured values when disconnecting from Orchestrator. Additionally, all Orchestrator activities now maintain values that were associated with the selected Orchestrator folder.
* Get Asset and Get Credential activities now work properly with on-premises Orchestrator versions 2023.10 and older.
* Now, when you drag and drop a credential into the Get Asset activity, the Asset Name field is marked with an error, therefore preventing the workflow’s execution.
* Read Text File, Write Text File, and Append Line activities now support shift_jis as an Enconding value.
* The Build Collection activity now supports single-item collections.
* The Raise Alert activity now works as expected when the Continue on error property is set to True.


## v23.10.6

Release date: April 1, 2024

# Improvements

For the Add Transaction Item activity, we’ve moved the Transaction Item field to the dedicated section for Output properties.

# Bug fixes

We’ve addressed the issue where System activities for credentials and assets lost their configured values when disconnecting from Orchestrator. Additionally, all Orchestrator activities now maintain values that were associated with the selected Orchestrator folder.


## v23.10.5

Release date: 8 February 2024

# Bug Fixes

The

Invoke Code

activity would throw the "No compiled code to run" exception when used in Windows Legacy projects. This behavior no longer occurs.


## v23.10.4

Release date: 26 January 2024

# Bug Fixes

* When renaming the Invoke Workflow File activity in Studio Web, the project would return an error stating "Object reference not set to an instance of an object".


## v23.10.3

Release date: 4 December 2023

# Improvements

* Multiple improvements to the CRON expression field in the Time Trigger activity have been implemented.

# Bug Fixes

* Erratum - added June 3, 2024: The faulted For each behavior still occurred in Studio versions earlier than 2022.10.12. The fix requires:the System activities pack - version 2023.10.3 or newerStudio - version 2022.10.12 or newer

* After upgrading the System activities package in a 22.10.x project, the For Each activity would throw an error when expanding the advanced options field.
* Multiple bug fixes for the advanced CRON expression field in the Time Trigger activity have been implemented.


## v23.10.2

Release Date: 25 October 2023

# What's New

The following activities have been added:

* Add or Subtract from Date
* Change Case
* Download file from URL
* Extract Date and Time from Text
* Extract Text
* Find and Replace
* Format Date as Text
* Return
* Split Text
* Combine text

The following activities received an improved interface:

* Check True
* Check False

The following activities have been renamed:

* Replace → Replace Matching Patterns

# Improvements

* Invoke Process and Start Job activities received an update related to selecting processes with arguments that have an unknown type to not throw an error.
* Manual Trigger, Time Trigger, and Get Current Job Info activities now display the UserEmail and JobKey properties in the JobData field.
* The Multiple Assign activity has received some visual updates to improve readability for longer variable names.
* The For Each activity now supports persistence.
* The Bulk Add Queue Items activity now has an improved error message when unsupported characters are used.

# Bug Fixes

* For Each activity did not infer the type correctly on C# projects.
* The type picker for the For each activity has been re-enabled.
* Multiple type auto-detection issues have been resolved.
* An issue causing the Extract/Unzip files activity to not extract special characters has been resolved.
* An issue causing the RegEx Builder to highlight the wrong string has been resolved.
* An issue causing the Extract/Unzip files activity to not extract files when the file name contained special characters has been resolved.


## v23.4.5 

Release Date: 2 October 2023

# Bug Fixes

An issue causing System Activities to trigger a client side timeout has been
                resolved. The issue was happening when a direct HttpClientHandler was used in
                    Windows - Legacy Projects. This made the HTTP connection unable to handle
                the new refresh token and trigger the timeout error.


## v22.10.8

Release Date: 29 August 2023

# Bug Fixes

An issue causing System Activities to trigger a client side timeout has
                                been resolved.

The issue was happening when a direct HttpClientHandler was used
                                in Windows - Legacy Projects. This made the HTTP connection
                                unable to handle the new refresh token and trigger the timeout
                                error.


## v23.4.3

Release Date: 31 May 2023

# What's New

Some accessibility improvements have been added.


## v22.10.6

Release date: 30 May 2023

This release brings several minor bug fixes.


## v23.4.2

Release date: 12 April 2023

# What's New

To decrease the package size for runtime, especially for cross-platform projects, the
                    UiPath.System.Activities package was split into design-time package and
                runtime packages, as follows:

* UiPath.System.Activities - design time package
* UiPath.System.Activities.Runtime - runtime package; targets Windows and Windows-Legacy projects
* UiPath.System.Activities.Runtime.Portable - runtime for portable package; targets Cross-platform projects

The following activities have been added:

* Start all Triggers
* Stop all Triggers
* Repeat Trigger

The following activities received an improved interface:

* Switch
* Add Data Row
* Else If
* If
* Try/Catch
* Wait for Download
* Join Data Tables
* Output Data Table
* Clear Data Table
* Lookup Data Table
* Merge Data Table
* Add Data Column
* Remove Data Column
* Update Row Item
* Get Row Item
* Remove Duplicate Rows
* Generate Data Table From Text

# Improvements

* The Read Text File and Write Text File now provide an easier way of selecting the file path.
* You can now search for the Matches activity using “Regex” or “Extract” words as well.
* A new property called Cache Strategy has been added to the Get Asset / Credential activities. It allows you to cache information and improve the workflow execution time.

# Known Issues

* In the HTTP Request activity Preview functionality does not work when variables are used inside the HTTP Request Wizard.

# Bug Fixes

* The File Change Trigger activity used the folder ID to monitor instead of the provided path.
* Not all dependencies tied to the System activities packages were available on the Official feed.
* An issue causing the parameters to clear out when using the configure button in the HTTP Request activity has been resolved.
* An issue causing the Add Data Row activity to not populate the Properties panel and failing to create a variable using “ctrl+k” has been resolved.
* An issue causing the output of an HTTP request to be null has been resolved.
* An issue causing the CopyFolder activity in StudioX to dispose the context before accessing resources has been resolved.
* Declaring a variable into the scope of the For Each activity with the same name as the iteration variable, it would have overridden the iterator value to the default value declared.
* An issue causing the Start Job activity to return the wrong Job Key in the Job Key output property has been resolved.

Erratum: added 7 June 2023

An issue has been resolved that was causing the Comment activity to throw the "Input
                string was not in a correct format." error message when special characters were
                used.

# Breaking Changes

* The Transactional Information field in the Add Transactional Item activity can no longer be edited.
* The System activity pack 23.4 is not compatible with Studio 2020.10 and older.


## V22.10.5

Release date: 6 April 2023

# Bug Fixes

* Running a Windows or cross-platform process containing a Get Asset activity caused the UiPath Executor to crash and log an error in the Windows Event Viewer at the end of execution.


## V21.10.6

Release date: 7 December 2022

This release brings several minor bug fixes.


## V22.10.4

Release date: 7 December 2022

# New Features and Improvements

Support for Traditional Chinese

The user interface of the activities in the System package is now available in Traditional Chinese.

# Bug Fixes

* Changes to the Get Asset activity's Output property were not saved when no other changes were made to the activity.
* Some activities (Multiple Assign, Invoke Workflow File, or For Each) did not work as expected when the UiPath.System.Activities pack version was newer than the Studio version (for example, UiPath.System.Activities 22.10.2 did not work as expected with Studio 2021.10.8).
* Several accessibility issues have been fixed.


## V22.10.3

Release Date: 27 October 2022

Erratum: 22 June 2023: added the breaking
                                                  change.

# New Features and Improvements

New Activities

* Collection to Data Table - Converts a specified collection to a DataTable.
* Append Item to Collection - Appends one or more items at the end of the specified collection.
* Build Collection - Creates a collection of items that have the same type as the first specified element.
* Exists in Collection - Checks if the specified item exists in the specified collection.
* Filter Collection - Filters a collection based on the specified conditions.
* Merge Collections - Combines the elements of two collections in a new collection.
* Remove from Collection - Removes the specified item from the specified collection.
* Reset Timer - Resets the input timer provided as an argument.
* Resume Timer - Resumes the input timer provided as an argument.
* Start Timer - Creates a new timer or restarts an existing one received as an argument.
* Stop Timer - Stops the timer previously started using the Start Timer activity.
* Timeout Scope - Creates a scope with limited execution time. The activity throws a System.TimeoutException in case of a timeout.
* Manual Trigger - When triggered, this activity outputs job data.
* When New Item Added to Queue - Starts a job when a new item is added to the specified queue.

Improvements

* The Get Current Job Info activity now returns the mode of execution and the robot name.
* The Add Queue Item and Set Transaction Status activities now import schema definitions values marked as required from Orchestrator in the Dictionary Builder wizard of the activity.
* Orchestrator activities such as Add Queue Item now have improved exception handling to make errors more clear.
* The Compress/Zip Files activity has been updated with a new property, SecurePassword, available in Windows-Legacy and Windows projects.
* Over 70 activities have been updated with the new design in Cross-platform projects, for a full list see Project compatibility. The following activities also have the new design in Windows projects: Raise Alert, Orchestrator HTTP Request, Get Asset, Get Credential, Set Asset, Set Credential, Append Item to Collection, Build Collection, Collection to DataTable, Exists in Collection, Filter Collection, Merge Collections, Read List Item, Remove from Collection, Update List Item, Get Jobs, Start Job, Stop Job, Add Log Fields, Remove Log Fields, Add Queue Item, Add Transaction Item, Bulk Add Queue Items, Delete Queue Items, Get Queue Items, Get Transaction Item, Postpone Transaction Item, Set Transaction Progress, Set Transaction Status, Break, Continue, Manual Trigger, and When New Item Added to Queue.
* On Cross-platform projects, the Append Item to List activity has been replaced with the Append Item to Collection activity.
* The Set Transaction Status activity now has both Output and Analytics data present in Orchestrator even when the status of the item is Failed.

# Bug Fixes

* The SecurePassword parameter was null when using the Get Username/Password activity when the AutosubmitTimeoutSeconds was set to 0.
* Wait for Download activity failed to execute properly when the size of the file being downloaded was 0 bytes.
* The Invoke Code activity could not access Microsoft.Office.Interop.Excel namespaces.
* Message Box activity threw an exception when the AutomaticallyCloseAfter property was set to a value and the OK button was pressed in time.
* Activities that suspend the workflow, such as Wait for Document Classification Action and Resume crashed when the project was run.

# Breaking Change

System 22.10.3 and higher is not fully
                                                  compatible with versions of Studio that are lower
                                                  than 2021.10.10.


## V22.4.5

Release Date: 12 September 2022

Bug fixes

* Due to an activity package dependency issue, there was a conflict when using certain versions of the System activity package in Windows projects.
* You could not install the System activity package on certain versions of Studio.


## V22.4.4

Release Date: 3 August 2022

This release brings several minor improvements.


## V21.10.5

Release Date: 25 May 2022

This release brings several minor bug fixes.


## V22.4.1

Release Date: 9 May 2022

# New Features and Improvements

* Added a new property named MaxIterations for While and Do While activities. When set, the execution of the loop is performed until the number of iterations is reached. For more information, see While and Do While.
* Added a new property named Ignore file extensions inside the Wait for Download activity. Inside this field you can specify which file extensions should be ignored until the download completes. Find out more from the Wait for Download documentation.
* Added a new activity named Set Environment Variable, which allows for the creation of a user environment variable. For more information, see Set Environment Variable.
* Added a new property named Index for the While and Do While activities. This is a zero-index counter (INT32) and can be used for tracking the iterations during execution. For more information, see While and Do While.
* The Else If activity is now available in the StudioX profile.
* The Kill Process activity has been updated with a new filtering option, OnlyCurrentDesktop for the AppliesTo property.
* The Start Job activity has been updated with new options that make the activity compatible with modern folders and input arguments.
* The Run Parallel Process and Invoke Process activities have been updated with a new property called UsePackage.
* A validation error message has been added to the Matches and Is Match activities that is triggered by invalid Regex expressions.
* The following activities are now available in the Studio profile:Append Item to List - Adds an item at the end of the specified list. Create List - Creates a new empty list. Read List Item - Retrieves the value of a specific item in a list. Update List Item - Updates the value of a specific item in a list.

New Activities

* Get Current Job Info - Retrieves information such as Process name, Workflow name, User name, User email, and Timestamp from the current Orchestrator job.
* Change type - Changes the type of a variable to another type.

# Bug Fixes

* A different comment from the one provided was being displayed when using the Comment activity.
* The Wait for Download activity was not working correctly when the trigger inside it did not have a surrounding Do sequence.
* In certain cases, an exception was being thrown with the message Assembly with same name already loaded when using the Invoke Code activity.
* The Kill Process activity didn’t work correctly when a process name had the extension added.
* An error occurred when the Else If activity was used with a DataTable that returned zero rows.
* No output was returned by the Message Box activity in certain cases when the AutomaticallyCloseAfter property was used.
* An error occurred when C# (C-Sharp) code was used with the Invoke Code activity.
* PowerShell variables and argument collections were not being updated when using the Invoke Power Shell activity.
* The Compress/Zip Files was converting empty folders to files which would prevent the output from being uploaded to the Data Manager.
* The Extract/Unzip Files activity sometimes failed to access certain folder paths.


## V21.10.4

Release Date: 26 January 2022

# Bug Fixes

Fixed an issue which caused UiPath Studio to output an error when using UiPath.System.Activities 21.10 to open an XML file created with UiPath.System.Activities 21.4.

Fixed an issue with the Invoke Code activity which caused imports not to compile in libraries when the activity used an external package.

Fixed an issue where the For Each Row in Data Table activity would not expand when
                activities with wide designers were added inside.


## V21.10.3

This release brings several minor improvements.


## V21.10.2

Release Date: 26 November 2021

# New Features and Improvements

The package now includes an Else If activity which is useful when multiple conditions must be evaluated. For more information about this activity, see Else If.

Entries inside the Multiple Assign activity can now be reordered using the new Move button. Find out more about this feature here.

The Message Box activity now includes a maximum timeout. When it expires, the message is
                automatically dismissed. By default, this is set to 0 so that older workflows are
                still compatible. For more information about this activity, see Message
                    Box.

This activities package now supports .NET 5 Windows and Cross-platform projects. For more information, see About Automation Projects.

The new For Each Folder in Folder activity enables you to execute an activity or a series of activities for each child folder in a specified folder.

The new Create List activity enables you to create a new empty list (array) to be used later in the automation.

The new Append item to list activity enables you to add an item at the end of a specified list.

The new Read list item activity enables you to retrieve the value of a specific item in a list.

The new Update list item activity enables you to update the value of a specific item in a list.

The new Rename Folder activity enables you to rename a specified folder.

The new Rename File activity enables you to rename a specified file.

# Bug Fixes

Fixed an issue which caused the Start Job to return a BadRequest exception.

Fixed an issue which caused the Build Data Table activity to return an error when the Data Table button was clicked.

# Known issues

The Invoke Workflow activity doesn't support variables/arguments as workflow file names in Modern .NET 5 Windows projects. This will trigger an "Expressions are currently not supported" error notification.

The Invoke Code activity from UiPath.System.Activities pack version 21.10 is only compatible with UiPath Studio 21.10 or newer versions.


## V20.10.6

Release Date: 26 November 2021

# Bug Fixes

Fixed performance issues regarding the Message Box activity.


## V21.4.0

Release Date: 26 April 2021

# New Features and Improvements

The Orchestrator HTTP Request activity is now compatible with the Modern Folders feature in Orchestrator.

The Check True and Check False activities now have a new property, named Result, which outputs a boolean variable that states whether the expression it was used with was true or false.

The Invoke Process and Invoke Workflow File activities now log additional information when running.

The Invoke Process and Invoke Workflow File activities now receive dynamic arguments as input.

The Set Credential activity now has a new property field that uses SecureString variables for sensitive login information, called SecurePassword.

The Message Box activity has a new property, called TopMost, that, if selected, forces the message box to the foreground. The Select File and Select Folder activities are now displayed in the foreground automatically.

The Kill Process activity has a new property field, named AppliesTo, which enables you to choose whether to kill the process only if it belongs to the current user, only if it is on the current session, or if it belongs to a different user.

We have added a new activity, Update Row Item, which enables you to assign a specified value into an indicated column of a DataTable.

The Else section of the If activity is now optional in
                all Studio profiles.

We have added a new activity, Modify Date, which updates a date value using modifications like adding or subtracting days and finding the first or last day of the week, month, or year.

The following DataTable activities have been ported over to the StudioX profile:

* Generate Data Table from Text - Generates a DataTable variable from structured text.
* For Each Row in Data Table - Executes an action once for each row in a specified Data Table.
* Filter Data Table - Enables you to filter a Data Table by specifying conditions in the Filter Wizard window.
* Read Row Item - Retrieves a value from a row in a Data Table according to a specified column.

# Bug Fixes

* The Invoke VBScript activity did not work properly when whitespace was present in the path of the invoked file.
* The SY-USG-013 Workflow Analyzer Rule was executed for libraries.
* Fixed an issue which caused the Read CSV activity to throw an exception when used with Excel activities.


## V20.4.4

Release Date: 20 October 2020

# Improvements

This release addresses the hotfix released by Microsoft for a critical security vulnerability in the way .NET deserializes XML.


## V20.10.1

Release Date: 12 October 2020

# New Features and Improvements

We have developed a completely new scope activity for triggers, called . This activity is usable with all
                                                  the triggers present in both UIAutomation
                                                  and System activity packs. It offers the
                                                  required arguments to work with the trigger out of
                                                  the box, like trigger name and type or its source
                                                  event. Moreover, it can treat the incoming events
                                                  sequentially or concurrently while it can exit
                                                  after one execution.

The Process Start Trigger, Process End Trigger, and Break activities can now
                be used inside the Trigger Scope activity.

The  activity has been made
                                                  compatible with Studio, which means you can now
                                                  use its functionality when building workflows with
                                                  your favorite profile.

The new Modify Text activity enables you to update a text value using modifications including find and replace, trim, and combining (concatenating) with another text value.

The new  activity enables
                                                  you to retrieve the text to the left and to the
                                                  right of a specified separator.

The new Compress/Zip Files activity enables you to add files or folders to a compressed (zip) file.

The new Extract/Unzip Files enables you to extract all the contents of a zip file archive to a specified folder.

The Wait Queue Item activity has migrated away from using the Timeout (milliseconds) property to determine its timeout duration and, instead, uses the Heartbeat interval, so it can sync much more efficiently with Orchestrator.

The Download File activity has been renamed to Wait for Download to better reflect the intended usage of the activity in your automation projects.

This activity pack has now been upgraded and is fully compatible with the C# Studio feature. For more information about C# support, see About Automation Projects.

The amount of packages you can find on UiPath activity feeds is humongous, and it grows with each passing day. This can prove to be a nuisance when searching for a package with a more common name, for example. We felt your pain and decided to do something about this. From now on, all UiPath official activity packs can be easily filtered in the Package Manager so you’ll be able to reach your favorite package in no time!

This release also addresses the hotfix released by Microsoft for a critical security vulnerability in the way .NET deserializes XML.

The HTTP Request activity now enables you to set custom accepted response MIME types (provided through a dedicated header) when you choose the new CUSTOM value in the AcceptFormat property, thus no longer limiting responses to the built-in formats.

Use the new endpoint SetRobotAssetByRobotKey to set the asset value in the Set Asset and Set Credential activities.

# Breaking Changes

* The default encoding used by the Append Line activity when a new file is created is now UTF-8 instead of the default operating system encoding. A new property called Use default encoding has been added to the activity. If you want to use the default Windows encoding, you must select this option. By default, the option is not selected.
* The Write Line activity now only outputs logs at Trace level. Any past workflows relying on the fact that the activity used to output logs at Info level might suffer breaking changes.

# Known Issues

* Arguments for Invoke Workflow File function as By Referefence if same process, By Value if isolated process.
* Due to internal changes, several activities are no longer visible in the Favorites list when upgrading to v20.4 or newer, if they were added to the Favorites list with a v19.4 or older version of UiPath.System.Activities. The following activities are impacted:Log MessageFilter Data TableMessage BoxFile Change TriggerInvoke CodeRetry Scope
* If Invoke Method receives an argument variable whose name is a single character, the character itself is used as an argument instead of the contents of the variable.

# Bug Fixes

* Fixed an issue that caused the HTTP Request activity to fail if either only username or password was provided in their respective property field in the Simple Authentication section.
* The Multiple Assign activity now works as expected in large workflows. In previous releases, if a large number of variables were added in Multiple Assign, the activity fields displayed incorrect or missing values, and Studio became slow when navigating inside the workflow or updating variables in the Variables panel.
* Fixed an issue that caused an unexpected error to be logged in the Studio Log and Event Viewer when a workflow ran successfully if the Invoke Workflow File activity with the Isolated option was used to invoke a file that contained a Message Box activity. This issue occurred in versions prior to 20.4.
* Fixed an issue that caused multiple Get Asset requests to Orchestrator to fail.
* The Extension property can now be used when selecting the output of the Get File Info activity as well as for the current file in the iteration when working inside a For Each File in Folder activity.


## V20.4

Release Date: 27 April 2020

# New Features and Improvements

The  and  activities have suffered a
                                                  makeover, extending their functionality. You can
                                                  now insert  and  activities in their bodies,
                                                  enabling you to break loops, or continue to the
                                                  next cycle. This does not cause any breaking
                                                  change to your old workflows, as the older
                                                  versions of these activities still function
                                                  properly, albeit without the new
                                                  functionalities.

Also, to complement the Orchestrator Storage feature, we have created activities to work with Orchestrator in performing basic CRUD actions:

* Delete Storage File
* Download Storage File
* Read Storage Text
* List Storage Files
* Upload Storage File
* Write Storage Text

The  and  activities now
                have a new property, Entry Point Workflow, which enables you to designate the
                first workflow that is to be executed when invoking the process.

The Download File activity detects a file download from any application and waits for the download to complete before any further processing of the file in the automation.


## V20.2.0

Release Date: 17 February 2020

# Bug Fixes

* Fixed an issue that caused the Invoke Powershell activity to fail when used with Windows Powershell v4.0.


## V19.10.1

Release Date:  11 November 2019

# New Features and Improvements

As of this release, the Project Settings feature has been implemented in the System activities pack, enabling you to set project-wide configurations for the activities in this package.

Most of the Orchestrator activities have a new property, FolderPath, which, paired with the Folders feature in Orchestrator, enables you to specify if the Transaction Item you want to process is located in a folder different than the default one.

We have further increased language support by adding Turkish, Portuguese (Portugal), Spanish (Latin America), and Spanish (Spain) to the list of languages present in the UiPath Platform.

A new activity, called  has
                been added to the System package, enabling you to run a specified process in
                Orchestrator, with the ability to pass it a list of input arguments.

# Bug Fixes

* The Postpone Transaction Item activity did not properly function with older versions of Orchestrator.
* Fixed an issue that caused a memory leak when passing a UiElement variable as an input argument to an Invoke Workflow File activity.
* When using the Invoke Power Shell activity, the Microsoft.PowerShell namespace is automatically imported in Studio.


## V19.8.0

Release Date: 26 August 2019

# Improvements

Three new languages, German, South Korean, and Portuguese are available for the UiPath.System.Activities package.


## V19.7.0

Release Date: 16 July 2019

# New Features and Improvements

The Invoke Code activity now also supports C#, which has been added to our arsenal of programming languages that can be directly invoked from UiPath workflows. You can make the switch between the default VB.NET and C# by using the new Language property.


## V19.4.1

Release Date: 26 June 2019

# Improvements

We want to reach out to the entire world and make automation a language everyone can speak. So, starting with this release, the entire platform is available in Chinese.

Chinese can only be used in this pack when installed in Studio v2019.4.4 or v2019.7 or above.


## V19.6.0

Release Date: 24 June 2019

# New Features and Improvements

The new Invoke Process activity enables you to begin the execution of any process that is present on the machine you are working on directly from your current workflow.

The recently developed Multiple Assign activity helps you clear the clutter in your workflows by letting you use a single activity for multiple assign actions.


## V19.5.0

Release Date: 21 May 2019

# New Features and Improvements

The Invoke VBScript activity has been created with the purpose of adding VBScript to the list of the languages you can directly use into your processes.

The ItemInformationCollection property has been added to the Add Queue Item activity, enabling you to import an entire dictionary as information for queue items.

The Invoke Workflow File activity now has the ability to import arguments, as well as open the workflow that it is invoking, directly from two new buttons in the body of the activity.


## V19.4.0

Release Date: 25 April 2019

# New Features and Improvements

Our goal is to simplify the way you interact with Orchestrator, so we've implemented the
                possibility of adding multiple queue items into a new activity, .

Optimising the way queue items are processed, the new  activity can
                notify Orchestrator it is ready to receive a queue item, and then wait for
                Orchestrator to add an item to that queue, eliminating the need for multiple
                retries.

# Bug Fixes

* Fixed an issue which caused the Get Transaction Item activity to return an error at runtime.
* The DeferDate and DueDate properties were not logged in the Output panel at runtime.


## V19.3.0

Release Date: 20 February 2019

# New Features and Improvements

The Reference and FilterStrategy properties have been added to the Get Transaction Item activity, enabling you to filter the Transaction Item you want to retrieve by its Reference.

With simplification in mind, we have removed the Multiline and Singleline check boxes from the Regex Builder Wizard. No worries, as this does not cause a breaking change, because the Singleline and Multiline options are still available in the RegexOptions property field.

# Breaking Changes

* Due to some internal dependencies being updated, starting with this version, the minimum required version of Studio for using this package has changed to v2018.4.4 or v2019.2 or above.


## V19.2.0

Release Date: 18 February 2019

# New Features and Improvements

We have developed a  wizard
                which gives you the ability to harness the power of Regular Expressions with a
                simple and easy to use UI. This wizard can be accessed from the body of the
                    IsMatch, Matches, and Replace activities.

The Orchestrator HTTP Request activity has been improved and is now able to retrieve the headers of the requests it performs.

# Bug Fixes

* When importing arguments in the Invoke Workflow File activity, the names of the values were imported but the values were left empty.


## V18.4.2

Release Date: 10 January 2019

# Improvements

This new year brings two more languages in the entire UiPath Platform - French and Russian. Since we layed down the foundations of localization in our previous release, we are continuing our efforts in bringing you a more immersive experience and lowering the language barrier bit by bit.


## V18.4.1

Release Date: 7 December 2018

# New Features and Improvements

To facilitate identifying which step the Robot is performing at any given time, we have created
                the  activity,
                which enables you to create a custom status message that is displayed in the Robot
                Tray at any point in the execution of a workflow.

Also, dark times ahead, the Dark Theme is now available, in its beta version, on all of the activities and wizards in this package.


## V18.3.0

Release Date: 22 October 2018

# New Features and Improvements

The Core Activities Package is now split into two distinct packs:  UIAutomation and System. The first contains all the activities that mimic human interaction, such as Click or Type Into  while the latter sums up all the blocks required for building an automation, from invoking another workflow to logging a custom message in Orchestrator.

This change was made so that both in present and future versions, you can reference any version of the UIAutomation and System packages as dependencies for your projects, completely independent of Studio. This is a step forward for being able to update UiPath Platform components without worrying about how they affect your automations.


## UiPath.Core.Activities V2018.2

Release Date: 22 May 2018

# New Features and Improvements

We've added a new Continue activity to the Core pack. It enables you to streamline conditions inside a For Each loop, without nesting If activities, by skipping iterations.

Four new activities have been created for the enhanced manipulation of DataTable variables:

* Lookup Data Table - Modeled after the Excel VLOOKUP function, it searches for relative cell values in a data table.
* Filter Data Table - Enables you to select filtering conditions for a data table with the help of a wonderful wizard.
* Sort Data Table - Sorts a data table in ascending or descending order based on the values in an indicated column.
* Remove Duplicate Rows - Removes the duplicate rows from a specified DataTable variable.

