# Get User by Username

UiPath.Twitter.IntegrationService.Activities.GetUserUsername

# Description

Uses the GET /2/users/by/username/:username API to retrieve any user information using the X username.

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Username - The Twitter username of the user.

# Advanced Options

Options

* Tweet Fields - A comma separated list of tweet fields to display.For example: text, attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, etc.
* User Fields - Comma-separated list of user fields to display.For example: description, name, username, created_at, etc.
* Expansions - Expansions enable you to request additional data objects that relate to the originally returned tweets in a comma-separated list without spaces.For example: pinned_tweet_id, etc.

Output

* User - The output user object.
* User ID - The ID of the user.
