# List All Records

UiPath.Twitter.IntegrationService.Activities.ListAllRecords

# Description

Lists all the records of an object in X.

# Project Compatibility

Windows | Cross-platform

# Configuration

* ConnectionId - The connection established in Integration Service. Access the drop-down to choose, add or manage connections. This field supports String type input.
* Select Object - The object you want to configure. Access the drop-down to choose the object.
* ids - A comma separated list of Tweet IDs. Up to 100 are allowed in a single request. Make sure to not include a space between commas and fields.

# Advanced Options

Options

* expansions - Expansions enable you to request additional data objects that relate to the originally returned users. The ID that represents the expanded data object is included directly in the user data object, but the expanded object metadata is returned within the includes response object, and also includes the ID so that you can match this data object to the original Tweet object. At this time, the only expansion available to endpoints that primarily return user objects is expansions=pinned_tweet_id.
* tweet_fields - A comma separated list of Tweet fields to display. Available values: attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, public_metrics, organic_metrics, promoted_metrics, possibly_sensitive, referenced_tweets, reply_settings, source, text, withheld.

Output

* First Tweets Record - The first record returned.
* List of Tweets - The list of records.
