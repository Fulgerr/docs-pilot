# Selectors With Wildcards

Wildcards are symbols that enable you to replace zero or multiple characters in a string. These can be quite useful when dealing with dynamically-changing attributes in a selector.

* Asterisk (*) – replaces zero or more characters
* Question mark (?) – replaces a single character
* Asterisk AND Question mark (*?) - matches an attribute value with at least one
                character

## Example of Generating a Selector With Wildcards in the Selector Editor Window

Part of the name of a Notepad window changes according to the .txt file you open with it. This is where a well-placed wildcard can really help. Do the following to generate it:

Open an empty Notepad window. Note that the window title is Untitled – Notepad.
In Studio, create a new sequence.
Drag a Type Into activity to the Designer panel.Click Indicate on Screen and indicate the editable text field in Notepad. A selector is automatically generated and stored in the Selector field.In the Properties panel, click the Ellipsis  button next to the Selector field. The Selector Editor window is displayed.Open any .txt file with Notepad. Note that the window title is partially different than the one at step 1.
In Studio, in the Selector Editor window, click Repair and indicate the editable text field in Notepad window opened at step 6. A dialog box indicating that the selector was updated is displayed.Click OK. The Selector Editor window and the selector are updated with a wildcard.

