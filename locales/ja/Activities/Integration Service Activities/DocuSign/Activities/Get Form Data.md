# Get Form Data

UiPath.DocuSign.Activities.Envelope.GetFormData

# Description

Retrieve the envelope and tab data (also called form data) from any in-process, completed, or canceled envelope. Recipients who are also full administrators on an account can view form data for any envelopes that another user on the account has sent to them.

To use this feature, the Sending Setting Allow sender to download form data must be enabled for the account you are using. You can enable the setting by following the steps below:

1. Login to your DocuSign account.
2. Click on the Settings tab on the top of the screen.
3. On the left panel, under Account, click on Sending Settings.
4. Ensure the Allow sender to download form data option is enabled.

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Envelope - Type the ID or name of the envelope. If the envelope is not found in the drop-down, you can first scroll the drop-down till the bottom to get all the available envelopes and then type the envelope or retrieve the envelope ID from the DocuSign application -> Manage tab -> Goto Sent or Draft under Envelopes -> Click on the respective envelope and retrieve the envelope ID from URL. For example, if the URL is https://appdemo.docusign.com/documents/details/3ae67e54-f761-4a5b-a23e-b5e4835492cc, the envelope ID is 3ae67e54-f761-4a5b-a23e-b5e4835492cc

# Advanced Options

Output

* Form Data - The form data extracted from the specified envelope.
