# Content Generation

# Description

Generate a chat response for the provided request using chat completion models.

# Project compatibility

Windows | Cross-platform

# Configuration

* 
* Model name - The name or ID of the model or deployment to use. This activity defaults to the model with the highest quality observed output. However, you can select a different model based on desired outputs and testing. Switching models can impact the output.
* Prompt - The user prompt for the chat completion request. This field supports String type input.To attach an image to a custom prompt, use the activity.
* PII detection - Whether to detect PII from the input prompt. Boolean value. Default value is False.PII filtering - If set to True, any detected PII/PHI is masked before sending to the LLM. The quality of the output may be impacted. If set to False, the detected PII is included in the prompt. In both cases, the detected PII is available in the output. This field is displayed if PII detection is set to True.PII language - The language of the prompt input and output to scan for PII. Select a language from the available dropdown list. This field is displayed if PII detection is set to True.PII/PHI category - The optional PII/PHI category or categories to analyze for. If not set, all categories are reviewed. This field is displayed if PII detection is set to True.
* System prompt - The system prompt or context instruction for the chat completion request. This field supports String type input.
* Context grounding - Ground the prompt in context to increase quality and accuracy of the output. This features allows you to insert proprietary business logic and knowledge into the prompt. You can reference an Orchestrator bucket where documents have been uploaded or upload a file directly for one time use. Select one of the available options from the dropdown menu: None, Existing index, File resource.Existing index option:Orchestrator folder path - The Orchestrator folder containing the index to to context ground with. This must be a Shared folder. Search by name or select from the dropdown list of permissioned Orchestrator folders in that tenant. Use the Force refresh button to retrieve the latest folders. This field supports String type input.Index - The name or ID of the index to ground the prompt in. Select an index from the available dropdown list. File resource option:File - Click to use variable. This field supports IResource type input. This field has a 30MB file size limit. For larger files, upload data to Orchestrator and create an index using AI Trust Layer. Supported formats: PDF, JSON, CSV, DOCS, JSON, TXT.
* Number of results - Indicates the number of results to be returned. This field supports Int64 type input.







* PII confidence score - The minimum confidence score required in order to qualify as PII and be redacted. This field is displayed if PII detection is set to True.
* Maximum tokens count - The maximum number of tokens to generate in the completion. The token count of your prompt plus those from the result/completion cannot exceed the value provided for this field. It's best to set this value to be less than the model's maximum count so as to have some room for the prompt token count. Default value is 1024. If not set, the activity defaults to the necessary tokens to accommodate the request or the maximum tokens allowed by the model. This field supports Int64 type input.
* Temperature - The value of the creativity factor or sampling temperature to use. Higher values mean the model will take more risks. Try 0.9 for more creative responses or completions, or 0 (also called argmax sampling) for ones with a well-defined or more exact answer. The general recommendation is to alter, from the default value, this or the Nucleus Sample value, but not both values. Default value is 0.
* Frequency penalty - Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text, decreasing the model's likelihood to repeat the same line verbatim. Default value is 0.
* Presence penalty - Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics. Default value is 0.
* Completion choices count - The number of completion choices to generate for the request. The higher the value of this field, the more the number of tokens that will get used. This results in a higher cost, so you need to be aware of that when setting the value of this field. Default value is 1.
* Stop sequence - Up to four sequences where the API will stop generating further tokens. The returned text does not contain the stop sequence. Default value is null.



* Top generated text - The generated text.
* Masked test - The input prompt where any potential PII data has been replaced with masked placeholders.
* Content Generation - This output contains the full nested response object including additional details about the completion, model used, and PII detection results.
* Citations string - The Context grounding citations string.

# How to use Content Generation

The Content Generation activity offers flexibility in how you interact with and insert
                LLM-generated responses to custom prompts in Studio, Studio Web, or Apps. By
                inserting arguments and variables into the prompt, you can accomplish a dynamic
                prompt template that pulls in data from popular business applications via
                connectors, Orchestrator queue items, etc. This helps you build meaningful, scalable
                automations that fit unique use cases.

You can select the model to use for content generation, build the prompt, identify and hide PII/PHI data, and work with advanced model options that offer more or less deterministic outputs. Importantly, LLMs are not deterministic. You need to iterate through prompts and monitor outputs through logging, external validation tasks (Action Center), and testing. Content Generation is highly configurable, but it requires testing and monitoring before being deployed into production.

The Context grounding parameter enables Context Grounding.
                You can select one of two options:

* Existing index: Reference the Index name of a created index. This performs RAG on the dataset within that index. This is the typical use case: querying over multiple documents or files.
* File resource: Use file variables from previous activities (e.g., a document downloaded from Google Drive) and have Context Grounding perform a just-in-time (JIT) style of RAG. This means it ingests the document into an index, searches across it, augments the prompt, and then deletes the index, so the data is not persistent.Keep these documents smaller (under 50 pages). Integration Service activities have a timeout window in which all of the previous processing must take place.If you have a PDF with scanned images, we recommend using the Document Understanding OCR option in the Extract Data activity after you have downloaded a file to extract the text from these images (as Context Grounding does not yet support images). Pass that extracted_data output into the prompt with that File Resource pointing at your downloaded file.

The Number of Results parameter represents the number of top results that are searched and
                retrieved by Context Grounding based on a semantic
                similarity score. These results represent chunks of the data (pages) that then are
                passed into the context window of the prompt as evidence to ground the prompt and
                associated generation. You may increase this number to the limit of the model
                context window. This may be necessary if the output is not producing expected/ high
                quality results.

To learn more about using Context Grounding, refer to About Context grounding.
