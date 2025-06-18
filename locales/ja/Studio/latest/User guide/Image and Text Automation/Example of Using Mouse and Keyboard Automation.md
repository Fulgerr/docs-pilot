# Example of Using Mouse and Keyboard Automation

To exemplify the automation of a process by using activities that simulate mouse and keyboard input, we created an automation that displays the IP address, subnet mask, and default gateway for all adapters from the Command Prompt, by using the ipconfig command and actions similar to human ones:

Create a new Sequence.Add a Click activity to the Designer panel.Select the activity, click the Indicate on screen button and click the Start button.Add a Type Into activity under the previously added one.Select the activity, and in the Text field, write cmd.Add a Send Hotkey activity under the previously added one.Select the activity and, from the drop-down menu choose enter.Add another Type Into activity under the previously added one.Select the activity, and into the Text field, write ipconfig.Add another Send Hotkey activity under the previously added one.Select the activity, and from the drop-down menu select the enter key.Press F5. The automation is executed. The IP address, subnet mask and default gateway for all adapters are displayed in the Command Prompt.

Download example
