# Get Meeting Recording

UiPath.Zoom.IntegrationService.Activities.GetRecording

# Description

Retrieves the download URL link and chat transcript of your completed meetings that are saved in the cloud.

# Project Compatibility

Windows | Cross-platform

# Configuration

Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.Meeting Id - The ID of the scheduled meeting.

# Advanced

OutputRecordings - The recording of the meeting.

# How to use the activity

To successfully download the meeting recording, you must follow these steps:Create a new Studio project.Add an Event Trigger activity. In the Event property field, select Recording Published as well as any other optional data filters you want.Save the Output as a variable. In this example we will call it eventObject.Add a Get Meeting Recording activity.For the Meeting ID open the Expression Editor.\Use a Conversion in order to call the id. For the object above, the expression should look like Convert.ToInt64(eventObject).
