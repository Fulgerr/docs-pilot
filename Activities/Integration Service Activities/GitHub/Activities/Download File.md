# Download File

UiPath.GitHub.IntegrationService.Activities.DownloadFile

# Description

Downloads a file from GitHub.

# Project Compatibility

Windows | Cross-Platform

# Configuration

* Path - The complete path of the file from the root. For example, if test.txt is available in the Demo repository folder, the path is Demo/test.txt. If the same file is available in the root directory of the repo, then the path is test.txt.
* Repository - The name of the repository. The name is not case sensitive.

# Advanced

Options

* Reference - The name of the commit or branch or tag. The default value is the repository's default branch, usually master.

Output

* File resource - This file resource appears by default in upload or download activities that have a file as input or output. The downloaded file/attachment can be used as input in any other Upload file/attachment activities of systems such as GitHub, Zendesk, Google Drive, OneDrive, Box, etc. In order to use the file, you must store it in a remote directory like Google Drive, OneDrive, etc. It is not possible to store the file in local directory.
