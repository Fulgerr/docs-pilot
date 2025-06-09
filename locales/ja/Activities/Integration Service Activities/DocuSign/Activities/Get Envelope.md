# Get Envelope

UiPath.Docusign.IntegrationService.Activities.GetEnvelope

# Description

Retrieves the envelope status.

# Configuration

Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports String type input.Envelope - Type the name or ID of the envelope. If the envelope is not found in the drop-down, you can first scroll the drop-down till the bottom to get all the available envelopes and then type the envelope or retrieve the envelope ID from the DocuSign application -> Manage tab -> Goto Sent or Draft under Envelopes -> Click on the respective envelope and retrieve the envelope ID from URL. For example, if the URL is https://appdemo.docusign.com/documents/details/3ae67e54-f761-4a5b-a23e-b5e4835492cc, the envelope ID is 3ae67e54-f761-4a5b-a23e-b5e4835492cc.

# Advanced

Output

* Response - The returned Envelope object.
