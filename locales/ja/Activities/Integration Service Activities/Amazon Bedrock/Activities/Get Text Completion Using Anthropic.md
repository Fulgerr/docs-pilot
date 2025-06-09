# Get Text Completion Using Anthropic

UiPath.Bedrock.IntegrationService.Activities.TextCompletionUsingAnthropic

# Description

Generates a text completion response based on a given prompt using an Anthropic
                model.

# Untitled Section

# Configuration

Model - The model you want to use for the text completion
                        generation.Prompt - The prompt to use for the text completion generation.







* Max tokens to sample - The maximum number of tokens allowed to generate before stopping. By default, this field is set to 256.
* Stop sequences - Sequences that cause the model to stop generating completion text.
* Temperature - The amount of randomness injected into the response. This field accepts ranges between 0 and 1. Use a temperature closer to 0 for analytical / multiple choice, and closer to 1 for creative and generative tasks. By default, this field is set to 0.
* Top k - Only sample from the top K options for each subsequent token. Used to remove "long tail" low probability responses. By default, this field is set to 5.
* Top P - A number between 0 and 1. The lower the number, the fewer tokens are used. By default, this field is set to 1.



* Completion - Top generated text completion. Automatically generated output variable.
* Text completion response object - The full response object for the text completion. Automatically generated output variable.
