# Allocate Licenses to a User

As an organization admin, use this endpoint to allocate licenses to a user, based on the user ID.

### API Endpoint

PUT/lease_/api/account/{accountId}/user-license


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through the ROPC method described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| accountId(required) | String | The ID of the organization in which your user resides. |


### Request Body

The request body contains the array of license codes for various products and their corresponding quantity.

{
  "userIds": ["string"],
  "userBundleCodes": ["string"],
  "useExternalLicense": true
}

To see the available user bundle codes you may
          use in the request body, check out the user license codes.You may allocate as many licenses as the
          organization has purchased.Each user consumes a license unit.


### Responses

# 200 OK

Returns the allocated group licenses.

# 404

No account license is allocated for the indicated organization.

# 409

The license allocation is not allowed because it exceeds the account license quantities.


### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: https://{yourDomain}//{organizationName} .
* Your {access_token} is: 1234 (for length considerations).
* The {accountId} of the tenant that needs license allocation is: song-one
* You have three users that need licenses: User 1 with the userId=singer-77User 2 with the userId=singer-88User 3 with the userId=singer-111
* You want to allocate the following user licences: RPA Developer - Named user (the license code is RPADEVNU) Attended - Named user (the license code is ATTUNU) Tester - Named user (the license code is TSTNU)

The call should resemble the following example (cURL):

curl --location --request POST 'https://https://{yourDomain}/{organizationName}/lease_/api/account/1234/user-license' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
        "userIds": ["singer-77", "singer-88", "singer-111"]
    "userBundleCodes": ["RPADEVNU", "ATTUNU", "TSTNU"], 
    "useExternalLicense": true
}

Here's the response body for a successful license allocation:

[
  {
    "userId": "string",
    "organizationId": "string",
    "useExternalLicense": true,
    "userBundleCodes": [
      "string"
    ]
  }
]

