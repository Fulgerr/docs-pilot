# Get All Robot Accounts

Returns the list of all robot accounts from an organization, based on the organization ID.

### API Endpoint

GET/api/RobotAccount


### Scopes

Requires the following scopes:

* PM.RobotAccount
* PM.RobotAccount.Read


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| partitionGlobalId(required) | String | The ID of the organization you want to retrieve the robot accounts for. |


### Query Parameters

| Query param | Data type | Description |
| --- --- ---| searchTerm(optional) | String | The key you want to search the robot accounts after. |
| top(optional) | int32 | Display the top N robot accounts. |
| skip(optional) | int32 | Skip the top N robot accounts. |
| sortBy(optional) | int32 | Specify the DTO property used to sort audit entries by.For example, name, creationTime, id, etc. |
| sortOrder(optional) | int32 | Specify the sorting order.For example, ascending (asc) or descending (desc). |


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {partitionGlobalId} is: magic-7
* You set the following query params: searchTerm = bottop = 2, to display the top two entries skip = 2, to skip the first two entries sortBy = name, to sort the entries by their name sortOrder = asc, to sort the entries from the earliest entry to the latest one

The call should resemble the following example (cURL):

curl --location --request GET '/{organizationName}/{tenantName}/identity_/api/RobotAccount/magic-7?searchTerm=attended&top=2&skip=2&sortBy=name&sortOrder=asc' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json'

Here's the response body for a successful audit entries retrieval:

{
    "totalCount": 3,
    "results": [
        {
            "id": "55-ab",
            "name": "Bot5",
            "displayName": "Bot5",
            "creationTime": "2021-10-19T18:05:17.3465735",
            "lastLoginTime": null,
            "groupIds": [
                "group1",
                "group2",
                "group3"
            ]
        },
        {
            "id": "66-cd",
            "name": "Bot6",
            "displayName": "Bot6",
            "creationTime": "2021-10-19T18:06:00.3088553",
            "lastLoginTime": null,
            "groupIds": [
                "group1",
                "group3"
            ]
        },
        {
            "id": "77-ef",
            "name": "Bot7",
            "displayName": "Bot7",
            "creationTime": "2021-10-19T18:05:31.4736281",
            "lastLoginTime": null,
            "groupIds": [
                "group2"
            ]
        }
    ]
}

