# Personal Access Tokens

A Personal Access Token (PAT) is a unique alphanumeric string that serves as a substitute for your credentials and grants you controlled access to specific UiPath resources while maintaining a high level of security.

As an admin, you have access to all the PATs generated within your organization. You can view key details such as the PAT owner, access scopes, the last usage date, and expiration date of the PAT.

PATs are currently limited to users with local accounts only.

# Enabling/disabling PAT support

To enable/disable PATs for all users in the organization, follow these steps:

1. In the Admin section for the organization, go to External Apps, and then select the Personal Access Token tab to display the PAT configuration window.
2. Select Settings and on the Settings window, turn on or off the Enable/Disable PAT for all users option to enable or disable the PAT functionality.
3. On the Maximum Lifespan field, enter the validity duration of a PAT in the organization. This duration represents the timeframe after which the PAT expires.
4. Select Save to save your changes or Cancel to return to the previous window without saving your changes.

## Revoking PATs

As an admin, you have access to all the PATs generated within your organization. You can view key details such as the PAT owner, access scopes, the last usage date, and expiration date of the PAT. Based on this information, you can select specific PATs and revoke them as follows:

Go to Admin and select the organization at the top of the panel on the left.Select External applications.Select the Personal Access Token tab. The Personal Access Token page is displayed, showing a list of personal tokens generated in the organization and their specific details (owner, name, last usage time, access scopes, expiration date).Based on the PAT details, select Revoke for the PAT you want to revoke. To revoke multiple PATs, check the boxes of the PATs you want to disable and select Revoke. A confirmation window is displayed.Select Revoke in the confirmation window to confirm the operation. A success message is displayed and the PAT is removed from the tokens list.


## Revoking a known PAT

As an admin, if you discover a leak and are aware of the specific leaked token, you can promptly revoke the PAT yourself.

Go to Admin and select the organization.Select External applications.Select the Personal Access Token tab. The Personal Access Token page is displayed, showing a list of personal tokens generated in the organization and their specific details.Select the Revoke button. The Revoke token window is displayed.Enter the specific token to be revoked in the Revoke token window, and select Revoke to confirm. If the exact token is successfully found in the PATs list, a success message is displayed, and the token is revoked and removed from the list. However, if the token can't be located, the revoking attempt fails with an error message.

