# Advanced Search in Entity Data

Entities contain a large amount of data which can be difficult to navigate and query.

The advanced search feature allows you to find any entity data, by querying any of the data fields.

## Roles

You need the Data Reader role to see and query entity data. See more details on how to Manage access.


## Searching for Data

# To use the Search in field:

1. Navigate to the Data tab of the desired entity in Data Service.
2. From the Search in: dropdown, select the entity fields you want to retrieve results from.The search algorithm looks up number and text data-type fields.
3. In the Search field, enter the search string. The grid displays the queried results.
4. To apply more filters on your results list, click Advanced Search. This opens the Advanced Search panel on the right-hand side.

# To use Advanced Search:

1. Select the operator:AND - to return the entries that match all conditionsOR - to return the entries that match any of the conditions
2. Define the conditions:Column - select the entity field to apply your condition to. Condition - select the condition. Value - enter the value for your condition. The value must be of the same type as the field type. For example, use strings for Text fields, use integers for Number fields.
3. Click Add to add as many conditions as you need.To remove a conditions, click the corresponding Delete icon.
4. Click Save to rerun the search. The page refreshes with the new results.


## Editing an Advanced Search Query

1. Click the Edit icon.
2. Add new conditions, remove or update existing conditions.
3. Click Save to rerun the search.

To clear the search results, click Basic search or Clear search.

Creating a new query removes the currently saved one.


## Sharing the Advanced Search Query

To share the query results with other Data Service users, click Copy link to Query.

The search query is user-specific, and other users can see the query results provided they have read permissions on the queried entity.Both the query and the query link are persisted across sessions after a Copy link to Query operation has been used.

