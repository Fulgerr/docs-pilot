# Create from Existing Envelope

UiPath.Docusign.IntegrationService.Activities.CreateByCopyingEnvelope

# Description

Create a copy of an existing envelope and save it as a draft.

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Existing Envelope - Type the name or ID of the envelope. If the envelope is not found in the drop-down, you can first scroll the drop-down till the bottom to get all the available envelopes and then type the envelope or retrieve the envelope ID from the DocuSign application -> Manage tab -> Goto Sent or Draft under Envelopes -> Click on the respective envelope and retrieve the envelope ID from URL. For example, if the URL is https://appdemo.docusign.com/documents/details/3ae67e54-f761-4a5b-a23e-b5e4835492cc, the envelope ID is 3ae67e54-f761-4a5b-a23e-b5e4835492cc.
* Email subject - The subject line of the email that that will be sent to all recipients. This overwrites the email subject copied from the existing envelope.
* Email body - The body of the email message that is sent to all the envelope recipients. This overwrites the email body copied from the existing envelope.

# Advanced Options

# Options

* Copy Recipient Data - Specifies whether to include the recipient field values of the existing envelope. By default, this property field is set to false. Only values from data entry fields, like checkboxes and radio buttons, are copied. Fields that require an action, like signatures and initials, are not included. In order to use Copy recipient data option in the Create from Existing Envelope activity, please, ensure your DocuSign’s sending settings have the option envelope copy with field data enabled:\n\n1. Login to your DocuSign account.\n2. Click on the Settings tab on the top of the screen.\n3. On the left panel, under Account, click on Sending Settings.\n4. Ensure the option envelope copy with field data is enabled.

Output

* Envelope - The output envelope.
* Envelope ID - The envelope ID which is created using template.

# Troubleshooting

The following error can be encountered:

errorCode - NO_AUTHENTICATION_METHOD_FOR_RECIPIENT,
message - This account requires an authentication method for each recipient. Envelope definition is missing an auth method for recipient: test3@gmail.com

To fix this, ensure your DocuSign security settings have the recipient authentication disabled or optional. To set this:

1. Login to your DocuSign account.
2. Click on the Settings tab on the top of the screen.
3. On the left panel, under Account, click on Security Settings.
4. Ensure the recipient authentication is disabled or optional, as shown below:
