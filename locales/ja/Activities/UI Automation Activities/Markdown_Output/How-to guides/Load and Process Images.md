# Load and Process Images

The example below explains how to read and retrieve a text from a previously loaded image. It
            presents activities such as Load Image or Try Catch. You can find these activities in
            the UiPath.UIAutomation.Activities package.

This is how the automation process can be built:

1. Open Studio and create a new Process .
2. Drag a Sequence container in the Workflow Designer. Create the following variable:Variable NameVariable TypeDefault ValueimageUiPath.Core.ImageresultedTextStringThe Load Image activity can only process an image that was previously added into the project folder. Make sure to add the image before running the workflow or to download this example and use the image already added to the process.
3. Drag a Load Image activity inside the Sequence container. In the Properties panel, add the path of the image you want to use. For this example is "images\Hello World.png". Add the variable images in the Image field.
4. Place a Try Catch activity below the Load Image activity.
5. Drag a Sequence container inside the Try container of the Try Catch activity.
6. Place an OCR engine inside the container. This example is using Tesseract OCR. In the Properties panel, add the variable image in the Image field. Add the language code, "eng", in the Language field. Select the None option from the Profile drop-down list. Add the value 2 in the Scale field. Add the variable resultedText in the Text field. This is how the Try container should look:
7. Drag a Message Box activity below the Tesseract OCR engine. In the Properties panel, select the Ok button from the Buttons drop-down list. Add the expression "Resulted text" in the Caption field. Add the expression "The text identified in the image is """ + resultedText + """" in the Text field. Select the check box for the TopMost option. This brings the message box to the foreground.
8. Drag a Message Box container inside the Catches container of the Try Catch activity. In the Properties panel, select the Ok option from the Buttons drop-down list. Add the expression "Image OCR Error" in the Caption field. Add the expression "No text could be identified in the selected image" in the Text field. Select the check box for the TopMost option. This brings the message box to the foreground. This is how the Catches container should look:
9. Run the process. The image is loaded in the workflow, processed, the text is detected and extracted.

Download example
