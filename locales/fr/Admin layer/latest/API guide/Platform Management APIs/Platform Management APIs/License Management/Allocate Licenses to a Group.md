# Allocate Licenses to a Group

As an organization admin, use this endpoint to allocate licenses to a group. To do that, you need
      to create an external application, with the scope PM.License.Write.

Find out how to create an external application.

Find out how to create an external application.

Find out how to create an external application.

### API Endpoint

PUT/{organizationName}/lease_/api/account/{accountId}/user-license/group/{groupId}


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through the ROPC method described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| accountId(required) | String | The ID of the organization in which your tenant resides. |
| groupId(required) | String | The ID of the group you want to allocate licenses to.You can retrieve this ID by following these steps. |


### Request Body

The request body contains the array of license codes for various products and their corresponding quantity.

{
    "userBundleCodes": ["string"]
}

To see the available user bundle codes you may
                    use in the request body, check out the user license codes.You may allocate as many licenses as the
                    organization has purchased.


### Responses

# 200 OK

Returns the allocated group licenses.

# 404

No account license is allocated for the indicated organization.

# 409

The license allocation is not allowed because it exceeds the account license quantities.


### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: https://cloud.uipath.com/{organizationName} .
* Your {access_token} is: 1234 (for length considerations).
* The {accountId} of the tenant that needs license allocation is: song-one
* The {groupId} is: group-01 .
* You want to allocate user licenses to the group as follows: Automation Developers - Named user (the license code is RPADEVPRONU) Insights Designer (the license code is IDU) Citizen Developer - Multiuser (the license code is CTZDEVCU)

The call should resemble the following example (cURL):

curl --location --request POST 'https://https://cloud.uipath.com/{organizationName}/lease_/api/account/1234/user-license/group/group-01' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
    "userBundleCodes": ["RPADEVPRONU", "IDU", "CTZDEVCU"], 
    "useExternalLicense": false
}'

Here's the response body for a successful license allocation:

{
  "groupId": "string",
  "organizationId": "string",
  "useExternalLicense": false,
  "userBundleCodes": [
    "string"
  ]
}

