# Microsoft OCR

UiPath.Core.Activities.MicrosoftOCR

Extracts a string and its information from the provided image. Microsoft OCR activity uses
                                    the Windows 10 built-in OCR, if available, otherwise it resumes
                                    to the default MODI OCR Engine. It can be used with other OCR
                                    activities, such as Click OCR Text, Double Click OCR Text, Hover OCR Text, Get OCR Text, Find OCR Text Position.

The MODI (Microsoft Office Document Imaging) engine used by the Microsoft OCR activity relies on Microsoft technical support for Windows 7 and Windows 10.Please note that Microsoft ceases all support for Windows 7 starting January 2020.

This activity does not support rotated documents and thus results are unpredictable on such documents.

The Microsoft OCR
            engine does not report Confidence values for the identified words. When the OCR engine
            is used within the Digitize Document activity, all OCR Confidence
            values, for all words, will be set to -1 (Unknown).

# Properties

Options

* Language - The language used by the OCR engine to extract the text from the UI element or image. The language name must be fully written, such as "english", "japanese", "romanian". The Microsoft OCR engine uses the languages installed on your system.
* ExtractWords - If this check box is selected, the on-screen position of each detected word is extracted.
* Profile - Choose a preprocessing profile for the specified image or UI element to achieve a better OCR read. The following options are available:None - does not apply a preprocessing profile; Screen - preprocessing suitable for remote desktop applications; Scan - preprocessing suitable for scanned files; Legacy - uses the engine's default settings for preprocessing images, this is the default option.
* Scale - The scaling factor of the selected UI element or image. The higher the number is, the more you enlarge the image. This can provide a better OCR read and it is recommended with small images. If you want to scale down, values between 0 and 1 are also accepted. By default, the value is 1.Large-size images may result in an error when the scaling factor is higher than 1.

Output

* Text - The extracted string. This field supports only String variables.
* Result - The extracted words along with their on-screen position. This field supports only KeyValuePair <rectangle,string>variables.

Input

* Image - The image that you want to process. This field supports only Image variables.

Common

* DisplayName - The display name of the activity.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.
