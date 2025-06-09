# Step 2: Updating AD integration and authentication

To configure AD integration, refer to Configuring SSO: Active Directory.

If AD integration and authentication were enabled in the standalone deployment, take the following steps in the Automation Suite cluster:

* Make sure the domain controllers are discoverable by the Automation Suite cluster. If not, use the Kube DNS configuration;
* Configure integrated Windows authentication and Kerberos authentication using keytab file;
* Configure LDAP integration via the Portal under the host admin;
* Configure Windows authentication via the Portal under the host admin;
* Configure LDAPS for secure connection to LDAP. The account used for the LDAP integration configuration should only have read access to all trusted domains in the current and trusted forests.
