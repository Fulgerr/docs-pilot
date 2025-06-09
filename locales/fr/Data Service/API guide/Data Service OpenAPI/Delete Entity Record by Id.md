# Delete Entity Record by Id

Deletes an existing Entity record.

## API Endpoint

BaseURL/EntityService/<Entity>/delete/{id}

* BaseURL:


## Request Headers

| Header | Value |
| --- ---| Authorization | Bearer <access_token> |

Replace all the values between the angle brackets <...> with their corresponding use-case values.The <access_token> is the one you received when you authorized the external application. It is available for 1 hour, then you need to generate a new one, or request a refresh token.


## Path Variables

| Path Variable | Data Type | Description | Default Value |
| --- --- --- ---| id (Required) | string | The ID of the entity's record you want to delete from the Data Service. | NA |


## Responses

# 200 OK

true

# 401 Unauthorized

You are not authenticated to access Data Service. Make sure your Assistant or Robot is connected to a modern folder in your account.

# 403 Forbidden

You don't have permission to access the entity, field or record or you are using an unsupported robot type. Please contact your administrator for necessary permissions.

