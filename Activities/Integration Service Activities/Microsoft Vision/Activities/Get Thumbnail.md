# Get Thumbnail

# Description

Generates a thumbnail image with the user-specified width and height. By default, the
                image is analyzed, the region of interest (ROI) is identified, and the image is
                cropped accordingly. Supported image formats: JPEG, PNG, GIF, BMP. Image size should
                be less than 4 MB.

# Untitled Section

# Configuration

* 
* Width - The width of the thumbnail. Values must be between 1 and 1024. Recommended size is 50. This field supports Int32 type input.
* Height - The height of the thumbnail. Values must be between 1 and 1024. Recommended size is 50. This field supports Int32 type input.
* Image URL - The public URL of an image. This field supports String type input.







* Model-version - This optional parameter specifies the version of the AI model. The default value is latest.
* Smart cropping - Enable smart cropping. Boolean value.



* ID - Automatically generated output variable.
