# Download file

# Description

Downloads a file based on the Job ID retrieved from any operation performed above
                this. The file donwload fails if the upstream Job is not complete and hence it is
                recommended to use a Delay activity before this download activity to allow the
                previous job to complete.

# Project Compatibility

Windows|Cross-Platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections.
* Job performed - Select the operation performed before this activity to identify the output file to be downloaded.
* Job ID - The Job ID of the performed operation.
* Output file name - Specify a name for the file being downloaded.

# Manage Properties Wizard

The Manage Properties Wizard can be used to configure or use any of the object’s
                standard or custom fields by selecting and adding them to the activity canvas. The
                added standard/custom fields are available in the Properties panel (in Studio
                Desktop) or under Additional options (in Studio Web).

# Advanced

Output

* File - The downloaded file.
