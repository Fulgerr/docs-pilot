# Generate Chat Completion

UiPath.OpenAI.IntegrationService.Activities.GenerateChatCompletion

# Description

Given a user prompt and additional options like instruction (that may include conversation history), this activity generates a text completion response. This activity defaults to the GPT-3.5-Turbo model, but also allows access to GPT-4. Both of these models are optimized for chat, hence the name of the activity. Read more about the Chat Completions API.

Please note that this activity, while giving users the ability to add conversation history, does not actually keep previous requests and responses from the model in memory. It is state-less. Each OpenAI Chat activity would require the user to provide the full dialogue history as context in the prompt.

# Untitled Section

text="Type the content"

# Configuration

* 
* Model name - The large language model (LLM) to use for the chat completion. Select one of the available options from the drop-down list: GPT-4, GPT-3.5, GPT-4V. Default value is GPT-4. You can read more on the differences between these models in the OpenAI documentation.
* Prompt - The prompt you want to use for the generation of the chat completion. Read more about prompt engineering.
* Image type - The type of image to send along with a message if image analysis is needed. This field is displayed if you select the GPT-4V model. Select one of the available options: Image file, Image URL. Supported file formats: PNG (.png), JPEG (.jpeg and .jpg), WEBP (.webp), and non-animated GIF (.gif)Image file - Select an image file using a variable. This field supports IResource type input.Image URL - The image URL to send along with a message if image analysis is needed. This field supports String type input.







* Instruction - Instructions on how you want the AI to generate the chat completion response. This is the equivalent of the system role discussed in the OpenAI docs. The Assistant role is not currently available in this activity.
* Model Name - The large language model (LLM) to use for the chat completion. You can choose between gpt-3.5-turbo and gpt-4.By default, gpt-4 is selected.
* Max Tokens - The maximum number of tokens allowed for the prompt and generated answer. Fewer tokens are less expensive. Most models support a maximum of 4096 tokens, however, some models support only 2048. Default value is 1920. Read more about tokens.
* N - The number of completion choices you want the AI to return. The minimum value of this field is 1. Default value is 1.
* Temperature - A number between 0 and 2. Higher values like 0.8 make the output more random, while lower values like 0.2 make it more focused and deterministic. Default value is 1.
* Top P - A number between 0 and 1. The lower the number, the fewer tokens are considered. Defaults to 1.
* Stream - Specifies whether to stream back partial progress. If set, tokens are sent as data-only server-sent events as they become available, with the stream terminated by a data:[DONE] message. Defaults to false.
* Stop - Up to 4 sequences where the API stops generating further tokens. The returned text does not contain the stop sequence. Defaults to null.
* Presence Penalty - A number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model’s likelihood to talk about new topics. Defaults to 0.
* Frequency Penalty - Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model’s likelihood to repeat the same line verbatim. Defaults to 0.
* User - A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. Defaults to null.



Top Generated Text - The top generated chat completion string. If you are interested in only returning a single response (i.e., N=1, which is the default), this will be the output you most likely will want to use. It is a Text data type which is easy to assign a variable to and use directly in other activities/text inputs.Generate Chat Completion - Automatically generated output variable. The top generated chat completion string. If you are interested in only returning a single response (i.e., N=1, which is the default), this will be the output you most likely will want to use. It is a ‘Text’ data type which is easy to assign a variable to and use directly in other activities/text inputs.Choices - or responses from the model. You can set the total number of responses that you want back from the model using the ‘N’ field in the additional options of the activity which defaults to 1. This will return as an array with the first object starting at 0. Ex. Referencing a single object in an array within a For Each control: Response.Choices(0).Text. For more information, see the Chat Completion object documentation.
