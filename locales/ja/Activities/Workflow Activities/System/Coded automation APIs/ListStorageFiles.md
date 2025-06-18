# ListStorageFiles

Lists files matching a given pattern from a specified Storage Bucket in Orchestrator.

# 



# Overloads

MethodDescriptionListStorageFiles(String, String)Lists files matching a given pattern from a specified Storage Bucket in Orchestrator.ListStorageFiles(String, String, String)Lists files matching a given pattern from a specified Storage Bucket in Orchestrator, at a specified folder path.ListStorageFiles(String, String, String, Boolean, String, Int32)Lists files matching a given pattern from a specified Storage Bucket in Orchestrator, along with other configurations.

# ListStorageFiles(String, String)

Lists files matching a given pattern from a specified Storage Bucket in Orchestrator.

IEnumerable<StorageFileInfo> ListStorageFiles(
	string directory,
	string storageBucketName
)

directoryStringThe directory from where you want to start the matching. This field is mandatory. If this field is left empty, the operation begins in the root directory. Use \ as a directory separator to specify the desired destination directory.storageBucketNameStringThe name of the Storage Bucket the file is located in.

# ListStorageFiles(String, String, String)

Lists files matching a given pattern from a specified Storage Bucket in Orchestrator, at a specified folder path.

IEnumerable<StorageFileInfo> ListStorageFiles(
	string directory,
	string storageBucketName,
	string folderPath
)

directoryStringThe directory from where you want to start the matching. This field is mandatory. If this field is left empty, the operation begins in the root directory. Use \ as a directory separator to specify the desired destination directory.storageBucketNameStringThe name of the Storage Bucket the file is located in.folderPathStringThe path to the Orchestrator folder you want to use with this activity. If left empty, the current Orchestrator folder is used. Use / as a directory separator to specify the desired destination directory.

# ListStorageFiles(String, String, String, Boolean, String, Int32)

Lists files matching a given pattern from a specified Storage Bucket in Orchestrator, along with other configurations.

IEnumerable<StorageFileInfo> ListStorageFiles(
	string directory,
	string storageBucketName,
	string folderPath,
	bool recursive,
	string filter,
	int timeoutMS
)

directoryStringThe directory from where you want to start the matching. This field is mandatory. If this field is left empty, the operation begins in the root directory. Use \ as a directory separator to specify the desired destination directory.storageBucketNameStringThe name of the Storage Bucket the file is located in.folderPathStringThe path to the Orchestrator folder you want to use with this activity. If left empty, the current Orchestrator folder is used. Use / as a directory separator to specify the desired destination directory.recursiveBooleanA boolean variable which specifies whether to recurse through all child directories.filterStringA matching pattern to filter the result files by. If left empty, all files are returned (starting from Directory, depending on how the Recursive property field is configured). This field is optional. The matching syntax is that of file globbing and, specifically, it matches the rules of the Microsoft FileSystemGlobbing Matcher:*.pdf - Matches all files with the .pdf extension in the directory.\*.pdf - Matches all files with the .pdf extension in the directory and any child directory (note that it does not override Recurse setting, if you ask for and specify Recurse False it will only list the Directory folder).timeoutMSInt32Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

# Return value

IEnumerable<StorageFileInfo>

Resulting collection of file names.
