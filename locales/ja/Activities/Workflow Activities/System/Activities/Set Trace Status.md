# Set Trace Status

UiPath.Core.Activities.ProcessTracking.SetTraceStatus

# Description

The Set Trace Status activity allows you to manually control the ending of a trace within a Process Tracking Scope. It enables accurate representation of process completion in analytics. If you do not explictily end the trace, it remains active indefinitely.

We recommend using this activity to mark the completion or failure of a larger process.

# Project compatibility

Windows | Cross-platform

# Windows, Cross-Platform Configuration

TraceMandatory. Specify which trace status to close. By default, the current Process Tracking Scope activity is selected.In complex workflows with nested Process Tracking Scope activities, referencing the Trace for the Set Trace Status activity helps to identify which scope, and thus which trace, is being updated.StatusMandatory. Sets the trace status to Successful or Failed. By default, set to Successful.
