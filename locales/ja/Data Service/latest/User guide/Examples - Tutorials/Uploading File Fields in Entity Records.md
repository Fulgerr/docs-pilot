# Uploading File Fields in Entity Records

Using Studio you can easily manipulate specific files of an entity record. These activities allow you to execute operations such as upload, download, or delete specified files of a specified field of an entity record.

The maximum size of a single file cannot exceed 10 MB, otherwise unexpected behavior might occur.

The following example contains a main XAML demonstrating how to upload a file to Data Service, after downloading it from Olympics games related Wikipedia pages.

Download example

## Prerequisite Step 1: Create Entities in Data Service

Following the steps detailed on the Creating an Entity page, we created an entity for storing information about the Olympic games.

The Olympics entity has the following fields: Name (text) and Logo (file).

System built-in fields are automatically added to your entity in order to provide details about its creation.

![2ded0c8-Screenshot_2=GUID-5E2F09BA-AD3D-4644-90C4-7EA3C133D231=1=en=Default](/images/2ded0c8-Screenshot_2=GUID-5E2F09BA-AD3D-4644-90C4-7EA3C133D231=1=en=Default.png)


## Prerequisite Step 2: Import the Entities in Studio

Import the entity inside your workflow in Studio.

The following workflow scrapes information and images about a certain Olympics edition, maps the found data to arguments, and passes them along to the main workflow.

![18d019f-72829aa-Main=GUID-1742C5A2-61E7-49FC-840B-91278ABBE91B=1=en=Default](/images/18d019f-72829aa-Main=GUID-1742C5A2-61E7-49FC-840B-91278ABBE91B=1=en=Default.jpg)


## Step 3: Build the Workflow




### Query Related Records

We'll use the Query Entity Records activity to pull up a list of records from the Olympics entity from Data Service by setting up the name variable. This goes through all records from the Name field and outputs them in the existingRecords variable to be used in the following If activity.

![8934c78-Screenshot_4=GUID-4EFC297B-912E-4714-81BC-9077D51AB5CC=1=en=Default](/images/8934c78-Screenshot_4=GUID-4EFC297B-912E-4714-81BC-9077D51AB5CC=1=en=Default.png)


### If

Add the If activity allows us to take one of the following two different courses of action, depending on whether the cont for the existingRecords variable is 0 or not:

![91305ca-Main=GUID-4FC81018-0E24-484C-ACB6-340F2E902EED=1=en=Default](/images/91305ca-Main=GUID-4FC81018-0E24-484C-ACB6-340F2E902EED=1=en=Default.jpg)

# 1. If a record does not exist, create it and assign values to it

If no records are found meaning that the existingRecords=0 condition is met, create a new Sequence, use the Multiple Assign activity to assign values to the olympics and olympics.Name variables and the Create Entity Record activity to add the collected information to Data Service.

You can use the information available in the Using Entities in Projects page Create Data Records section example.

![4544a9a-Screenshot_1=GUID-6039E879-2F4A-4FE5-95C6-7C2E42162149=1=en=Default](/images/4544a9a-Screenshot_1=GUID-6039E879-2F4A-4FE5-95C6-7C2E42162149=1=en=Default.png)

# 2. If a record already exists, assign values to it

If a record is found, meaning that the existingRecords=0 condition is not met, use the Assign or Multiple Assign activity to assign the value to the existingRecords variable.

![63bbcf9-Screenshot_2=GUID-5894BEDE-D3FF-4663-B1EB-EFE81512DE47=1=en=Default](/images/63bbcf9-Screenshot_2=GUID-5894BEDE-D3FF-4663-B1EB-EFE81512DE47=1=en=Default.png)


### Upload File to Record Field

We use the Upload File to Record Field activity and upload the created file to the Logo field from the Olympics entity record.

![c5232ff-Screenshot_3=GUID-E8C85295-87DE-46D2-A78E-3604F7E17757=1=en=Default](/images/c5232ff-Screenshot_3=GUID-E8C85295-87DE-46D2-A78E-3604F7E17757=1=en=Default.png)


### Delete the Local File

Remove the file that was downloaded locally from Wikipedia to our machine after uploading it to Data Service by using the Delete activity.

![426eb5e-Screenshot_1=GUID-6E0D87B5-DDC0-4912-A301-60E7DE5F2090=1=en=Default](/images/426eb5e-Screenshot_1=GUID-6E0D87B5-DDC0-4912-A301-60E7DE5F2090=1=en=Default.png)


### Display the Value of the Variable in the Output Panel

Add the Write Line to display the value of the string variable, for this example we've added the olympics.Name, to the Output panel.

![1a06cbd-Screenshot_2=GUID-3F4B5512-8872-4B4F-9083-EFEDDC492C52=1=en=Default](/images/1a06cbd-Screenshot_2=GUID-3F4B5512-8872-4B4F-9083-EFEDDC492C52=1=en=Default.png)

Once finished, your project should look like this:

![8c2ecaf-DS-1=GUID-BD77F240-C747-4451-A7E6-13F110A61EBE=1=en=Default](/images/8c2ecaf-DS-1=GUID-BD77F240-C747-4451-A7E6-13F110A61EBE=1=en=Default.png)

