# Send Group Chat Message

# Description

Sends a message in an existing group chat.

# Untitled Section

# Configuration

* 
* Chat - The ID of the chat. Type up to 3 characters of the exact chat group name (case sensitive) or type a custom chat ID. Dropdown will not retrieve results if the chat group name case sensitivity is not followed. This field supports String type input.
* Adaptive card JSON - Enter the adaptive card string by converting the generated JSON from https://adaptivecards.io/designer. Replace \" with ' and remove all the escape characters that contain '\', such as \n, \r. For example, replace \r\n\"type\" with 'type'. For details, refer to the Microsoft Teams API documentation and Adaptive cards documentation.
* Image - Image attachment to be uploaded. This field supports IResource type input.
* Message body - The content of the message to be sent. This field supports String type input. File ID - Enter one or more SharePoint file IDs in a comma-separated format. You can retrieve this ID from the output of Get File or Folder or Upload Files (Microsoft 365 activities). This field supports String type input.









Message ID - The ID of the message to send reply to in teams.
                        Automatically generated output variable.Message - Channel message. Automatically generated output
                        variable.
