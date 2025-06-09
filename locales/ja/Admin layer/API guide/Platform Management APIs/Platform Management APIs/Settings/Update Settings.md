# Update Settings

As a host or organization administrator, use this endpoint to update existing settings or create new settings for a the specified organization and/or user ID.

### API Endpoint

PUT/identity_/api/Setting


### Scopes

Requires the following scopes:

* PM.Setting
* PM.Setting.Write


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Request Body

The request body contains the organization ID and the setting keys you want to update.

{
  "settings": [
    {
      "key": "string",
      "value": "string"
    }
  ],
  "partitionGlobalId": "string",
  "userId": "string"
}


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {partitionGlobalId} is: magic-7
* You want to update the authentication settings, so you log in as a host admin.

The call should resemble the following example (cURL):

curl --location --request PUT '/{organizationName}/{tenantName}/identity_/api/Setting' \)\)
--header 'Authorization: Bearer 1234' \)\)
--header 'Content-Type: application/json'
--data-raw '
{
    "settings": [
        {
            "key": "Auth.Password.DefaultExpirationDays",
            "value": "0"
        },
        {
            "key": "Auth.Password.PasswordComplexity",
             "value": "{\"hasSpecialCharacter\":false,\"hasLowercase\":true,\"hasUppercase\":false,\"hasDigit\":true,\"Length\":\"10\"}" 
        },
        {
            "key": "Auth.Password.PreviousUseLimit",
            "value": "1"
        },
        {
            "key": "Auth.Password.ShouldChangePasswordAfterFirstLogin",
            "value": "true"
        },
        {
            "key": "Auth.UserLockOut.DefaultAccountLockoutSeconds",
            "value": "0"
        },
        {
            "key": "Auth.UserLockOut.IsEnabled",
            "value": "false"
        },
        {
            "key": "Auth.UserLockOut.MaxFailedAccessAttemptsBeforeLockout",
            "value": "2"
        }
    ],
    "partitionGlobalId": "magic-7"
}'

Here is the response for a successful call:

[
    {
        "id": 4,
        "key": "Auth.Password.DefaultExpirationDays",
        "value": "0",
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 1,
        "key": "Auth.Password.PasswordComplexity",
        "value": "{\"HasDigit\":true,\"HasLowercase\":true,\"HasSpecialCharacter\":false,\"HasUppercase\":false,\"Length\":10,\"RegexComplexity\":{\"HasDigitRegex\":\"(?=.*\\\\d)\",\"HasLowercaseRegex\":\"(?=.*[a-z])\",\"HasSpecialCharacterRegex\":\"(?=.*[^a-zA-Z\\\\d])\",\"HasUppercaseRegex\":\"(?=.*[A-Z])\",\"LengthRegex\":\"{10,}\",\"Regex\":\"(?=.*\\\\d)(?=.*[a-z]).{10,}\"}}", 
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 3,
        "key": "Auth.Password.PreviousUseLimit",
        "value": "1",
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 2,
        "key": "Auth.Password.ShouldChangePasswordAfterFirstLogin",
        "value": "true",
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 26,
        "key": "Auth.UserLockOut.DefaultAccountLockoutSeconds",
        "value": "0",
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 27,
        "key": "Auth.UserLockOut.IsEnabled",
        "value": "false",
        "partitionGlobalId": "magic-7",
        "userId": null
    },
    {
        "id": 28,
        "key": "Auth.UserLockOut.MaxFailedAccessAttemptsBeforeLockout",
        "value": "2",
        "partitionGlobalId": "magic-7",
        "userId": null
    }
]

