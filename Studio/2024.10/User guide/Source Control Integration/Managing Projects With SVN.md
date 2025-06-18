# Managing Projects With SVN

# Opening a Project from SVN

1. In the Team tab, select Open from SVN. The Open from SVN Repository window opens.
2. Type in the Repository URL or use the button to open the repository browser.In the repository browser, you can browse to and select an existing folder or copy the Selected Path. Click OK to confirm the selection and close the window.
3. Pick an empty Check out directory. Under Authentication, select None or select the User/Password and fill in your User and Password. Click Open. The project is now available in the check out directory.
4. When you open a file from Studio, for example, Main.xaml, a Question dialog box opens with two options for pulling the file from the repository:Check out latest and edit - opens the latest version of the Main.xaml file from the repository, in edit mode. The Break Lock option allows you to check out a project from a SVN repository that was previously checked out by a different user. Open local as read only - opens the local version of the Main.xaml file in read-only mode. The Package Manager can be opened even if the files are in read-only mode, but in order to perform changes and install dependencies, the project.json file needs to be checked out.Selecting the checkbox for Always checkout latest and edit and don't show me this again, and then the Check out latest and edit option propagates your choice for future occurrences. Regardless of your choice, the project.json file still needs to be checked out separately for certain changes to take effect.

# Adding a Project to SVN

Some SVN operations are not
        directly manageable through Studio. For this, and to ensure optimal compatibility, use a
        recent version of a SVN client. For TortoiseSVN, versions up to 1.9.7 are supported.

1. Create or open a project in Studio from the Start tab in the Backstage view. Click Start > Team > Add to TFS button, or Add to Source Control > Add to SVN shortcut in the status bar. The Add to SVN window is displayed.
2. Type in the Repository URL or use the button to open the repository browser.In the repository browser, you can browse to and select an existing folder, or click Create Folder above the left navigation pane to add a new folder. Click OK to confirm the selection and close the window.
3. If applicable, under Authentication, select User/Password and type in the credentials. Click Add to upload the project to the SVN repository.
4. In the Check In Changes window, select the files that you would like to add to the repository and write a Commit Message.
5. Click Check In. The files are now available in the repository, together with the Commit message. The project.json file returns to read-only mode in Studio.

When a project is added to SVN, the context menu in the Project panel includes
        SVN-specific options. For more information, see Context
            Menu Options for SVN and TFS.

# Editing and Checking In Changes to
        SVN

1. Connect one of your projects to your SVN repository.
2. Right-click the .xaml file and select Check Out for Edit. The latest version of the .xaml file is mapped locally and opened in the Project panel. It becomes locked for editing until it’s checked in. Perform any sort of changes to the files.Once a file is checked out from the SVN repository, it is no longer available for check out by other users with access permissions.
3. Right-click the .xaml file or project node, and select Check In, or click the icon in the Status bar, which also counts the number of uncommitted changes. The Check In Changes window is displayed.
4. Review the changes and check the Show Unversioned Files box to add imported files to the repository. Write a Commit Message to describe the changes.
5. Click Check In. The latest version is now available in the repository, together with the Commit message. In Studio, the project.json file returns to the read-only mode.
6. Click Start > Team > Disconnect to disconnect the current project from source control.If you edit a file from a project added to source control in an external editor, the change is visible in the Project panel and the status bar only after you click Refresh in the Project panel.

# Changing Credentials

If you work on a shared machine, you might need to change credentials to the current SVN
        repository before committing any changes to your project.

Go to Start > Team tab and select Change Credentials from the SVN
        section. Input your username and password for the current repository and select OK.
