# Update User Password

Updates the password for the specified users.

### API Endpoint

POST/api/User/{userId}/changepassword


### Scopes

Requires the following scopes:

* PM.User
* PM.User.Write


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| userId(required) | String | The ID of the user you want to update the password for. |


### Request Body

The request body contains the organization ID to which to want to add the user, and, optionally, the groups you want to assign to add your user to.

{
  "oldPassword": "string",
  "newPassword": "string"
}


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {userId} is: har-3107

The call should resemble the following example (cURL):

curl --location --request POST '/{organizationName}/{tenantName}/identity_/api/User/har-3107/changepassword' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json'
--data-raw '{
  "oldPassword": "al0h0m0ra-account",
  "newPassword": "patr0nu5"
}'

Here is the response for a successful call:

{
    "succeeded": true,
    "errors": []
}

