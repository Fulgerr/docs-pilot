# Get Entity Record by Id

Retrieves a single Entity record by ID.

## API Endpoint

BaseURL/EntityService/<Entity>/read/{id}

* BaseURL:


## Request Headers

| Header | Value |
| --- ---| Authorization | Bearer <access_token> |

Replace all the values between the angle brackets <...> with their corresponding use-case values.The <access_token> is the one you received when you authorized the external application. It is available for 1 hour, then you need to generate a new one, or request a refresh token.


## Path Variables

| Path Variable | Data Type | Description | Default value |
| --- --- --- ---| id (Required) | string | The ID of the entity's record you want to retrieve from the Data Service. | NA |


## Query Parameters

| Query Parameter | Data Type | Description | Default Value |
| --- --- --- ---| expansionLevel (Optional) | int32 | Specifies the depth of the related records to be retrieved. The value of this parameter can be 1, 2, or 3. | 2 |


## Responses

# 200 OK

{
  "ClosingDate": "2021-03-04",
  "CreatedBy": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "CreateTime": "2021-03-04T10:20:24.485Z",
  "Id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "Logo": {
    "Name": "string",
    "Path": "string",
    "Size": 0,
    "Type": "string"
  },
  "Name": "string",
  "Nations": 0,
  "OlymipcsVersion": 0,
  "OpeningDate": "2021-03-04",
  "UpdatedBy": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "UpdateTime": "2021-03-04T10:20:24.485Z"
}

# 401 Unauthorized

You are not authenticated to access Data Service. Make sure your Assistant or Robot is connected to a modern folder in your account.

# 403 Forbidden

You don't have permission to access the entity, field, or record, or you are using an unsupported robot type. Please contact your administrator for the necessary permissions.

