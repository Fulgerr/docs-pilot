# Allowing or restricting basic authentication

Basic authentication refers to signing in with the username and password of a local account.

If basic authentication is restricted, your users can only log in with their directory account, as defined in the external identity provider. Otherwise, users can log in with both their local accounts, if any, and their directory accounts.

## Setting basic authentication at the organization level

This setting is only available if an external provider integration is enabled at the host or organization level.When set at the organization level, the setting applies to all accounts in the organization.For exceptions, basic authentication can also be set at the account level where you want this setting to apply differently.To allow or restrict basic authentication for your organization:

Log in to the organization-level Management portal at https://<server>/identity/management as an administrator.Go to Security Settings.Navigate to the Admin section, select Security.Under Sign-in options for local users, turn on the Basic sign-in toggle to allow sign in using basic authentication:Select Save to apply your changes.


## Password complexity

Editing the Password complexity settings does not affect existing passwords.

The following table describes the password complexity you need when creating a password:


| Field | Description |
| --- ---| Special characters | Select to force users to include at least one special character in their password.By default, this checkbox is not selected. |
| Lowercase characters | Select to force users to include at least one lowercase character in their password.By default, this checkbox is selected. |
| Uppercase characters | Select to force users to include at least one uppercase character in their password.By default, this checkbox is not selected. |
| Digits | Select to force users to include at least one digit in their password.By default, this checkbox is selected. |
| Minimum password length | Specify the minimum number of characters a password should contain.By default, it is 8. The length cannot be smaller than 1 or greater than 256 characters. |
| Days before password expiration | Specify the number of days for which the password is available. After this period, the password expires and needs to be changed.The minimum accepted value is 0 (the password never expires), and the maximum is 1000 days. |
| Number of times a password can be reused | The minimum accepted value is 0 (never allow reusing a password), while the maximum is 10. |
| Change password on the first login | If set to Required, users that log in for the first time must change their password before being allowed to access Orchestrator.If set to Not required, users can log in and continue to use the admin-defined password until it expires. |


## Account lockout

The following table describes the different account lockout settings:


| Field | Description |
| --- ---| Enabled or Disabled toggle | If enabled, locks the account for a specific amount of seconds after a specific amount of failed login attempts. This also applies to the password change feature. |
| Account lockout duration | The number of seconds a user needs to wait before being allowed to log in again after exceeding the Consecutive login attempts before lockout.The default value is 5 minutes. The minimum accepted value is 0 (no lockout duration), and the maximum is 2592000 (1 month). |
| Consecutive login attempts before lockout | The number of failed login attempts allowed before the account is locked.The default value is 10 attempts. You can set a value between 2 and 10. |

