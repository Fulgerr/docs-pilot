# List All Records

UiPath.MicrosoftDynamicsCRM.IntegrationService.Activities.ListAllRecords

# Description

Lists all records in Microsoft Dynamics CRM.

For more information on working with List activities, access our guide on Using the WHERE property in LIST activities.

# Project compatibility

Windows | Cross-platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down menu to choose, add, or manage connections.
* Select object - Select an object from the dropdown menu and configure the listed properties. Use Manage Properties to select additional fields for the current activity.

The CEQL (“Where” filter) provides a standard way to search across all the connectors. Many API providers support some form of searching in their APIs but each one approaches searching differently. Rather than having you research how to query each resource at a provider, we've normalized your search experience. It translates your queries to the API provider's search syntax. You compose queries with available query connector fields selections. Each connector allows for different components of the query, but in most situations you can use some common parts.Query ReferenceQuery ComponentSyntaxExampleDescriptionCEQL querythe "where" expression<field><operator><value> <AND/OR> <field><operator><value> ...Department!='Procurement' AND Name='John'The expression or expressions specifying what to search and what objects to return in our result set. Refer Valid CEQL Operators section below.This is made up of a left­ hand ­side (LHS), an operator and a right­ hand­ side (RHS).Valid CEQL OperatorsOperatorDescriptionsANDTRUE if all the conditions separated by AND is TRUEORTRUE if any of the conditions separated by OR is TRUE=Equal to!=Not equal to<Less than>Greater than<=Less than or equal to>=Greater than or equal toLIKETRUE if the operand matches a patternINTRUE if the operand is equal to one of a list of expressionsIS NULLTRUE if a NULL value is foundLIMITLimit the number of records to the specified numberExamplesOperatorExampleEqual Operator (=)Name='Edge Communications'AND OperatorName=’Account Name’ AND Industry=’Electronics’OR and Greater Than (>) OperatorsLastModifiedDate>'2018-01-15T00:00:00.000Z' AND (Name='Account Name' OR
                    Industry='Apparel')LIKE OperatorName LIKE 'Acc%'Greater Than or Equal To (>=) OperatorAnnualRevenue >= 100000
