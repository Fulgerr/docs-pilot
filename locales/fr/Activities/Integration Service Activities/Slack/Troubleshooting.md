# Troubleshooting

This section presents common issues you may encounter when working with the Slack
            connector and activities, and how to resolve them.

## Slack handles, usernames, mentions are not
        working correctly

# Description

When you include Slack handles, usernames, or mentions in messages, they might not work correctly
                because of formatting issues.

# Solution

Check whether the message is correctly formatted. Refer to the Formatting text for app surfaces guidelines in the Slack
                documentation.


## Button Clicked event is not retrieved

# Description

You are using a Button Clicked event in your workflow, but it is not correctly retrieved.

# Solution

If you are using the Bring your own OAuth 2.0 app authentication method, make sure the Button Clicked event is configured with the right connection when publishing the project. The same connection is tied to the Webhook URL that receives events, and this webhook must be configured in your application's Interactivity settings. For more details, refer to the Slack authentication guide.

If you are using the OAuth 2.0 Authorization Code authentication method, take the following steps. First, delete the published process from Orchestrator. Next, make sure the Button Clicked event is configured with the correct Channel ID or User ID. Republish the process to Orchestrator and run it again. Additionally, you can check the Orchestrator jobs or logs to monitor the state of the event.


## A channel is not available in the activity
        dropdown menu

# Description

You can't find a specific channel in the Channel dropdown menu of the activity.

# Solution

Check whether the connection created in Integration Service is using the correct Slack workspace. Refer to the Authentication guide (step 7).Check whether you are part of that channel. If you were recently added to the channel, press CTRL + R or use the Force refresh option in the activity.


## A user is not available in the activity
        dropdown menu

# Description

You can't find a specific user in the User dropdown menu of the activity.

# Solution

Check whether the connection created in Integration Service is using the correct Slack workspace. Refer to the Authentication guide (step 7).In Slack, navigate to the specific user profile and copy the member ID. Enter this ID in the User field. If you're using the Send Message to User activity, you can use the email instead of the member ID.


## Send Message to User fails

# Description

The Send Message to User activity fails with a "user_not_found" error.

# Solution

Check whether the connection created in Integration Service is using the correct Slack workspace. Refer to the Authentication guide (step 7).Check if the user has been deactivated or removed from the current workspace.Enter the user's email in the User field, instead of its member ID. Unlike other Slack activities, Send Message to User accepts email input.


## Send Message to Channel fails

# Description

The Send Message to Channel activity fails with a "channel_not_found" or "not_in_channel" error.

# Solution

Check whether the connection created in Integration Service is using the correct Slack workspace. Refer to the Authentication guide (step 7).Make sure the channel is not a private channel:You can't use Send Message to Channel with a Send as - Bot option unless you manually add the bot to the channel. Select Send as - User instead, if you are part of a private channel.To manually add a bot user to a private channel: mention the bot on the channel and select Invite them, or use the channel's Add an app option.


## Send File to Channel fails

# Description

The Send File to Channel activity fails with a "channel_not_found" or
                "not_in_channel" error.

# Solution

* Check whether the connection created in Integration Service is using the correct Slack workspace. Refer to the Authentication guide (step 7).
* If you are using the Send as - User option: check whether you are part of the channel. You can also use Join Channel activity (with a Join as - User option) to join a public channel.
* If you are using the Send as - Bot option: If the channel is public, use the Join Channel activity (with a Join as - Bot option) to first add the bot user to the channel. If the bot user is not part of the channel, it cannot send files.If the channel is private, you need to manually add the bot user. Mention the bot on the channel and select Invite them or use the Add an app option.


## Cannot create Bring your own OAuth 2.0 app connection

# Description

You are unable to create a connection using the Bring your own OAuth 2.0 app connection authentication method.

# Solution

Make sure you correctly configured the application, as described in the Slack Quickstart guide.Make sure the Redirect URL is correctly in
                        the application's OAuth & Permissions settings (set the value to:
                            https://cloud.uipath.com/provisioning_/callback).Make sure the scopes used during authentication (the User scopes and the Bot scopes) are also configured in the application's OAuth & Permissions settings.


## Bring your own OAuth 2.0 app connection breaks often

# Description

You created a connection using the Bring your own OAuth 2.0 app connection authentication method and it breaks often.

# Solution

Make sure the token rotation setting is disabled in your application's settings. Go to OAuth & Permissions and check the Advanced token security via token rotation setting. If the Opt in option appears as selected, Slack enforces a limit of two tokens (one bot token and one user token), causing all your connections to break. To fix this, you can either create a new application with the correct settings or contact Slack support to help you disable this setting.

