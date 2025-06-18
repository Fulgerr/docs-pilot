# CreateFolder

Creates a folder in the specified location. If a folder with the same name already exists
            at the specified path, the method does nothing. If a parent folder that does not exist
            is specified in the path, the entire path is created.

# 



# CreateFolder(String)

ILocalResource CreateFolder(
	string path
)

pathStringThe full path of the directory to be created.

# Return value

ILocalResource

A reference to the folder created by the activity.
