# PII Filtering

# Description

This activity scans the input text, identifies any Personally Identifiable Information (PII) or Protected Health Information (PHI), and replaces such data with a redaction marker.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Text - The document or text string containing the content to analyze for PII. This field supports String type input.
* Language - The language of the text or document input. Select a language from the available dropdown list. Defaults to English if not set. Not all PII/PHI categories are supported for all languages.







* PII/PHI category - The optional PII/PHI category to analyze the text for, such as person, person type, organization, etc. If not set, all categories are reviewed. Select the category from the available dropdown list. This field supports String[] type input.
* Minimum confidence score - The minimum confidence score required in order to be considered. This is between 0 and 1, with 0 being the lowest and 1 being the highest confidence score. If not set, all detection results are returned regardless of the confidence score. Default value is 0.75.



* Redacted text - The redacted text for all PII/PHI discovered in input.
* Text analysis object - Full text analysis object.
