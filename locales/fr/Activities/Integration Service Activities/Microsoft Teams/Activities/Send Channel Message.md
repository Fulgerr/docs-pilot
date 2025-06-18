# Send Channel Message

# Description

Sends a message in a team channel.

# Untitled Section

# Configuration

* 
* Team - The ID of the team the channel belongs to. Enter the name of the team to retrieve it from the available drop-down list or type in a custom team ID. You can retrieve the ID from the output of the Get Team by Name activity. This field supports String type input.
* Message body - The content of the message you want to send. This field supports IResource type input.
* Adaptive card JSON - Enter the adaptive card string by converting the generated JSON from https://adaptivecards.io/designer. Replace \" with ' and remove all the escape characters that contain '\', such as \n, \r. For example, replace \r\n\"type\" with 'type'. For details, refer to the Microsoft Teams API documentation and Adaptive cards documentation.
* Image - The image attachment you want to upload. This field supports String type input.
* File ID - Enter one or more SharePoint file IDs in a comma-separated format. You can retrieve this ID from the output of Get File or Folder or Upload Files (Microsoft 365 activities). This field supports String type input.









* Message ID - The ID of the message to send reply to in teams. Automatically generated output variable.
* Web URL - The Web URL of the message. Automatically generated output variable.
* Message - Channel message. Automatically generated output variable.
