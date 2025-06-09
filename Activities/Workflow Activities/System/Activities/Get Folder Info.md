# Get Folder Info

UiPath.Core.Activities.GetFolderInfoX

Retrieves the properties of a specified folder and saves the information for later use in the
            project. You can then select one of the folder properties as input for another activity:
                Files (total number of files in the folder), Folders (total number of
            subfolders in the folder), Name, Full path, Last modified date
            (date including time), Size in KB.

# Configuring the Activity

In the Body of the Activity

* Folder path - Click Browse next to the field and then browse to and select the folder whose information to retrieve. Alternatively, you can click Plus on the right side of the field and then, from the menu, choose one of the available options to indicate the folder path:Data from the Project Notebook, a parent Excel file or Outlook account. For example, select an Excel file and then select a cell that contains a folder path, or indicate a field from a selected email in Outlook that contains a folder path. Use Saved Value - Select a value in the form of a folder path that you previously saved for later use in the project. Text - Enter a folder path in the Text Builder. To add dynamic paths, you can combine text with Excel formulas selected using the Plus menu in the Text Builder. For example, for a folder created daily that includes the current date in the name, you can add the date to the folder name using a formula in the default Project Notebook. Ask when run - Prompt for a folder path when the project is executed. Open in Advanced Editor - Enter a VB expression.
* Output to - Click Plus on the right side of the field and then, from the menu, select Save for Later Use to use the output result later in your project as input for another activity. Alternatively, you can select Open in Advanced Editor and enter a VB expression.

In the Properties Panel

Common

* DisplayName - The name displayed for the activity in the Designer panel.

Input

* Path - See Folder pathin the body of the activity.

Misc

* Private - If selected, the data used in the activity is not logged by StudioX.

Output

* Output to - See Output toin the body of the activity.
