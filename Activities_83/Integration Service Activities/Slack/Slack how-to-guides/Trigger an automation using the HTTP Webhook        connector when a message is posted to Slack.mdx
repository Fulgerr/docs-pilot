# Trigger an automation using the HTTP Webhook
        connector when a message is posted to Slack

# About

Summary: Trigger an automation using the HTTP Webhook
                connector when a message is posted to Slack channel.

Applications:
                Slack, HTTP Webhook

Description

The HTTP Webhook connector
            allows RPA developers to trigger automations based on external events using webhooks.
            The HTTP Webhook connector generates a Webhook URL. This must be configured in the
            private Slack OAuth app settings and the respective event type must be enabled. The
            events are then instantaneously received by Orchestrator via this URL.

Use case

Managing customer support requests raised in a Slack
                help channel. The request must either create a Jira or Zendesk ticket or send a
                Slack notification to a team or user group using a Slack button.

This user
                guide walks you through the first workflow of this use case: triggering automations
                using the Webhook connector when a message is posted to Slack channel. For the
                second workflow, i.e., triggering automations based on the Slack  event, see
                    .

This workflow uses the HTTP Webhook connector and its Webhook Event
                    Happened trigger, Deserialize JSON, along with some Slack
                activities: 
                and . You can
                also use the 
                or 
                activities.

# Workflow

If you want to save time, use the Trigger an
                        automation using Webhook connector when a message is posted to Slack channel
                    template in Studio Web to build this workflow.

Open Studio Web and create a new project.
                    
                        Select the More options  menu on the Manual trigger and
                            select Change trigger.
                    
                        From the trigger catalog, select HTTP Webhook: Webhook Event
                                Happened. In this trigger activity:
                        
                                Add your Slack connection. The HTTP Webhook connector then
                                    generates a Webhook URL, which you will need in step 4.
                                Add any additional filters, if needed. We recommend you use a
                                    filter for Channel ID, at least. Otherwise, any message in any
                                    channel of your workspace will trigger the event.
                                To add a
                                        filter on channel ID, select the Data filters field
                                        to access the Filter builder. In the first column, type
                                            body.event.channel, select the Equals
                                        operator, and add the channel ID in the third column.You can also rename the trigger activity to something more
                                representative of your use case.
                        Copy the webhook URL generated in step 1. 
                        
                                In a different browser tab, go to  and open your Slack private OAuth
                                    application. 
                            
                                Navigate to the Event Subscriptions settings page. 
                                Set the Enable Events toggle to On. 
                                        In the Request URL field, paste the webhook URL.
                                                
                                Next, scroll down to Subscribe to events on behalf of
                                        users and select Add workspace event. Add the
                                        message.channels event. This retrieves
                                    events when a message is posted by a user on the channel. You
                                    can add any other events of your choice. 
                                Select Save Changes. Webhooks are now configured for your
                                    app. 
                            The output of the Webhook connector (after the Webhook URL is configured
                            for Slack) is in a specific JSON string format (a sample is provided in
                            the section below). It must be converted to JSON object to use the event
                            payload fields, such as channel ID, user ID, message text etc. in
                            subsequent activities (with the help of JSON dot notation/VB
                            expression). The Slack event payload can also be retrieved from
                                    . To avoid any errors,
                            retrieve/log the event payload string using Log message before using JSON
                            dot notation/VB expression.
                        Add a Deserialize JSON activity to
                            your workflow. This step converts the JSON string output of the Webhook
                            connector to JSON object.
                        
                                Select the JSON string input parameter to add a variable. 
                            
                                Under Webhook Event Happened, navigate to Body >
                                        Content.Add the Slack 
                        activity to your workflow. At this step, you need to pass the output fields
                        of the Deserialize JSON activity using
                        JSON dot notation/VB expression to retrieve channel name. In the
                            activity:
                                For the Channel field, select See more  icon to change input type and
                                    select Open expression editor. Use the entry below to
                                    pass the channel ID retrieved in the Webhook
                                    event.jSONObject("event")("channel").ToStringAdd the Slack 
                        activity to your workflow. Now you want to send a message to a user
                        (yourself) when a message is posted in a particular channel (a help channel)
                        and enter the posted message and channel name using variables. In this
                            activity:
                                In the User input field, select the user from the
                                    drop-down list or manually type the user email address.
                            
                                In the Message field, type a message by entering the
                                    channel name (where the message was posted) and the message text
                                    content, using variables. For example: 
                                "There is a customer support request in channel
                                        <name>:
                                        jSONObject("event")("text")" 
                                where <name> is retrieved from the output of
                                            .
                                In the Buttons actions fields, enter two button actions
                                    for Approve Ticket and Notify Team. Add the action ID
                                    (required), action name (required), style (primary/danger),
                                    confirmation title, confirmation text, confirm ok title, confirm
                                    deny title, in a comma-separated format:
                                    aks1,Approve Ticket,primary;
aks2,Notify Team;You are now ready to publish
                        or run the project. Select the Publish button at the top of the
                        workflow and enter the details such as Automation name, Description, and
                        Workspace. The Version is updated automatically.

# Sample JSON string

{
 "token": "SUAVTSGdUyb2qBaclIC14wKq",
 "team_id": "T02KZCJHY1W",
 "enterprise_id": "E02K962QC91",
 "context_team_id": "T02KZCJHY1W",
 "context_enterprise_id": "E02K962QC91",
 "api_app_id": "A04JJM6SUFM",
 "event": {
   "client_msg_id": "4abfc195-c381-4c8e-b952-00aa705ce507",
   "type": "message",
   "text": "YoYo",
   "user": "U02K95UU71Q",
   "ts": "1705418063.837779",
   "blocks": [
     {
       "type": "rich_text",
       "block_id": "moF7O",
       "elements": [
         {
           "type": "rich_text_section",
           "elements": [
             {
               "type": "text",
               "text": "YoYo"
             }
           ]
         }
       ]
     }
   ],
   "team": "T02KZCJHY1W",
   "channel": "C05LTLGRHEJ",
   "event_ts": "1705418063.837779",
   "channel_type": "channel"
 },
 "type": "event_callback",
 "event_id": "Ev06E0PJ7M45",
 "event_time": 1705418063,
 "authorizations": [
   {
     "enterprise_id": "E02K962QC91",
     "team_id": "T02KZCJHY1W",
     "user_id": "U02K95UU71Q",
     "is_bot": false,
     "is_enterprise_install": false
   }
 ],
 "is_ext_shared_channel": false,
 "event_context": "4-eyJldCI6Im1lc3NhZ2UiLCJ0aWQiOiJUMDJLWkNKSFkxVyIsImFpZCI6IkEwNEpKTTZTVUZNIiwiY2lkIjoiQzA1TFRMR1JIRUoifQ"
}
