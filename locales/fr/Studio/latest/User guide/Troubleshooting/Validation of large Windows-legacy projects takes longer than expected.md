# Validation of large Windows-legacy projects takes longer than expected

# Cause

When your antivirus software is configured to scan Studio processes, the validation of Windows-legacy projects can be significantly slower, especially on larger projects.

# Solution

Configure your antivirus software to exclude the following processes from scanning:

* UiPath.Studio.Analyzer.exe
* Uipath.Studio.DataBaseServer.exe
* UiPath.Studio.exe
* Uipath.Studio.Project.exe
