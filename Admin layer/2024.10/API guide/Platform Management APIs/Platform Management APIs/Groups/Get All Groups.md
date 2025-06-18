# Get All Groups

Returns all local and built-in groups from an organization, based on the organization ID.

### API Endpoint

GET/api/Group/{partitionGlobalId}


### Scopes

Requires the following scopes:

* PM.Group
* PM.Group.Read


### Request Headers

--header 'Authorization: Bearer {access_token}'\
--header 'Content-Type: application/json'

To obtain the {access_token}, make sure to authenticate through one of the methods described here.


### Path Parameters

| Path param | Data type | Description |
| --- --- ---| partitionGlobalId(required) | String | The ID of the organization you want to retrieve the groups for. |


### Responses




### Example Request

Let's say you gathered all the information needed to build the API call.

* Your {baseURL} is: /{organizationName}/{tenantName}/
* Your {access_token} is: 1234 (for length considerations).
* The {partitionGlobalId} is: magic-7

The call should resemble the following example (cURL):

curl --location --request GET '/{organizationName}/identity/api/Group/magic-7' \
--header 'Authorization: Bearer 1234' \
--header 'Content-Type: application/json'

Here's the response body for a successful call:

[
    {
        "id": "ce684f6f-5af3-4e43-8516-1adad6e98fc9",
        "name": "Everyone",
        "displayName": "Everyone",
        "type": 0,
        "creationTime": "2021-10-13T18:37:26.6025799",
        "lastModificationTime": "2021-10-13T18:37:26.6025799",
        "members": []
    },
    {
        "id": "35551807-06b1-4cda-90a1-2fb84851eee7",
        "name": "Administrators",
        "displayName": "Administrators",
        "type": 0,
        "creationTime": "2021-10-13T18:37:26.602463",
        "lastModificationTime": "2021-10-13T18:37:26.6024632",
        "members": []
    },
    {
        "id": "9577fe24-a113-4f53-a1b5-8acbcd803c39",
        "name": "DaniC",
        "displayName": "DaniC",
        "type": 1,
        "creationTime": "2021-10-14T18:17:14.0952117",
        "lastModificationTime": "2021-10-14T18:17:28.6967052",
        "members": [
         {
            "objectType": "DirectoryUser",
            "firstName": "Hermione",
            "lastName": "Granger",
            "jobTitle": null,
            "companyName": null,
            "city": null,
            "department": null,
            "displayName": "Hermione Granger",
            "source": "local",
            "identifier": "ce07aff0-79fc-4f4f-af38-299880191695",
            "name": "Hermione",
            "email": "hermione@hogwarts.com"
        },
        {
            "objectType": "DirectoryUser",
            "firstName": "Harry",
            "lastName": "Potter",
            "jobTitle": null,
            "companyName": null,
            "city": null,
            "department": null,
            "displayName": "Harry Potter",
            "source": "local",
            "identifier": "ea23b7d6-c7bc-4fc2-9ec9-4613e3365d8a",
            "name": "Harry",
            "email": "harry@hogwarts.com"
        },
        {
            "objectType": "DirectoryUser",
            "firstName": "Ron",
            "lastName": "Weasley",
            "jobTitle": null,
            "companyName": null,
            "city": null,
            "department": null,
            "displayName": "Ron Weasley",
            "source": "local",
            "identifier": "ecde4791-a7f3-4fd8-9fa7-b37511e4e019",
            "name": "Ron",
            "email": "ron@hogwarts.com"
        } 
      ]
    },
    {
        "id": "4d161738-7204-4794-b839-8f7fed28366c",
        "name": "Automation Developers",
        "displayName": "Automation Developers",
        "type": 0,
        "creationTime": "2021-10-13T18:37:26.6025676",
        "lastModificationTime": "2021-10-13T18:37:26.6025676",
        "members": []
    }
]

