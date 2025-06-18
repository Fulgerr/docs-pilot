# List All Incidents

UiPath.ServiceNow.IntegrationService.Activities.ListIncidents

# Description

Search for incidents based on criteria.

For more information on working with List activities, access our guide on Using the WHERE property in LIST activities.

# Project compatibility

Windows | Cross-platform

# Configuration

* Connection - The connection established in Integration Service. Access the dropdown menu to choose, add, or manage connections. This field supports String type input.
* where - Use the Filter builder widget to set filtering criteria.
* Max records - The maximum number of records to return. This field supports only integers or Int32 variables.

Advanced options

* Page size - The page size for pagination, which defaults to 200 if not supplied. This field supports only integers or Int32 variables.

Output

* First curated incident record - The first record returned. This field supports only Curated_incident variables.
* List of curated incidents - The list of curated incidents. This field supports only strings or Curated_incident[] variables.ServiceNow is a Dynamic API, meaning that custom tables and fields can be added and standard tables and fields can be removed and/or renamed. Any curation done on these APIs, therefore, will only work with standard implementations of ServiceNow. If, for instance, you've changed the incident table name and altered the fields in terms of names and/or added new required fields, you'll need to use the generic activities (Get Record, List All Records, Insert Record, Update Record, Delete Record) to interact successfully with your instance of ServiceNow.Reach out to your ServiceNow administrator to determine what's necessary to interact with the resources for your use case.
