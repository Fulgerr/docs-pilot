# Query Entity Records

Queries Entity's records.

## API Endpoint

BaseURL/EntityService/<Entity>/query

* BaseURL:


## Request Headers

| Header | Value |
| --- ---| Authorization | Bearer <access_token> |
| Content-Type | application/json |

Replace all the values between the angle brackets <...> with their corresponding use-case values.The <access_token> is the one you received when you authorized the external application. It is available for 1 hour, then you need to generate a new one, or request a refresh token.


## Query Parameters

| Query Parameter | Data Type | Description | Default Value |
| --- --- --- ---| expansionLevel (Optional) | int32 | Specifies the depth of the related records to be retrieved. The value of this parameter can be 1, 2, or 3. | 2 |


## Request Body (Required)

{
  "selectedFields": [
    "string"
  ],
  "filterGroup": {
    "logicalOperator": 0,
    "queryFilters": [
      {
        "fieldName": "string",
        "operator": "string",
        "value": "string"
      }
    ],
    "filterGroups": [
      null
    ]
  },
  "start": 0,
  "limit": 0,
  "sortOptions": [
    {
      "fieldName": "string",
      "isDescending": true
    }
  ]
}


### Request Body Schemas

The query endpoint request body has the following components:

# selectedFields

This is an optional component, of type string. It specifies the list of the fields to be returned for each record of the query. If left empty, or if the query list is empty, all the record fields are returned. Default value is null.

# filterGroup

This is a required component, that helps you set the filtering properties for the query. It combines the following properties:

* logicalOperator - This is an optional filterGroup property, of type int32. It specifies if all the filters and filter groups apply to the query. Use 0 to apply all the filters and filter groups. Use 1 to apply any of the filters and filter groups. Default value is 0.
* queryFilter - This is a required filterGroup property, that helps you define the filtering expression. It has the following properties:queryFilter PropertyData TypeDescriptionfieldNamestringSpecifies the name of the field that is to be filtered.operatorstringSpecifies the filter operator. Supports the following:contains, not contains, startswith, endswith, =, !=, >, <,>=, <=, in, not in. Use the adequate operator for the corresponding field type.valuestringSpecifies the filtering value.
* filterGroups - This is an optional filterGroup property, in case you need to set another filtering option to the query. It contains all the filterGroup properties listed above.

# start

This is an optional component, of type int32. Specifies the number of records to skip before retrieving the records from the query. Can be used together with the limit property to implement pagination. The records are ordered ascendingly by their IDs. To modify the sort order, use the sortOptions property. Default value is 0.

# limit

This is an optional component, of type int32. It specifies the maximum number of records to be read from the entity. Can be used together with the start property to implement pagination. The default value is 100, and the maximum value is 1000.

# sortOptions

This is an optional component, that helps you sort the queried records by a list of fields. If left empty, the records are sort ascendingly by their IDs. It combines the following properties:

* fieldName - This is a required sortOptions property, of type string. It specifies the name of the field used to sort the records. The name must correspond to a valid field, and it is case-sensitive.
* isDescending - This is an optional sortOptions property, of type boolean. Set it to true if you want to sort the records descendingly. The default value is false.


## Responses

# 200 OK

{
  "TotalRecordCount": 0,
  "Value": [
    {
      "ClosingDate": "2021-03-04",
      "CreatedBy": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "CreateTime": "2021-03-04T10:21:22.771Z",
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
      "UpdateTime": "2021-03-04T10:21:22.771Z"
    }
  ]
}

# Response Body Schema

The query endpoint response body has the following components:

* totalRecordCount - The total number of records matching the specified query filters.
* value - An array of entity records matching the specified query filters, limited by limit property.



# 401 Unauthorized

You are not authenticated to access Data Service. Make sure your Assistant or Robot is connected to a modern folder in your account.

# 403 Forbidden

You don't have permission to access the entity, field or record or you are using an unsupported robot type. Please contact your administrator for necessary permissions.

