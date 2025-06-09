# Downloading File Fields in Entity Records

Using Studio you can easily manipulate specific files of an entity record. These activities allow you to execute operations such as upload, download, or delete specified files of a specified field of an entity record.

The following example demonstrates how to automatically download from Data Service a specified file containing information from the Olympics games extracted from Wikipedia pages in order to use it for other operations.

Download example

## Prerequisite: Create Entities in Data Service

Following the steps detailed on the Creating an Entity page, we created an entity for storing information about the Olympic games.

The Olympics entity has the following fields: Name (text) and Logo (file).

Check out the following pages:

* the Upload File activity as it contains details about how to use this activity to easily upload the logos;
* the File page as it provides details on how to upload logos from the platform. System built-in fields are automatically added to your entity in order to provide details about its creation.


## Step 1: Build the Workflow




### Query Related Records

We use the Query Entity Records activity to pull up a list of records from the Olympics entity from Data Service by setting up the folder variable. This goes through all records from the Name field and outputs them in the olympicsRecords variable to be used in the following Input Dialog activity.

![e897597-Screenshot_8=GUID-253D09F1-2C6F-479B-AACF-89E2EA58F086=1=en=Default](/images/e897597-Screenshot_8=GUID-253D09F1-2C6F-479B-AACF-89E2EA58F086=1=en=Default.png)


### Create an Input Dialog Box

Add the Input Dialog activity to display a dialog box containing the Select label message and a Multiple choice Input Type. In the Input array add the olympicsRecords variable created previously for the Query Entity Records activity for which you'll apply the following function: olympicsRecords.Select(Function (o as Olympics) o.Name).ToArray to set up the array of options to choose from.

Set up the selectedOlympics variable to gather the output results.

![2a44866-Screenshot_1=GUID-D7D9B0C7-6667-4AFC-9EFC-B214FD728EEC=1=en=Default](/images/2a44866-Screenshot_1=GUID-D7D9B0C7-6667-4AFC-9EFC-B214FD728EEC=1=en=Default.png)


### Assign a Value to the File

Use the Assign activity to assign the  olympicsRecords.First(Function (o as Olympics) o.Name = selectedOlympics) variable created previously in the Input Dialogue activity to the new olympicEdition variable.

![83da35f-Screenshot_1=GUID-BBA85BBA-8D9A-47AC-A436-FA84578D95C6=1=en=Default](/images/83da35f-Screenshot_1=GUID-BBA85BBA-8D9A-47AC-A436-FA84578D95C6=1=en=Default.png)


### Set up a Select Folder Dialogue Box

Add the Select Folder variable to open a dialog box and create the folder variable for the output folder path. You'll use this variable in the following Download File from Record Field activity.

![5df251c-Screenshot_2=GUID-C94CD2FA-A359-46A6-8CE2-D3FF6F37B81D=1=en=Default](/images/5df251c-Screenshot_2=GUID-C94CD2FA-A359-46A6-8CE2-D3FF6F37B81D=1=en=Default.png)


### Download File From Record Field

Use the Download File from Record Field activity to download the folder file from the Logo file of the olympicEdition.Id entity record.

![4c5ee39-Screenshot_3=GUID-79BB0218-FF53-4FAB-822D-F6C0042DAD64=1=en=Default](/images/4c5ee39-Screenshot_3=GUID-79BB0218-FF53-4FAB-822D-F6C0042DAD64=1=en=Default.png)


### Set up a Power Shell Command

Add the Invoke Power Shell activity to execute the following command line: Path.Combine(folder, olympicEdition.Logo.Name) in order to combine the following input parameters: folder and olympicEditionvariables and the Logo and Name fields created within the Olympics entity.

The purpose of this activity is to invoke the full path of the file and open it in the default photo viewer or editor.

![731dbd3-Screenshot_4=GUID-12A32B8D-66F5-488B-ABF2-D4E162ED705C=1=en=Default](/images/731dbd3-Screenshot_4=GUID-12A32B8D-66F5-488B-ABF2-D4E162ED705C=1=en=Default.png)


### Untitled Topic 27587171



