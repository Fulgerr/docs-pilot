# Example of Using Input Methods

To get a clearer picture of how these three methods work, let’s create a simple project that writes something in a Notepad window and switch between the three input methods.

Open a Notepad window.
In Studio, from the Basic Recording toolbar, start the automatic recorder.Type something into the Notepad window.
Minimize the window and restore it.
Type something else in the Notepad window.
Press Esc two times. The automation is saved and displayed in the Designer panel. It should look as in the following screenshot.Move the activity that restores the Notepad window after the second Type Into one. We do this to check if the type of input method selected can also write to Notepad in background mode.From the drop-down of the second Type Into activity, select enter. A special key string is displayed at the end of the previously-existing text.Copy the special key string at the beginning of the sentence. This enables you to test special keys, such as Enter that adds a new line in a text editor.Run the workflow once with every input method. Note the differences:

The Default method – it does not automatically erase previously written text, supports special keys, but writing in the background does not work;
The SendWindowMessagesmethod – works in the background, supports special keys, but it does not erase pre-existing text (you have to manually select the Empty Field check box in the Properties panel);The Simulate Type/Click method – works in the background, but it automatically erases pre-existing text, and does not support special keys.Therefore, be careful to choose the method that best suits your needs. If special keys are a must, you might want to avoid the Simulate Type/Click method, or if speed is what matters most, then maybe Simulate Type/Click is the right one.Download example
