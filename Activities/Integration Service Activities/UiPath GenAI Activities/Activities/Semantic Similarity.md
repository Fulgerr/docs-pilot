# Semantic Similarity

# Description

Compare a string to another string or a list of strings using generative AI.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Similarity type - The type of similarity. Allows you to compare a string to a single string or to a list of strings.
* First comparison input - The first string of text for calculating similarity. This field supports String type input.
* Second comparison input - The second string of text for calculating similarity. This field supports String type input. This field is displayed if you set the Similarity type to String to string.
* Comparison array - Array of strings to compare the first input against for matching. This field is displayed if you set the Similarity type to List of strings. The array of string is actually a String type input. The model attempts to interpret the delimiter between strings if not added.
* Output format - The output format: Best match or List of scores. If you select Best match, the output will be the most likely match. If you select List of scores, the output assigns a similarity score for the whole list of outputs. This field is displayed if you set the Similarity type to List of strings.





* Similarity score - The calculated score representing the semantic similarity, between 0 an 1, where 0 indicates no semantic similarity and 1 indicates perfect semantic similarity (only for string to string or best match). In the case of best match, this represents the similarity score for the best matched string from the list of strings.
* Similarity explanation - Provides an explanation of the semantic similarity result, including context, intent and sentiment (only for string to string or best match).
* Best match string - Best match string out of the provided comparison array (only for best match).
* List of similarity scores - A list containing similarity scores for multiple comparisons (only for list of scores).
* Semantic similarity - Automatically generated output variable.
