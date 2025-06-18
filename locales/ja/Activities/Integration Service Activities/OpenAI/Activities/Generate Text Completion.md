# Generate Text Completion

UiPath.OpenAI.IntegrationService.Activities.GenerateTextCompletion

# Description

Given a prompt and other inputs such as the Model ID, etc., this activity generates a text completion response. This functionality makes use of legacy GPT-3 text generation models such as Curie, Ada and Babbage. Read more about the differences between models and text completion.

# Untitled Section

text="Type the content"

# Configuration

Prompt - The prompt you want to use for the generation of the text completion. You can read more on prompts here.







* Model Name - The large language model (LLM) you want to use for text completion. You can read more on the differences between these models in the OpenAI documentation. Max Tokens - The maximum number of tokens allowed for the prompt and generated answer. Fewer tokens are less expensive. Most models support a maximum of 4096 tokens, however, some models support only 2048. Default value is 1920. Read more about tokens.N - The number of completion choices you want the AI to return. The minimum value of this field is 1. Default value is 1.Temperature - A number between 0 and 2. Higher values like 0.8 make the output more random, while lower values like 0.2 make it more focused and deterministic. Default value is 1.Top P - A number between 0 and 1. The lower the number, the fewer tokens are considered. Defaults to 1.Suffix - The suffix that comes after a completion of inserted text. Defaults to null.Stream - Specifies whether to stream back partial progress. If set, tokens are sent as data-only server-sent events as they become available, with the stream terminated by a data:[DONE] message. Defaults to false.Log Probs - Include the log probabilities on the logprob's most likely tokens, as well as the chosen tokens. For example, if logprobs is 5, the API returns a list of the 5 most likely tokens. The API always returns the logprob of the sampled token, so there may be up to logprobs+1 elements in the response. The maximum value for logprobs is 5. Defaults to null.Echo - In addition to completion, if this field is set to true, echoes back the prompt. Default value is false.Stop - Up to 4 sequences where the API stops generating further tokens. The returned text does not contain the stop sequence. Defaults to null.Presence Penalty - A number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model’s likelihood to talk about new topics. Defaults to 0.Frequency Penalty - Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model’s likelihood to repeat the same line verbatim. Defaults to 0.Best Of - Generates best_of completions server-side and returns the best (the one with the highest log probability per token). Results cannot be streamed. When used with N, best_of controls the number of candidate completions and N specifies how many to return - best_of must be greater than N. Defaults to 1.Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for Max Tokens and Stop.User - A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. Defaults to null.



* Top Generated Text - The top generated text completion string. If you are interested in only returning a single response (ie. N=1, which is the default), this will be the output you most likely will want to use. It is a Text data type which is easy to assign a variable to and use directly in other activities/text inputs.
* Generate Text Completion - Automatically generated output variable. The full GenerateTextCompletion object that includes:Choices - or responses from the model. You can set the total number of responses that you want back from the model using the ‘N’ field in the additional options of the activity which defaults to 1. This will return as an array with the first object starting at 0. Ex. Referencing a single object in an array within a ‘For Each’ control: Response.Choices(0).Text. For more information on other parts of the Text Completion response object, please see the Create completion documentation.
