# Working with UiPath GenAI activities

# Overview

The UiPath GenAI Activities allow you to take advantage of quality-gated, task-specific actions that don't require prompt development. Instead, these activities ask for key inputs with common data types. This speeds up the development process and removes the need for extensive testing for the most common applications of generative AI.

By design, the activities are less configurable, meaning they don't allow extensive free-form instructions for the models. This is on purpose, so that UiPath can offer a certain level of confidence if input instructions are followed. If free-text instruction and greater nuance are required for specific use cases, choose the Content Generation activity and build prompts that meet your unique needs.

Here is a summary of how the UiPath GenAI Activities work:

* – Provide the text to summarize, as well as additional options like output format, total words, etc. The output is the summarized text as a string.
* – Provide the content that the email must contain, the writing style, output format, and the option to offer an example email to emulate. This can be returned in the language of the input or in another language.
* – Provide the content to rewrite, rewrite instructions, total words, and an example. This can be returned in the language of the input or in another language.
* – Input the text to translate and the language to translate to.
* – Input the text from which to detect the language of.
* – Input the text to analyze for PII or PHI and which specific types of PII or PHI they are interested in finding. If none are selected, all will be searched for. The output includes the PII category, text, and a redacted version of the text removing all PII. This can be used on its own or run through a model without fear of PII being shared. Note that data is never retained by third-party models or used for training purposes.
* - Categorize content based on a provided set of categories and category descriptions.
* - For a given text string, identify and classify named entities.

# Working with files

The UiPath GenAI Activities require you to input one or various text strings that generative models use. That text is usually contained in a file, which means you must first extract the content. You can do this using a couple of different methods or techniques.

Get files to use as input

First, you must pull the file into the workflow. You can achieve this in a variety of ways, including:

Download or locate a file:Download File activities, available in Google Drive, OneDrive, Box, Dropbox, etc. Many Integration Service connectors offer the ability to pull a file from a specific cloud storage environment. You can use this option for serverless robots.Path Exists: This activity allows you to find a local file to use within their workflow. This does not work for serverless robots.Download Storage File: This activity allows you to pull in a document to a workflow from an Orchestrator bucket.Download file from URL: This activity allows users to download a file from a publicly-accessible URL.Queues and queue items:You can also take advantage of queues and queue items to pull in as inputs for GenAI activities.

Extract content from files

Once you have your file, you must extract the content (text strings) that the generative models use. You can achieve this through:

Document Understanding: Use the Extract PDF
                                                  Text activity to pull all of the text from
                                                  a PDF file.Integration Service Vision connectors and activities: Use either Google Vision, Microsoft Vision, or OpenAI to upload files and extract the text inside. This requires subscriptions to these services to work.Read Range: Using the Microsoft Excel or Google Sheets connectors, the Read Range activity can extract content from an Excel or CSV file and save the contents to a DataTable. You can convert this DataTable to a string using the Output DataTable activity or add the DataTable to the prompt directly.

Validation

Use Persistence activities, such as Create External Task and Wait for External Task and Resume, to set up human in the loop steps in your workflows to ensure the quality of the output.

## Just-in-time Context Grounding for
        documents

The following procedure explains how you can automate the ingestion of documents and
                benefit from Just-in-time Context Grounding on documents:

Retrieve a file from a cloud storage location. For example, use the Google
                    Drive Download File activity.Alternatively, use a locally stored file or a File Created trigger to start the automation
                        when a file is added to cloud storage.Upload the file to the storage bucket connected to the Context Grounding index.
                Use an 
                    activity to sync the latest data from the storage bucket to the index.Next, add a Wait for an Event on UiPath GenAI Activities and Resume
                    activity. This activity monitors the Index
                            Completed event to check when the index sync completes. It does
                        this by verifying the output of the trigger to ensure it is successful,
                        i.e., new files have been added.When in debug mode, you must manually resume the workflow. At runtime, the
                    resume happens as soon as the trigger parameters are met. Next, add a Content Generation or Run Job activity (for an agent
                    process) referencing the updated context grounding index.

