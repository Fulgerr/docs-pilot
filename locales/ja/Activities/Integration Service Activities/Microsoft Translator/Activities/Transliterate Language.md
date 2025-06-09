# Transliterate Language

UiPath.MicrosoftTranslator.IntegrationService.Activities.TransliterateLanguage

Uses the Transliterate - POST API to transliterate a text.

# In the body of the activity

* Text - The text to be transliterated.
* Script - The script name of the input text. This field is not mandatory; if not indicated, the script is determined by Microsoft.
* Text Language - Specifies the language of the text to convert from one script to another. Use the Find button to open a window where you can view a list of all available languages. When you select a language, the To field is automatically filled with the language code.
* From script - Specifies the script used by the input text. Use the Find button to open a window where you can view a list of all available languages scripts for transliteration. When you select a language, the To field is automatically filled with the language code.
* To script - Specifies the output script. Use the Find button to open a window where you can view a list of all available languages scripts for transliteration. When you select a language, the To field is automatically filled with the language code.
* Text -The result of converting the text from the input script to the output script.
* Script - The output transliterated text.You must select a compatible output language and script, or else an exception is thrown. For instance, an error occurs if you select Arabic (script) and Chinese (text).

# Properties

Common

* DisplayName - The display name of the activity. This field supports String type input.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Output

* ResponseStatus - The status of the request (success/failure information). Enter a ResponseStatus variable (UiPath.BAF.Models.ResponseStatus). The ResponseStatus object includes three properties that you can use in other activities.Success - Boolean - Specifies whether the API request was successful. ErrorCode - String - The response error if the API request is unsuccessful (Success=False). Message - String - The error message.
