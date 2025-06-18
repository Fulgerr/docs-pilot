# Analyze Image

# Description

Extracts a rich set of visual features based on the image content. Supported image
                formats: JPEG, PNG, GIF, BMP. Image size should be less than 4 MB.

# Untitled Section

# Configuration

* 

* File resource - Click to use a variable. This field supports IResource type input.
* Image URL - The public URL of the image. Only use this if not using the File resource input. One or the other is required. This field supports String type input.
* Visual features - Select the type of visual features to be retrieved: adult, brands, categories, color, description, faces, imageType, objects, tags. This field supports String type input.
* Details - Select the domain-specific details to retrieve: celebrities or landmarks. This field supports String type input.
* Language - Select the language in which the output should be retrieved. The default language is English. See the Language support page for the list of supported languages.







* Model-version - This optional parameter specifies the version of the AI model. The default value is latest.



Analyze - The analysis of image content. Automatically generated
                        output variable.
