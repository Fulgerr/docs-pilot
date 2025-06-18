# Relationship

A Relationship field type is used to bind two entities. The field uses the one-to-many (1:M) cardinality to correlate a field from the related entity (1) with the host entity (M).

### Details

Below is an overview of the details that can be specified to define a Relationship field.


| Property | Description | Required | Default Value |
| --- --- --- ---| Related Entity | Enables you to select the entity to which you want to create a relationship. | Yes |  |
| Related Entity Display Field | Enables you to select the display field from the related entity to be shown in the user interface.The actual relationship between the entities is based on the Ids of entities. | Yes |  |
| Description | Enables you to enter a short text to describe the purpose of the Relationship field.The Description is  displayed in Fields tab. | No |  |


### Representation in UiPath® Studio

A Relationship field is imported as the related entity type in your
            project. You can access all the fields of the related entity as well.

