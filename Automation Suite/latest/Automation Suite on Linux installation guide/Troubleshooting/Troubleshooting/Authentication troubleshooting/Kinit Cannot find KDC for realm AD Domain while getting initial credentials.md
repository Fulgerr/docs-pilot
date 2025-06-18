# Kinit: Cannot find KDC for realm <AD Domain> while getting initial credentials

# Description

This error might occur during installation (if you have Kerberos authentication enabled) or during the kerberos-tgt-update cron job execution when the UiPath® cluster cannot connect to the AD server to obtain the Kerberos ticket for authentication.

# Solution

Check the AD domain and ensure it is configured correctly and routable, as follows:

getent ahosts <AD domain> | awk '{print $1}' | sort | uniq

If this command does not return a routable IP address, then the AD domain required for Kerberos authentication is not properly configured.

You need to work with the IT administrators to add the AD domain to your DNS server and make sure this command returns a routable IP address.
