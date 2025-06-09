# File Change Trigger V3

UiPath.Core.Activities.FileChangeTriggerV3

Monitors changes on a specified file or folder.

# Project compatibility

Windows | Windows - Legacy

# Configuration

* Path - The path of the file to be watched for changes.
* FileName Filter - The filter to match the name of the file or files to be watched for changes.
* Include Subdirectories - Specifies whether to include subdirectories of the specified location.

# In the Properties Panel

Options

* DisplayName - The display name of the activity.
* ChangeType - The type of changes to be watched for. By default, Changed is selected. The following options are available:Created Deleted Changed Removed All
* NotifyFilters - A bitwise combination of filters that are to be watched for changes. By default, FileName is selected. The following options are available:FileName DirectoryName Attributes Size LastWrite LastAcccess CreationTime Security
* FileNameFilter - The filter to match the name of the file or files to be watched for changes.
* Path - The path of the file to be watched for changes.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
* IncludeSubdirectories - Specifies whether to include subdirectories of the specified location.
