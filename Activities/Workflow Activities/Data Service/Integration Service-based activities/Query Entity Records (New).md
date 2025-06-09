# Query Entity Records (New)

# Description

Lists records inside a specified Data Service entity.

This activity is equivalent to the activity of the same name from the pre 24.10 Data Service activities package.

# Project compatibility

Windows | Cross-platform

# Properties

Data Service connection - Select the Data Service connection you established in Integration Service. Access the dropdown menu to select, add, or manage connections.Select object - Select an object to use with this activity. This dropdown menu includes your Data Service entities. Depending on the object chosen in this field, the activity is populated with property fields specific to that object. This field supports TypeArgument for ImportedEntities type input.







Max records - Select the maximum number of records to return. This property supports values from 1 to 1000. This field supports Integer type input.Where - Provide the CEQL search expression, or the where clause, without the WHERE keyword, in a typical SQL query.
