# Displaying images in forms

Here's how to display an image inside a form through
            embedding the image inside the form. For Base64 images you display them using custom
            JavaScript.

# Embed images

In this tutorial you will learn how to embed an image inside a form, using an HTML
                component.

1. Add the image file in the same folder as the form you're using.In this example, we uploaded an image named display_PDF_file_form.jpg.
2. Add an HTML Element component into the form.
3. In the Display tab, under Content, write the following code snippet: <img id="myimage" src="display_PDF_file_form.jpg">. Replace display_PDF_file_form.jpg with the name of the image that you want to display.You can further adjust the width and height of the image inside the form, using the width and height attributes.

### Displaying Base64 images

In this tutorial, you will learn how to dynamically
            display Base64 images using UiPath Forms. The automation involves creating a custom form
            file with an HTML Element and two buttons to allow users to select which image they want
            to display. Additionally, a separate workflow is created to convert images to Base64
            format. This conversion workflow is invoked in other trigger workflows to preprocess the
            images before displaying them inside the form.

Prerequisites: Add the images that you want to
            display inside the Studio project folder.

Create a new form and add an HTML Element and two Button
                    components to it.Edit the HTML Element and add the provided HTML code in the
                                Content field, using myImage as a
                            placeholder name for the custom JavaScript:<img id='myImage'  width='100' height='100' />Set the Action of the two buttons to Event, making them
                            triggers for showing two different images.In the Main workflow add the Show Form and Run Local
                        Triggers activities to display the form and enable all triggers in the
                    project.Create a separate workflow named ConvertImageToBase64 to
                    convert project images to Base64 encoding.Create two String arguments in the Data
                            Manager:NameDirectionData TypeDefault ValueDescriptionin_ImageInString"uipath.png" (the default image
                                                that you want to show, before a user clicks a
                                                button)This argument holds the path to the image that
                                                you want to convert.Base64ImageOutStringNAThis argument holds the result of the conversion,
                                                which is a base64 image.Add a Load Image activity to load the image and store it in a
                            local variable. In the FileName field input the
                                in_Image, created in the Data Manager. In the
                                Output field create a local variable named
                                loadedImage. Set the variable type to
                                UiPath.Core.ImageAdd an Assign activity. In the Save to field input the
                                Base64Image output argument and in the Value to
                                save field input the local image variable and the
                                .Base64 method to convert it. In this example, input
                            loadedImage.Base64.Before creating the trigger workflows, create a String global variable named
                        templateSRC with the Default Value"data:image/png;base64,<base64>".The templateSRC variable acts as a template for the source
                    attribute (src) value declared in the HTML Element
                    component.Create a trigger workflow for the first Button component named
                        showUiPathShortLogoTrigger.Add a Form trigger activity and set the Event to one of
                            the buttons that you added.Add an Invoke Workflow activity and invoke the workflow that
                            converts images to base64 encoding. Invoke the workflow using the
                            arguments below:NameDirectionTypeValuein_ImageInStringuipath.png (the image used to
                                                convert and then display in the form)Base64ImageOutStringbase64str (local
                                                  String variable)Add a Run Form Script activity to display the base64 image using custom
                    JavaScript. In the Source  field use the following script:"document.getElementById('myImage').src='"+templateSRC.Replace("<base64>",base64str)+"'"In the script above, the <base64> placeholder within the
                        template_SRC value is replaced with the actual Base64 image
                    data (base64str). The resulting modified
                        template_SRC is then assigned as the source
                        (src) value of the HTML image element with the ID
                        'myImage'. This operation dynamically updates the image
                    source to display the desired Base64-encoded image.Create another trigger workflow for the other button.In this example, you can name the workflow
                        showUiPathLogoTrigger.Add a Form trigger activity and set the Event to one of
                            the buttons that you added.Add an Invoke Workflow File activity and invoke the
                                ConvertImageToBase64 workflow using the arguments
                            below:NameDirectionTypeValuein_ImageInStringuipath2.png (the image used to
                                                convert and then display in the form)Base64ImageOutStringbase64str (local
                                                  String variable)Add a Run Form Script activity to display the Base64 image using custom
                    JavaScript. In the Source field use the following script:"document.getElementById('myImage').src='"+templateSRC.Replace("<base64>",base64str)+"'"The script modifies the template_SRC value by replacing the
                        <base64> placeholder with the actual Base64 image data,
                    dynamically updating the image source.

Workflow exampleTo follow the steps and try out the tutorial yourself see this sample project.

