# Named Entity Recognition

# Description

For a given text string, identify and classify named entities.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Input text - The text to analyze for named entities. This field supports String type input.
* Entities - The list of entities and their descriptions to search the text for. Use the Dictionary builder to add the entity names and descriptions. Make sure to create clear distinctions between entities and their descriptions for more accurate outputs. The same entity name cannot be used more than once.



* Examples - The example entities and their descriptions to search the text for. You can use the Dictionary builder to add entities.



* Entities - The list of entities recognized by the Named Entity Recognition (NER) model in the input text. Formatted JSON as a string. Use the Deserialize JSON activities as needed for conversions.
* Named Entity Recognition - Automatically generated output variable.
