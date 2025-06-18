# Get Message Template by Name

Returns message templates, filtered by name.

### API Endpoint

GET/api/MessageTemplate


### Scopes

Requires the following scopes:

* PM.MessageTemplate
* PM.MessageTemplate.Read


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'


### Query Parameters

| Param | Data type | Description |
| --- --- ---| name | String | The name of the message template. |


### Responses

# 200 OK

Returns the message templates filtered by their names.

{
  "id": 0,
  "name": "string",
  "value": "string"
}

