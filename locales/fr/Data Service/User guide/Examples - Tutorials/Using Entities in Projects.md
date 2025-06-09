# Using Entities in Projects

By using entities created in Data Service, you can manage and manipulate data aggregated in a single object, without having to work with it in a granular way. To do so you need Studio v2020.8 or later.

The following example retrieves data about Olympics games and medals for the top 10 countries for each category of games, together with the medals they won.

Download example

## Entities in Data Service

Following the steps detailed on the Creating an Entity page, we created an entity for storing information about participating nations, the opening and closing dates, and the medals they won.

The Olympics entity has the following fields: Name, Nations, Opening, and Closing Dates. The Medals entity has the following fields: Country, Gold, Silver, Bronze, and the total number of medals. The two entities are linked to each other with the Relationship tag.

![1607961-relation=GUID-A14D0C8B-D10D-4826-BEAE-2059763616F5=1=en=Default](/images/1607961-relation=GUID-A14D0C8B-D10D-4826-BEAE-2059763616F5=1=en=Default.png)


## Entities Imported in Studio

Import the entity inside your workflow in Studio.

The following workflow scrapes information about a certain Olympics edition, maps data to arguments, and passes them along to the main workflow.

![0192c4e-main_outEntities=GUID-0F2F8D05-0B97-4827-AFB4-EFCBB24514F5=1=en=Default](/images/0192c4e-main_outEntities=GUID-0F2F8D05-0B97-4827-AFB4-EFCBB24514F5=1=en=Default.png)

To do so we defined an argument for each type of information that we are collecting, thus resulting in 5 imported arguments.

![5f87fd0-no_entities=GUID-1B8AB35B-8FE8-4309-901B-B21E4895DE72=1=en=Default](/images/5f87fd0-no_entities=GUID-1B8AB35B-8FE8-4309-901B-B21E4895DE72=1=en=Default.png)

With the use of entities, we only need to import and work with two arguments to collect the data.

Entities must be initialized using the New Operator, read from Data Service or passed through an input argument in a workflow before usage, otherwise assigning or reading their values can cause errors.

![2e0cfa8-entities_invoked=GUID-03F2EDA2-0F8C-42CE-B322-AD359DE89E45=1=en=Default](/images/2e0cfa8-entities_invoked=GUID-03F2EDA2-0F8C-42CE-B322-AD359DE89E45=1=en=Default.png)

The collected data is mapped to the two arguments inOlympics Year and outOlympics and their respective properties, the same as the fields defined in the entity. By using entities we're reduced the number of arguments needed for passing along information by properly mapping data to their respective entity fields.


## Create Data Records

Once the data was collected, you can use the Create Entity Record activity to add the information to Data Service.

In this example, we used the imported arguments to pass the collected information to Data Service. The Input and Output records are the values of variables of type Olympics used for passing along the data.

![2c1c599-create_entity=GUID-BB045D8E-E662-4E29-84E5-EEB7047B5E69=1=en=Default](/images/2c1c599-create_entity=GUID-BB045D8E-E662-4E29-84E5-EEB7047B5E69=1=en=Default.png)

After running the project, the following record was created in Data Service:

![440b646-created=GUID-21899B89-F2F5-4D00-B52A-E246C433EA65=1=en=Default](/images/440b646-created=GUID-21899B89-F2F5-4D00-B52A-E246C433EA65=1=en=Default.png)


### Create Records With Structured Data

Records structured in a data table can be passed along to Data Service using the For Each Row activity. In this example, we're invoking a workflow that collects structured data on the number of medals won by each country and passes these records along to Data Service.

![b451d85-data_table=GUID-A3C07DC0-3BA9-4DB0-B9D2-E2FB016D856F=1=en=Default](/images/b451d85-data_table=GUID-A3C07DC0-3BA9-4DB0-B9D2-E2FB016D856F=1=en=Default.png)

After running the workflow, the following data is stored in Data Service:

![78b2ef9-medals=GUID-C40DF163-3AF7-4984-AF60-B01E480EE3A7=1=en=Default](/images/78b2ef9-medals=GUID-C40DF163-3AF7-4984-AF60-B01E480EE3A7=1=en=Default.png)

The relationship set between the Olympics and Medals entities allows us to use the data record from one in the other. For example, the value of the Olympics field inside the Medal entity is the same as in the related entity.


## Query Related Records

The Query Entity Records activity can be used to pull up a list of records from Data Service. In the following example, we use the activity to query data records from the Olympics entity, allow the user to choose an Olympics edition, and from the Medals entity write the number of medals that each participating country won.

![2ee2593-query=GUID-DDBF2FE6-8375-4306-BF09-9A3FFF0C7DF4=1=en=Default](/images/2ee2593-query=GUID-DDBF2FE6-8375-4306-BF09-9A3FFF0C7DF4=1=en=Default.gif)

For querying the Olympics table, we've used the Name != NULL condition from the Query Builder. This goes through all records from the Name column and outputs them in the listOlympics variable to be used in the Input Dialog activity.

To show the list of records as options, we've used the following Lambda expressionlistOlympics.Select(Function (o as Olympics) o.Name).ToArray in the Input Dialog activity. Alternatively, the For Each activity can be used.

The selection is mapped to the selectedOlympics variable and used in another Query Entity Records activity for going through the list of medals won at that specific edition. This condition was set by using the equals option in the Query Builder.

![c601e5e-query_condition=GUID-AA10FD60-43EE-444B-BF21-411413D69F50=1=en=Default](/images/c601e5e-query_condition=GUID-AA10FD60-43EE-444B-BF21-411413D69F50=1=en=Default.png)

The query can be performed on the selected entity, and on related entity records as well.


### Pagination

Data services can potentially store a large number of records. To query only a certain number of records, use the Pagination properties from the Query Entities Records activity. The Top property supports a maximum number of 1,000, this means that 1,000 records can be queried at a time.

This example queries the first five records, and then the next five records until the last records on the list are grabbed.

![77ad7dc-pagination=GUID-F7248066-56DF-4151-B83A-17CAC657DBC4=1=en=Default](/images/77ad7dc-pagination=GUID-F7248066-56DF-4151-B83A-17CAC657DBC4=1=en=Default.png)

To perform this, the skip Int64 variable was assigned the initial value of 0, and then its value is incremented after each loop until the last record is grabbed.

![98f6081-skip=GUID-BE101BCD-6AF6-459F-B97A-5F3CDA88A10C=1=en=Default](/images/98f6081-skip=GUID-BE101BCD-6AF6-459F-B97A-5F3CDA88A10C=1=en=Default.png)

After the first five medals are grabbed, the For Each activity is used for writing the participating countries and the number of medals they won to the Notepad file.


## Update Entity Schema

The following scenario explains the steps for updating an entity schema in Data Service and then syncing the data with Studio.

In Data Service, go to the Medals entity, click Create New Field, and add a new column HostCountry of type Yes/No. Click Save.

![0c955cf-update=GUID-958884C0-A565-48A8-A078-5584992C8AA4=1=en=Default](/images/0c955cf-update=GUID-958884C0-A565-48A8-A078-5584992C8AA4=1=en=Default.png)

In Studio, click on Manage Entities, and then the Refresh button. A change was detected for the Medals entity, as illustrated in the Changes column. Click Save and the entity is updated in Studio.

![b4b5a67-update=GUID-C619BE51-962E-4E46-A264-586784B7DC15=1=en=Default](/images/b4b5a67-update=GUID-C619BE51-962E-4E46-A264-586784B7DC15=1=en=Default.gif)


## Query and Update Records

The Update Entity Record activity can be used for updating records from your workflow directly into Data Service.

In this example, we're querying certain records from the Medals entity and updating them automatically using the aforementioned activity.

In the Medals entity, the hosting country of each edition is marked with an asterisk next to its name. For example, for the 2012 edition, the hosting country is recorded as Great Britain (GBR)* in the Olympics column.

![5f2e984-update2=GUID-FB5FAAEE-832F-4F54-9022-708E0EF55134=1=en=Default](/images/5f2e984-update2=GUID-FB5FAAEE-832F-4F54-9022-708E0EF55134=1=en=Default.png)

Using the Query Entity Records activity, we go through all records that contain the asterisk (*), grab the records in the listMedals variable and use the For Each activity to loop through each item and assign the True value in the HostCountry column next to the country that hosted a particular edition.

The Update Entity Record activity can be used in numerous other scenarios for passing along data and updating records in Data Service.

