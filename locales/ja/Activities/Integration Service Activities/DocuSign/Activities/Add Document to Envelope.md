# Add Document to Envelope

UiPath.DocuSign.IntegrationService.Activities.AddDocumentToEnvelope

# Description

Add a document to an existing envelope in DocuSign.

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Envelope - Type the name or ID of the envelope. If the envelope is not found in the drop-down, you can first scroll the drop-down till the bottom to get all the available envelopes and then type the envelope or retrieve the envelope ID from the DocuSign application -> Manage tab -> Goto Sent or Draft under Envelopes -> Click on the respective envelope and retrieve the envelope ID from URL. For example, if the URL is https://appdemo.docusign.com/documents/details/3ae67e54-f761-4a5b-a23e-b5e4835492cc, the envelope ID is 3ae67e54-f761-4a5b-a23e-b5e4835492cc.
* Document - Used to store a file in a remote application. Accepts input as IResource objects. This property represents a file. This file resource appears by default in Upload or Download activities that have a file as input or output. To use this resource, use the Download file/attachment activity from any respective file systems, such as GitHub, Google Drive, OneDrive, Box, etc., and pass the downloaded File Resource as input here.

# Advanced Options

Output

* Output - The envelope you updated.
