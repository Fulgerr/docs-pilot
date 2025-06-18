# The Immediate Panel

The Immediate panel is only visible during debugging, and it can be used for inspecting data available at a certain point during debugging. It can evaluate variables, arguments, or statements. To do so, simply type the variable or argument name in the Immediate window and press Enter.

![6860c87-immediate=GUID-42274BF5-A6D1-453E-9014-58EB81055FC5=1=en=Default](/images/6860c87-immediate=GUID-42274BF5-A6D1-453E-9014-58EB81055FC5=1=en=Default.png)

The Immediate panel keeps the history of previously evaluated statements, and they can be removed using the Clear All context menu option.

To remove a single line from the panel, select the text and press the Space key. When clicking inside a line and starting to type, the text is added to the input field.

![b18f80c-default_1_1=GUID-7B586073-F859-40F4-9E13-B95D7E834F61=1=en=Default](/images/b18f80c-default_1_1=GUID-7B586073-F859-40F4-9E13-B95D7E834F61=1=en=Default.gif)

Please take into consideration that the guidelines for calling a function apply to the Immediate panel as well, and parentheses should be used.

If you have a List<string> variable, it is recommended to use parentheses to view object-specific methods in the Intellisense window. For example, use Names.First().ToUpper instead of Names.First.ToUpper to capitalize the first element in a list of names.

# Context Menu for the Immediate Panel

Right-click in the Immediate panel to open the context menu with the following options:

OptionDescriptionCopyClick Copy or use Ctrl + C to copy the selected text to clipboard.Clear AllUse this option to clear all lines in the panel.Show IntelliPromptUse Ctrl + Space to open IntelliPrompt.
