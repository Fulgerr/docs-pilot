# Generate Email

# Description

Enables you to have a draft of an email composed meeting a specific style. You can use this activity for building a marketing campaign, sending out company-wide notifications, community outreach or product launches, etc.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Include salutation - Whether to include a salutation or not. Boolean value.Salutaton - Type a custom salutation or select an option from the dropdown menu, such as Hello or Dear. This field supports String type input.
* Include sign-off - Whether to include a sign-off or not. Boolean value.Sign-off - The phrase or words to appear before the name, such as Regards, Sincerely, Thank you. Select from one of the options in the dropdown menu or input a custom value. This field supports String type input.Name - The name to sign-off with. This field supports String type input.
* Email content - The content to include in the email. This should be all of the things that must be included in the email. This field supports String type input.
* Style - The style of writing to output, such as concise, vivid, eloquent, etc. Select one of the available options from the dropdown list. You can also submit a custom input, but it should be an adjective that can be used to describe a style of writing.
* Output format - The desired format for the generated email output: plain text or HTML.
* Example - An example of an email to match style and tone. This field supports String type input.







* Total words - Approximate number of words to return. If no value is provided, the model determines the appropriate length. This field supports Int64 type input.
* Detect language for output - Detect the language input and either return the summary in the same language or a different language. Default value: True. Boolean value. Output language - The language preference for the output if not the same as input. Select a language from the available list or input a custom language if desired. This field is displayed if Detect language for output is set to False.



* Email output - The content of the email after translation.
* Generate email - Automatically generated output variable.
