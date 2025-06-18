# Allocate Licenses to a Tenant

As a host admin, use this endpoint to allocate licenses to a tenant, based on the tenant ID.

To allocate licenses to organizations and tenants, you need to authenticate using the host credentials.

### API Endpoint

PUT/lrm/api/account/{accountId}/service-license/{serviceScopeId}/{serviceType}

To allocate licenses to every enabled service of the tenant, you need to make a separate API call for each service.


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through the ROPC method described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| accountId(required) | String | The ID of the organization in which your tenant resides. |
| serviceScopeId(required) | String | The ID of the tenant you want to allocate licenses to. |
| serviceType(required) | String | The service type. |


### Request Body

The request body contains the array of license codes for various products and their corresponding quantity.

{
      "tenantName": "string",
      "products": 
        [
          { "code": "string", "quantity": 0 } 
        ]
    }

To see the available license codes you may use in
                    the request body, check out License codes.You may allocate as many licenses as the
                    organization has purchased.


### Responses

# 200 OK

Returns the allocated service licenses.

{
  "accountId": "string",
  "serviceScopeId": "string",
  "serviceType": "string",
  "license": {
    "licenseCode": "string",
    "bundleCode": "string",
    "subscriptionCode": "string",
    "licenseStatus": "string",
    "startDate": 0,
    "endDate": 0,
    "gracePeriod": 0,
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
    "payload": "string",
    "boonLicenseCode": "string"
  },
  "userLicensingEnabled": true,
  "accountLicenseCode": "string"
}

# 404

No account license is allocated for the indicated organization.

# 409

The license allocation is not allowed because it exceeds the account license quantities.


### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: https://tom-jones-server.com
* Your {access_token} is: 1234 (for length considerations).
* The {accountId} of the tenant that needs license allocation is: y-y-y-delilah
* The {serviceScopeId} is: y1968 . The tenant has the Document Understand service enabled.
* You want to allocate product licenses to the organization as follows: 5 Unattended Robots (the license code is UNATT) 4 NonProduction Robots (the license code is NONPR) 2 Document Understanding licenses (the license code is TIE)

The call should resemble the following example (cURL):

curl --location --request POST 'https://tom-jones-server.com/lrm/api/account/y-y-y-delilah/service-license/y1968/?????' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json' \
--data-raw '{
    "productQuantities": 
        [
          { "code": "UNATT", "quantity": 5 },
          { "code": "NONPR", "quantity": 4 },
          { "code": "TIE", "quantity": 2 }      
        ]
}'

Here's the response body for a successful license allocation:

{
  "accountId": "y-y-y-delilah",
  "serviceScopeId": "y1968",
  "serviceType": "string",
  "license": {
    "licenseCode": "string",
    "bundleCode": "string",
    "subscriptionCode": "string",
    "licenseStatus": "string",
    "startDate": 0,
    "endDate": 0,
    "gracePeriod": 0,
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
    "payload": "string",
    "boonLicenseCode": "string"
  },
  "userLicensingEnabled": true,
  "accountLicenseCode": "string"
}

