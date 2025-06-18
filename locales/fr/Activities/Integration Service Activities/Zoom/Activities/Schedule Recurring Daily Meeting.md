# Schedule Recurring Daily Meeting

UiPath.Zoom.IntegrationService.Activities.ScheduleRecurringDailyMeeting

# Description

Schedules a recurring daily meeting with a fixed time.

# Project Compatibility

Windows | Cross-platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Topic - The topic of the meeting you want to schedule.
* Start time - The start time of the meeting you want to schedule.
* Agenda - The agenda of the meeting you want to schedule.
* Use default password - Radio buttons that specify whether you want to use the default password for your Zoom account. By default, this property is set to False.
* Password - The password required to join the meeting. By default, a password can only have a maximum length of 10 characters and only contain alphanumeric characters and the @, -, _, and * characters.
* Approval Type - The type of approval required for invited meeting registrants.
* Duration - The meeting’s scheduled duration, in minutes.
* Recurrence end date time - Indicates the final date on which the meting will recur before it is canceled. Must be in UTC Time, such as 2017-11-25T12:00:00Z. Cannot be used with Recurrences before canceled.
* Repeat interval in days - Define the interval at which the meeting should recur. For instance, if you would like to schedule a meeting that recurs every two days, you must set the value of this field as 2. For a daily meeting, the maximum interval you can set is 90 days. For a weekly meeting, the maximum interval that you can set is of 12 weeks. For a monthly meeting, there is a maximum of 3 months.

# Advanced

OptionsTimezone - A drop-down menu that enables you to select the time zone for the scheduled meeting.Recurrences before canceled - Indicates how many times the meeting should recur before it is canceled. Maximum value is 365 and default value is 1. Cannot be used with Recurrence end date time.OutputID - The ID of the scheduled meetingMeeting uuid - The uuid of the meeting.Password - The password of the scheduled meeting.Encrypted password - The encrypted password for the scheduled meeting.Start url - The URL for starting the meeting.Join url - The URL for joining the meeting.
