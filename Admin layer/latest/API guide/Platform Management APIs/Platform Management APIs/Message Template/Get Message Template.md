# Get Message Template

Returns a message template, based on the template ID.

### API Endpoint

GET/api/MessageTemplate/{templateId}


### Scopes

Requires the following scopes:

* PM.MessageTemplate
* PM.MessageTemplate.Read


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| templateId(required) | String | The ID of message template you want to retrieve. |


### Responses

# 200 OK

Returns the message template information, such as message ID, the message title, and the content.

{
  "id": 0,
  "name": "string",
  "value": "string"
}

