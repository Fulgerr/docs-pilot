# Send Envelope

UiPath.DocuSign.Activities.Envelope.SendEnvelope

# Description

Send a draft envelope in DocuSign.

The following error can be encountered:

errorCode - NO_AUTHENTICATION_METHOD_FOR_RECIPIENT,
message - This account requires an authentication method for each recipient. Envelope definition is missing an auth method for recipient: test3@gmail.com

To fix this, ensure your DocuSign’s security settings have the recipient authentication disabled or optional. To set this:

1. Login to your DocuSign account.
2. Click on the Settings tab on the top of the screen.
3. On the left panel, under Account, click on Security Settings.
4. Ensure the recipient authentication is disabled or optional, as shown below:

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Envelope - Type the name or ID of the envelope. If the envelope is not found in the drop-down, you can first scroll the drop-down till the bottom to get all the available envelopes and then type the envelope or retrieve the envelope ID from the DocuSign application -> Manage tab -> Goto Sent or Draft under Envelopes -> Click on the respective envelope and retrieve the envelope ID from URL. For example, if the URL is https://appdemo.docusign.com/documents/details/3ae67e54-f761-4a5b-a23e-b5e4835492cc, the envelope ID is 3ae67e54-f761-4a5b-a23e-b5e4835492cc.

# Advanced Options

Output

* Envelope - The envelope you sent.
