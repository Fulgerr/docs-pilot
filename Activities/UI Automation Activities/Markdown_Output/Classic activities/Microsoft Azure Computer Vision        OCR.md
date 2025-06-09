# Microsoft Azure Computer Vision
        OCR

UiPath.Core.Activities.MicrosoftAzureComputerVisionOCR

Extracts a string and its information from an indicated UI element or image by using the
            Microsoft Azure Computer Vision OCR engine. It can be used with other OCR activities
                (Click OCR Text, Double Click OCR
                Text, Hover OCR Text, Get OCR Text, Find OCR Text Position).

# Properties

Common

* DisplayName - The display name of the activity.

Input

* Image - The image that you want to process. This field supports only Image variables.

Logon

* ApiKey - The API key used to provide you access to the Microsoft Azure Computer Vision OCR.
* Endpoint - The endpoint associated with your Microsoft Azure Computer Vision OCR API key. This field supports only strings and String variables.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* ExtractWords - If this checkbox is selected, the on-screen position of each detected word is extracted.
* Language - The language used by the OCR engine to extract the text from the UI element or image. The language name must be fully written, such as "english", "japanese", "romanian". The Microsoft OCR engine uses the languages installed on your system. The default value is AutoDetect.
* Scale - The scaling factor of the selected UI element or image. The higher the number is, the more you enlarge the image. This can provide a better OCR read and it is recommended with small images. If you want to scale down, values between 0 and 1 are also accepted. By default, the value is 1.
* UseReadAPI - If selected, the activity uses the new Azure Computer Vision API 2.0 with handwriting recognition capabilities. If not selected, it uses the standard Azure Computer Vision API for printed text. The default value is False.Azure Computer Vision OCR API recognizes printed text and supports a large variety of languages.

Azure Computer Vision Read API recognizes the handwritten and printed
                text, but temporarily is available only in English.

The OCR mode
                    (UseReadAPI not selected) does not report Confidence values for the
                identified words. When the OCR engine is used within the Digitize Document activity, all OCR
                Confidence values, for all words, will be set to -1 (Unknown).

Output

* Result - The extracted words along with their on-screen position. This field supports only KeyValuePair <rectangle,string> variables.
* Text - The extracted text. This field supports only String variables.
