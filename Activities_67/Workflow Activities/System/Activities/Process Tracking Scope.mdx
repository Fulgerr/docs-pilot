# Process Tracking Scope

UiPath.Core.Activities.ProcessTracking.ProcessTrackingScope

# Description

Process Tracking Scope is a System activity in UiPath that enables detailed tracking of tasks within a workflow.

The Process Tracking Scope activity can be used to track specific business sequences in UiPath Process Mining. As an RPA developer, you can mark these sequences as tasks by wrapping them in a Process Tracking Scope activity.

# Trace versus Task

A task represents a specific unit of work or activity within a process. It is created by a Process Tracking Scope activity in the workflow. Tasks have a start timestamp (when the scope begins) and an end timestamp (when the scope ends). Tasks can be nested, creating parent-child relationships.

A trace is a higher-level concept that represents the entire execution of a process or a series of related tasks. Traces group and organize multiple tasks that are part of the same process execution. A trace has its own unique identifier (the trace ID), that provides context for how different tasks are related within a larger process.

In the UiPath Studio interface, you can control how tasks relate to traces using the How to track property of the Process Tracking Scope activity:

How to track optionTrace managementTask managementNotesExampleIn the current traceThe existing trace continues without creating a new one.The trace remains open even after the Process Tracking Scope completes.Useful for long-running processes with multiple steps.A new task is created when the scope begins.The task is automatically closed when the scope completes.Task start and end times are recorded within the existing trace.This option is useful when you want to track sequential operations that are part of a single, ongoing process within the same process context.Some activities can change the trace context:Get Transaction Item / Add Transaction Item followed by Set Transaction StatusGet Transaction Item / Add Transaction Itemfollowed by Postpone Transaction ItemWait for Queue Item and ResumeStart Job or Start Job and Get ReferenceWait for Job and ResumeAn e-commerce company has a workflow that processes customer orders.The main trace starts when an order is received.Multiple Process Tracking Scopes are used for different stages: order validation, payment processing, and shipping arrangement.All these scopes use In the current trace option to keep all tasks within the same order processing trace.This allows for a complete view of the entire order fulfillment process.In a new traceA new trace with a unique Trace ID is created when the scope begins.The trace context reverts to the previous one, if any existed before this scope.Requires specifying a Process name for the new trace. This name is used to group the new trace, helping to organize and categorize different processes in Process Mining.A new task is created when the scope begins.The task is automatically closed when the scope completes.Task start and end times are recorded within the existing trace.This option is useful when you want to start tracking a new, distinct process or subprocess within your automation, while maintaining the ability to return to a previous trace context if needed.A support team uses an automation to handle customer tickets.The main workflow receives and categorizes tickets.For each ticket, a new Process Tracking Scope is created with the In a new trace option.This creates a separate trace for each customer issue, allowing for individual tracking and analysis of how each ticket is handled.It is useful for measuring response times, resolution rates, and identifying bottlenecks in handling specific types of issues.In an existing traceDoes not create a new trace, instead it connects to a previously created trace.The trace context may change depending on the workflow structure.Requires identifying the existing trace, usually by object properties (Object ID, Object type, and Object interaction) and Process name.The newly created task is added to the existing trace, maintaining continuity of the process across different automations.When the scope ends, the task is closed within the existing trace.This option is useful when multiple automations process the same business item or object. However, these automations, however, are not directly coonected through a UiPath component, such as queues or jobs. It allows you to maintain a continuous trace of a business item journey through different, separately executed automations.A large corporation has a complex invoice processing system involving multiple departments.The initial trace is created when an invoice is received in the finance department.As the invoice moves through different departments (for example, verification, approval, payment), separate automations handle each step.Each department's automation uses a Process Tracking Scope with the In an existing trace option.They identify the existing trace using the invoice number as the Object ID.This allows for a complete trace of the invoice journey across different systems and departments, even though it is handled by separate automations.

Task creation always happens when the Process Tracking Scope begins.Task closure always happens when the scope completes, regardless of the trace option.Default task status is Successful unless changed explicitly or an exception occurs.Traces may need to be explicitly closed using the Set Trace Status activity if you want to mark the entire process as complete.

# Object

In the context of Process Tracking Service, an object refers to a business item processed by external systems—a way to tag and follow important items across different parts of your automated process. Objects help connect different automations that operate with the same business item.

For instance, a JIRA ticket can be considered such an object:

If you have an automation (A1) that creates a JIRA ticket, you would use the Track Object activity to define the ticket details, such as:

* Object ID—the JIRA identifier, for example "DOC-1234".
* Object type—"JIRA ticket".
* Object interaction—how the automation interacts with the JIRA ticket, in this case the interaction is Created, as the automation created the ticket.
* Object properties—properties of the JIRA ticket, in the following format:{ "XUiPathConnectorKey": "<XUiPathConnectorKey>", // for example, "uipath-jira" "XUiPathConnectorName": "<XUiPathConnectorName>", // for example, "JIRA" "XUiPathObjectDisplayName": "<XUiPathObjectDisplayName>", // for example, "Issue" "XUiPathObjectName": "<XUiPathObjectName>" // for example, "curated_issue" }

When a different automation (A2) needs to work with the same object created by automation A1, enable Process Tracking to automation A2 with the In an existing trace option. Provide the same object details to maintain the connection between automations, so automation A2 can find and work on the tickets created by automation A1.

By tracking objects, you can follow the journey of specific business items through your automated processes, providing valuable insights for process optimization and analysis.

# Capabilities

Adding a Process Tracking Scope in your workflow:

Starts a task when the scope begins (start timestamp).Ends the trace when the scope ends (end timestamp).Supports nested Process Tracking Scopes.Inner scopes in Process Tracking Service generate child tasks, maintaining a parent-child relationship that is visible in Hierarchical Process Mining within the Process Graph.Handles implicit and explicit task status:Implicit task status:Default status is Successful.Automatically set to Failed if an uncaught exception occurs.Exception details are made available in the Process Optimization App.Explicit task status:Use the Set Task Status activity to specify how the task ends.Possible values: Successful, Failed, Cancelled.Handles explicit trace status:Use the Set Trace Status activity to specifiy how the trace endsPossible values: Successful, Failed.Offers three behaviors for task tracking via the How to track property:In the current trace (default behavior):Tracks the new task in the current trace.Uses the ID of the trace generated by the current scope.In a new trace:Generates a new ID for the trace.Tracks the task in a new trace.Requires specifying a Process name for grouping.Reverts to the previous trace context after the scope ends.In an existing trace:Adds the task to a pre-existing trace.Useful for linking separate automation processes.Requires identifying the trace by object details and Process name.

# Enabling Process Tracking for existing automations

To enable Process Tracking for a Sequence:

1. Select the Sequence in the workflow.
2. In the Properties panel, select the Process tracking checkbox.

When Process Tracking is activated, the Sequence is automatically surrounded by the Process Tracking Scope activity.

# Project compatibility

Windows | Cross-platform

# Windows, Cross-Platform Configuration

Process trackingOptional. If selected, enables the process tracking for the sequence inside the scope.Task nameOptional. Allows you to specify a name for the task created by this scope. By default, it uses the name of the contained sequence.How to trackMandatory. Determines how the task is associated with traces. The following options are available:In the current traceDefault option. Adds the task created by the Process Tracking Scope activity to the existing trace. This option is useful when you want to continue tracking within the same process context. The task created by this scope is closed when the scope completes., whereas the existing trace remains open and continues. We recommend this option for sequential operations that are part of a single, ongoing process.In a new traceCreates a new trace specifically for this task and any subtasks within the scope. This option is useful when you want to start a new, distinct process or subprocess. The new trace has its own unique trace ID. Upon scope completion, the new trace context reverts to the previous one, and the associated task is closed marking the end of the tracked activity. Once selected, the Process name field is displayed:Process name—Specify the process you want to start in the new trace.In an existing traceAdds the task to a pre-existing trace. This option is useful for connecting different parts of an automation that might not be sequential via the Track object activity. Requires identifying the trace by object details and Process name. The task created within the specified existing trace is closed when the scope completes, whereas the existing trace remains open and continues. Once selected, the following fields for trace identification are displayed:Process name—Specify the process you want to start in the existing trace.Object ID—Specify the object ID associated with the current task. You can use this to track an object as part of the task. This information can also help you continue the trace in a different automation.Object type—Specify the object type to identify the trace ID to which you want to switch.Object interaction—Select how the task interacts with the object.

While tasks are automatically closed when their scope completes, traces may need to be explicitly closed using the Set Trace Status activity if you want to mark the entire process as complete.
