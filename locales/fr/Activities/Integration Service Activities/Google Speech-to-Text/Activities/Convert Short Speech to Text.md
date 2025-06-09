# Convert Short Speech to Text

# Description

Reads an audio file of less than 1 minute and produces text.

# Untitled Section

text="Type the content"

# Configuration

Audio file - The audio file that needs to be converted to speech. The audio file must have a maximum length of one minute. This field supports IResource type input. Speech language - The language of the voice expressed as a tag, e.g. en-US. Select an option from the available drop-down list. This field supports String type input.Audio encoding - The encoding of the audio file. This field supports String type input. Sample rate in hertz - Sample rate in Hertz of the audio data sent in all RecognitionAudio messages. Valid values are: 8000-48000. Default value is set to 16000, which is the optimal value.







* Enable word time offset - If set to True, the result includes a list of words and the start and end time offsets (timestamps) for those words. Default value is False.



* Text - The converted text. Automatically generated output variable.
