# Modify Text

UiPath.Core.Activities.ModifyText

Updates a text value using modifications including find and replace, trim, and combining (concatenating) with another text value.

# Project compatibility

Windows | Windows - Legacy

# Configuration

* Text to modify - Enter the text to modify.In StudioX, click Plus on the right side of the field, and then indicate the text using one of the options from the menu:Data from the Project Notebook, a parent Excel file or email account. For example, select an Excel file and then select a cell, or indicate a field from a selected email in Outlook. Ask when run - Prompt for the text when the project is executed. Paste from clipboard - Paste a value that you previously copied to the clipboard in the project. Text - Enter the text in the Text Builder. Use Saved Value - Select a value that you previously saved for later use in the project. Open in Advanced Editor - Enter a VB expression. Add modification - Select the modification to perform. You can add as many modifications as you need in the order in which you want them to be performed. A new activity is added to enable you to configure each modification: Find and replace - Adds a Find and replace text activity inside Modify Text.Search for / Replace with - Enter the text to search for and the text to replace it with. In StudioX, the same options are available as for Text to modify. Match case - Select this option if you want to only find and replace words that match the capitalization of the text to search for. Combine text - Adds a Combine text activity inside Modify Text.New text to add - Enter the text to combine with the text being modified. In StudioX, the same options are available as for Text to modify. Add new text to - Select whether to add the text to the left or to the right of the text to modify. Trim - Adds a Trim text activity inside Modify Text.Select Trim left to remove leading white spaces and/or Trim right to remove trailing white spaces from the text to modify. Text to Upper/Lowercase - Adds a Text to Upper/Lowercase activity inside Modify Text.Change text to - Select how to change the text to modify (all Uppercase or all Lowercase). To test the modifications added so far, click Test, then enter a text and click Test to test the current modifications.
* Save result as - Save the modified text.In StudioX, click Plus on the right side of the field, and then use one of the options from the menu to indicate where to save the result:Save to a cell in the Project Notebook or a parent Excel file. Copy to clipboard - Save the text to the clipboard, and then paste it in another activity in the project. Save for Later Use - Save the text for later use in your project as input for another activity. Open in Advanced Editor - Enter a VB expression.

# In the Properties Panel

Options

* Display Name - The name displayed for the activity in the Designer panel.
* Text to modify - The text value to be modified.
* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* Save result as - Store the resulting string value.
