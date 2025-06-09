# List Storage Files

UiPath.Core.Activities.Storage.ListStorageFile

# Description

Lists files matching a given pattern from a specified Storage Bucket in Orchestrator.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Orchestrator folder path - The path to the Orchestrator folder you want to use with this activity. If left empty, the current Orchestrator folder is used. Use / as a directory separator to specify the desired destination directory. This field supports only strings and String variables.
* Storage Bucket Name - The name of the Storage Bucket the file is located in. This field supports only strings and String variables.
* Directory - The directory from where you want to start the matching. This field is mandatory. If this field is left empty, the operation begins in the root directory. Use \ as a directory separator to specify the desired destination directory.





Advanced options

Options

* Filter - A matching pattern to filter the result files by. If left empty, all files are returned (starting from Directory, depending on how the Recursive property field is configured). This field is optional. This field supports only strings and String variables. The matching syntax is that of file globbing and, specifically, it matches the rules of the Microsoft FileSystemGlobbing Matcher: *.pdf - Matches all files with the .pdf extension in the directory. \*.pdf - Matches all files with the .pdf extension in the directory and any child directory (note that it does not override Recurse setting, if you ask for and specify Recurse False it will only list the Directory folder).This filter type is not overridden by the Recursive property. For example, asking for ** and configuring Recursive to False only lists the Directory folder.dir\*.pdf - Matches all files with the .pdf extension in the child directory named dir in the requested directory, exactly as if dir was added to anything in the directory. **\dir\*.pdf - Matches all files with the .pdf extension in any child directory named dir, at any child level. Only works as expected if the Recursive property field is set to True. **\foo.txt - any file named foo.txt, in any child directory. a\b\c.jpg - a file named c.jpg located in the directory a\b relative to whatever is specified in the Directory property. This is the exists test for a file.
* Recursive - A boolean variable which specifies whether to recurse through all child directories. This field is mandatory. By default, this field is set to True.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).
* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.

Output

* Result - Reference to the resulting collection of file names to be used in other activities.

# Windows - Legacy, Windows configuration

Properties panel

Common

* Continue On Error - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the Continue On Error property is True, no error is caught when the project is executed.
* DisplayName - The display name of the activity.
* Timeout (milliseconds) - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Misc

* Folder Path - The path to the Orchestrator folder you want to use with this activity. If left empty, the current Orchestrator folder is used. Use / as a directory separator to specify the desired destination directory. This field supports only strings and String variables.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Result - An array of StorageFileInfo variables which contain the filenames matching the specified pattern. This can be subsequently used as an input for the For Each activity. This field supports only IEnumerable<StorageFileInfo> variables.

Storage

* Directory - The directory from where you want to start the matching. This field is mandatory. If this field is left empty, the operation begins in the root directory. Use \ as a directory separator to specify the desired destination directory.
* Filter - A matching pattern to filter the result files by. If left empty, all files are returned (starting from Directory, depending on how the Recursive property field is configured). This field is optional. This field supports only strings and String variables. The matching syntax is that of file globbing and, specifically, it matches the rules of the Microsoft FileSystemGlobbing Matcher: *.pdf - Matches all files with the .pdf extension in the directory. \*.pdf - Matches all files with the .pdf extension in the directory and any child directory (note that it does not override Recurse setting, if you ask for and specify Recurse False it will only list the Directory folder).This filter type is not overridden by the Recursive property. For example, asking for ** and configuring Recursive to False only lists the Directory folder.dir\*.pdf - Matches all files with the .pdf extension in the child directory named dir in the requested directory, exactly as if dir was added to anything in the directory. **\dir\*.pdf - Matches all files with the .pdf extension in any child directory named dir, at any child level. Only works as expected if the Recursive property field is set to True. **\foo.txt - any file named foo.txt, in any child directory. a\b\c.jpg - a file named c.jpg located in the directory a\b relative to whatever is specified in the Directory property. This is the exists test for a file.
* Recursive - A boolean variable which specifies whether to recurse through all child directories. This field is mandatory. By default, this field is set to True.
* Storage Bucket Name - The name of the Storage Bucket the file is located in. This field supports only strings and String variables.
