# Restricting access to organizations

You can enhance your network security by managing and limiting access to certain UiPath organizations from your network. This way, your users can access only approved UiPath organizations from your network.

# How the organization access restriction works

The system checks all requests targeting UiPath organizations against your predefined list of authorized organizations. Any request aimed at an unauthorized UiPath organization is denied, prompting a 403 error message.

Note that changes to your approved organization list or network settings take effect immediately.

# How to apply the organization access restriction

To restrict access to certain organizations, take the following steps:

1. Identify the organizations your users are allowed to access.
2. Create a comma-separated list of the allowed organizations using their unique organization IDs. To get your organization IDs, contact UiPath Support.
3. Configure your network settings.Update your network's proxy to recognize requests to UiPath resources and attach a specific header, x-uipath-allowed-organization, to outgoing requests heading to *.uipath.com. This header must contain the predefined variable name and the list of approved organization IDs.
