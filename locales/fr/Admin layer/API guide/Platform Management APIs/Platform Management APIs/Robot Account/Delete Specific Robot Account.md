# Delete Specific Robot Account

Deletes the specified robot account in an organization, based on the organization and robot account ID.

### API Endpoint

DELETE/api/RobotAccount/{partitionGlobalId}/{robotAccountId}


### Scopes

Requires the following scopes:

* PM.RobotAccount
* PM.RobotAccount.Write


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| partitionGlobalId(required) | String | The ID of the organization you want to delete the robot accounts from. |
| robotAccountId(required) | String | The ID of the robot account you want to delete. |


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {partitionGlobalId} is: magic-7
* The {robotAccountId} is: 33-ab

The call should resemble the following example (cURL):

curl --location --request DELETE '/{organizationName}/{tenantName}/identity_/api/RobotAccount/magic-7/33-ab' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json'

