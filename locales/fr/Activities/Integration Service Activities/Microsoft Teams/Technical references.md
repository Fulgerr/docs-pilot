# Technical references


## How to Retrieve a Channel's ID and Use It in Microsoft Teams Activities

# About

This guide explains how to retrieve the channel ID for a specific channel in Microsoft Teams and how to use it in other Microsoft Teams activities.

These workflows are built in Studio Web, but you can follow the same steps in Studio Desktop.

# How to retrieve the channel ID for a specific channel in Microsoft Teams

1. Open your Microsoft Teams app. Select Teams from the left-side menu and copy the channel name.
2. Create a new project in Studio Web and add a List channels activity.
3. Choose the Team Id from the drop-down menu. A channel is bound to a team; in this example, the Upcoming Webinar Registrants Tracking channel belongs to the Private team.
4. For the Where field, use the Filter builder to set the following condition: Display name = [your channel's name].
5. For the Output List field, create a GetChannelID variable to store the activity's response. Click the Plus button and select Save as variable, then create a GetChannelID variable.
6. Next, add a Write Line activity and use the Expression editor to set the Text field to:
7. Run the workflow to retrieve the output Channel ID:
8. Now you can use the Channel ID in other Microsoft Teams activities, such as Send channel message.

# How to share a file attachment with a message in Microsoft Teams

The file to be sent must come from a cloud storage service. In this example we are using a Google Drive item, but you can use other storage systems, such as Dropbox, Citrix ShareFile, OneDrive, etc.

1. Add a Google Drive Get File/Folder activity to your project and select the file you wish to share later on in Microsoft Teams. In this example, a .PNG file.
2. Retrieved file or folder represents the output of this activity. Click the Plus button and select Save as variable, then create a File variable.
3. Add a Send channel message. In the File Resource field, add the File variable created before.
4. For Channel ID, use the Expression editor to set it to GetChannelID(0).Id. This represents the GetChannelID variable used to store the output of the List channels activity.
5. Select the Team ID from the drop-down menu.
6. In Content add the message you wish to share.
7. Run your process.
8. Go to your channel and check if your message was posted, along with the attachment:

# How to create a one on one chat in Microsoft Teams and send a message

1. Add a Create one on one chat activity to your project.
2. In User email, add the email address of the recipient user. Users must belong to your organization.
3. Set up Roles, such as guest or owner.
4. In the Output ChatID field, create a ChatID variable.
5. Next, add a Send chat message activity.
6. In the Chat ID field, enter the ChatID variable created earlier.
7. In Content, enter the content of the message you wish to send.
8. Optionally, you can also add an attachment to your message by using the File Resource property, as shown in the previous example.
9. Run the process.

