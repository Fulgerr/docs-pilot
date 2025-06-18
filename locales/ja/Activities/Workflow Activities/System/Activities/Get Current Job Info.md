# Get Current Job Info

UiPath.Core.Activities.GetCurrentJobInfo

# Description

Retrieves information such as Process name, Workflow name, User name, User email, Picture in Picture info, and Timestamp from the current Orchestrator job.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* JobData - Contains job info such as process name, job key, workflow name, user name, user email, and timestamp.

# Windows - Legacy, Windows configuration

Properties panel

Common

* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* JobData - Reference to the information that was retrieved, such as process name and version, workflow name, robot name, and mode of execution.
