# Create a New Local Group

Creates a new local group in the specified organization ID, and adds the indicated users to it.

### API Endpoint

POST/api/Group


### Scopes

Requires the following scopes:

* PM.Group
* PM.Group.Write


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
  "directoryUserMemberIDs": [
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
    "partitionGlobalId":"magic-7",
    "name":"Gryffindors",
    "id": "gryff-01",
    "directoryUserMemberIDs":
    ["ron-0103", "har-3107", "her-1909"]
}'

Here is the response for a successful call:

{
    "id": "gryff-01",
    "name": "Gryffindors",
    "displayName": "Gryffindors",
    "type": 1,
    "creationTime": "2021-10-19T15:37:49.1853184",
    "lastModificationTime": null,
    "members": [
        {
            "objectType": "DirectoryUser",
            "firstName": "Hermione",
            "lastName": "Granger",
            "jobTitle": "student",
            "companyName": "Hogwarts",
            "city": "London",
            "department": "magic",
            "displayName": "Hermione Granger",
            "source": "local",
            "identifier": "her-1909",
            "name": "Hermione",
            "email": "hermione@hogwarts.com"
        },
        {
            "objectType": "DirectoryUser",
            "firstName": "Harry",
            "lastName": "Potter",
            "jobTitle": ""student"",
            "companyName": "Hogwarts",
            "city": "London",
            "department": "magic",
            "displayName": "Harry Potter",
            "source": "local",
            "identifier": "har-3107",
            "name": "Harry",
            "email": "harry@hogwarts.com"
        },
        {
            "objectType": "DirectoryUser",
            "firstName": "Ron",
            "lastName": "Weasley",
            "jobTitle": "student",
            "companyName": "Hogwarts",
            "city": "London",
            "department": "magic",
            "displayName": "Ron Weasley",
            "source": "local",
            "identifier": "ron-0103",
            "name": "Ron",
            "email": "ron@hogwarts.com"
        }
    ]
}

