# Create Repository

UiPath.GitHub.IntegrationService.Activities.CreateRepo

# Description

Creates a repository in GitHub.

# Project Compatibility

Windows | Cross-platform

# Configuration

* Connection - The connection established in Integration Service. Access the drop-down to choose, add or manage connections.
* Repository name - The name of the repository. The name is not case-sensitive.
* Description - A short description of the repository.
* Private - Whether the repository is private. Default is false.
* Homepage - A URL with more information about the repository.
* Auto initialize - Input true to create an initial commit with empty README. Default value is false.
* Allow auto merge - This field only allows Boolean values: true, to allow auto-merge on pull requests, or false to disallow auto-merge. Default value is false.
* Delete branch on merge - This field only allows Boolean values: true, to allow automatically deleting head branches when pull requests are merged, or false, to prevent automatic deletion. Default value is false.
* Template - This field only allows Boolean values: true, to make this repo available as a template repository, or false, to prevent it. Default value is false.
* Gitignore template - Desired language or platform .gitignore template to apply. Use the name of the template without the extension. For example, "Haskell".
* License template - Choose an open source license template that best suits your needs, and then use the license keyword as the license_template string. For example, "mit" or "mpl-2.0".
* Team ID - The ID of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.

# Advanced

Output

* Repository ID - The output repository ID.
* Repository name - The output repository name.
