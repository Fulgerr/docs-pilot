# Allocate Licenses to an Organization

As a host admin, you can use endpoint to allocate licenses to an organization, based on the organization ID.

To allocate licenses to organizations and tenants, you need to authenticate using the host credentials.

### API Endpoint

PUT/lrm/api/host/{hostAccountID}/organization/{organizationId}/license


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through the ROPC method described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| hostAccountID(required) | String | The ID of the host account that allocates the licenses.Always use the default value: feb0dd79-85b6-483b-b297-0e49a1aa5b7d |
| organizationId(required) | String | The ID of the organization you want to allocate licenses to. |


### Request Body

The request body contains the array of license codes for various products and their corresponding quantity.

{
    "productQuantities": 
        [
          { "code": "string", "quantity": 0 } 
        ]
}

To see the available license codes you may use in
          the request body, check out License codes.You may allocate as many licenses as the
          organization has purchased.


### Responses

# 200 OK

Returns the allocated licenses.

# 404

The host license does not exist or the feature flag for on-premise flows is off.

# 409

The license allocation is not allowed because it exceeds the host license quantities.


### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: https://tom-jones-server.com
* Your {access_token} is: 1234 (for length considerations).
* Your {hostAccountId} is: j0ne5
* The {organizationId} that needs license allocation is: y-y-y-delilah
* You want to allocate product licenses to the organization as follows: 2 Unattended Robots (the license code is UNATT) 1 AI Center Pro license (the license code is AIG) 3 Testing licenses (the license code is TAUNATT)

The call should resemble the following example (cURL):

curl --location --request POST 'https://tom-jones-server.com/lrm/api/host/j0ne5/organization/y-y-y-delilah/license' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
    "productQuantities": 
        [
          { "code": "UNATT", "quantity": 2 },
          { "code": "AIG", "quantity": 1 },
          { "code": "TAUNATT", "quantity": 3 }      
        ]
}'

Here's the response body for a successful license allocation:

{
  "accountId": "y-y-y-delilah",
  "bundleCode": "string",
  "endDate": 0,
  "gracePeriod": 0,
  "licenseCode": "string",
  "licenseStatus": "string",
  "products": [
    {
      "code": "string",
      "quantity": 0,
      "type": "string",
      "features": [
        {
          "code": "string",
          "type": "string",
          "value": "string"
        }
      ]
    }
  ],
  "templates": [
    {
      "productCode": "string",
      "products": [
        {
          "code": "string",
          "type": "string"
        }
      ]
    }
  ],
  "startDate": 0,
  "subscriptionCode": "string",
  "subscriptionPlan": "string",
  "payload": "string",
  "type": "string",
  "parentLicenseCode": "string"
}

