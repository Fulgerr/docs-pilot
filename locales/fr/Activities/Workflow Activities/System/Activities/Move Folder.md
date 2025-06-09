# Move Folder

UiPath.Core.Activities.MoveFolderX

Moves a specified folder to another location.

To learn how to use this activity, see Tutorial: Working with Files and Folders.

# Configuring the Activity

In the Body of the Activity

* From - Click Browse next to the field and then browse to and select the folder to move. Alternatively, you can click Plus on the right side of the field and then, from the menu, choose one of the available options to indicate the path of the folder to move:Data from the Project Notebook, a parent Excel file or Outlook account. For example, select an Excel file and then select a cell that contains a folder path, or indicate a field from a selected email in Outlook that contains a folder path. Use Saved Value - Select a value in the form of a folder path that you previously saved for later use in the project. Text - Enter a folder path in the Text Builder. You can combine text with a formula from an Excel file cell, for example to add a date to the folder name using formulas in the Project Notebook. Ask when run - Prompt for a folder path when the project is executed. Open in Advanced Editor - Enter a VB expression.
* To - Click Browse next to the field and then browse to and select where to move the folder. Alternatively, you can click Plus on the right side of the field and then, from the menu, choose one of the available options to indicate the location where to move the folder:Data from the Project Notebook, a parent Excel file or Outlook account. For example, select an Excel file and then select a cell that contains a folder path, or indicate a field from a selected email in Outlook that contains a folder path. Use Saved Value - Select a value in the form of a folder path that you previously saved for later use in the project. Text - Enter a folder path in the Text Builder. You can combine text with a formula from an Excel file cell, for example to add a date to the folder name using formulas in the Project Notebook. Ask when run - Prompt for a folder path when the project is executed. Open in Advanced Editor - Enter a VB expression.
* Overwrite - If selected, the source folder is merged with any folder in the destination location that has the same name and any files with the same name as those in the source folder that already exist in the destination folder are replaced when the automation is executed.

In the Properties Panel

Common

* DisplayName - The name displayed for the activity in the Designer panel.

Input

* See the options in the body of the activity.

Misc

* Private - If selected, the data used in the activity is not logged by StudioX.
