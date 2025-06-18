# Create a New Robot Account

Creates a new robot account in the specified organization ID, and assigns it to the indicated groups.

### API Endpoint

POST/api/RobotAccount


### Scopes

Requires the following scopes:

* PM.RobotAccount
* PM.RobotAccount.Write


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Request Body

The request body contains the organization ID to which to want to add the group to, and, optionally, the users you want to add as members in the new group.

{
  "partitionGlobalId": "string",
  "id": "string",
  "name": "string",
  "groupIDsToAdd": [
    "string", "string"
  ]
}


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {partitionGlobalId} is: magic-7
* You want to name the group: "Gryffindors"
* You want to add users Ron, Harry, and Hermione to the group. These users have the following user IDs: Ron user identifier: ron-0103Harry user identifier: har-3107Hermione user identifier: her-1909

The call should resemble the following example (cURL):

curl --location --request POST '/{organizationName}/{tenantName}/identity_/api/Group' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json'
--data-raw '{
    "name": "Roby",
    "displayName": "Roby",
    "partitionGlobalId": "magic-7",
    "groupIDsToAdd": [
        "gryff-01"
    ],
    "groupIDsToRemove": []
}'

Here is the response for a successful call:

{
    "id": "rb-12",
    "name": "Roby",
    "displayName": "Roby",
    "creationTime": "2021-10-20T15:20:29.1302044Z",
    "lastLoginTime": null,
    "groupIds": ["gryff-01"]
}

