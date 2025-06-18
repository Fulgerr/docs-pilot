# Managing user accounts

Adding users for any of the services in your organization is done from the Admin section.
            You cannot add users to a service from the service itself.

### Inviting users

Invited users do not receive an invitation email for signing up by default. To enable this feature, administrators must set up custom email settings.

With this method, you can invite up to 20 users or 20 groups at one time. If you need to invite more, use the bulk operation instead.

Go to Admin and select the organization at the top of the panel on the left.Select Accounts & local groups.The Accounts & local groups page for the organization opens on the User accounts tab.In the top right of the tab, select Invite users.The Invite users panel opens at the right of the window.In the Email field, type and email address and then press Space.Continue to add email addresses if you want to invite multiple users.(Optional) Select the checkbox for one or more groups to which you want to add the users. Refer to User Group Considerations for more information.Select Invite.

The Invite Users panel closes and the invited users are displayed on the Users page.In the Last active column, Pending is displayed until each user accepts the invitation and logs in.You can continue with assigning roles and allocating user licenses, even if a user hasn't accepted the invitation yet.


### Inviting users in bulk

Invited users do not receive an invitation email for signing up by default. To enable this feature, administrators must set up custom email settings.

To invite up to 1000 users simultaneously, use a .csv file containing the users to be invited and the user groups they belong to. Using this method, you can configure distinct group settings for users. Refer to User Group Considerations to choose the access control strategy best suited for your needs.

CSV file requirementsDownload .CSV ExampleThe CSV file allows for two columns. Any extra columns are not considered. The two columns must be named and populated as follows:email - must be populated with the email addresses of the users to be invited.group membership - must be populated with the user groups each user should belong to. If left empty, the user is invited with no associated parent group. It allows for multiple groups, separated by a comma (for example, "automation developers, administrators")The CSV file validation is not case sensitive. "Automation Users" and "automation users" are both valid. You can invite up to 1000 users simultaneously with one CSV file.

Go to Admin and select the organization at the top of the panel on the left.Select Accounts & local groups.The Accounts & local groups page for the organization opens on the Users tab.In the top right of the tab, select Invite users in bulk.The Upload CSV dialog opens.Select Upload file and select the CSV file to be uploaded.Upon upload, file validation is performed:If the file meets the requirements, the upload operation is performed successfully, and the users in the CSV file are invited to the organization as part of the corresponding user groups.If the file does not meet the requirements, the Error Summary window is displayed with the reason for failure: Invalid email format, Some or all groups were invalid, or API error. Corrupted user entries are not considered and the corresponding users are not invited.


### User group considerations




### Removing users

To remove a user, select the corresponding Delete button in the Users page, and then Delete to confirm. Alternatively, select one or multiple users, and select the Delete button. The deleted user/users are no longer displayed on the Users page and they cannot access your organization.When you invite someone to join your organization, a new user account is created. Should you remove this user from your organization, they can log in independently by creating a new organization. While they can't access your organization's data post-removal, they may still use their account in a new organization.You cannot delete your own user. Ask another organization administrator to perform the changes for you.


### Creating custom user groups

In the Accounts & local groups page, go to the Local groups tab.Select Add local group. The Add group window is displayed.Fill in the Name field.On the Names field, add users to the group. Only users that have been invited to your organization beforehand are listed.

Unlike default user groups, custom groups need to be added manually to your services to ensure the correct mapping between the group membership and the corresponding roles in those services.

