# April 2023


### 24 April 2023




### 18 April 2023




### 5 April 2023

# Bug fixes

* Using the latest version of the BeyondTrust Server or upgrading to it would sometimes cause integration issues. Now, everything works as expected.


### 4 April 2023

# Improvements

* The More Actions menu of several Automations pages has been redesigned to group similar actions together. Additonally, we renamed the labels for View Logs and View all logs for his process to View logs of this job and View logs of all jobs for this process, respectively.
* You can now start a job on multiple account-machine pairs. To do that, you simply need to enable the Select valid account-machine mappings option on the Start Job page, and click Add Account-Machine mapping. Once you add the desired pairs, a Pending job is created for each of them.

# Bug fixes

* For enterprise users, changing the tenant name from the Tenant > Settings page also updates the tenant name in Orchestrator associated mechanisms. Previously, the name change did not propagate to Orchestrator alert notification system. Be patient though, as we prioritize the fix for tenants with a smaller amount of data first.
* Retrieving queue item events and comments returned a list from all the folders in the tenant. Now, you get the list of queue item events and comments only for the folders you have access to.


### When can I see these changes?

The date when a change is first announced in the release notes is the date when it first becomes available.

If you don't see the change yet, you can expect to see it soon, after we roll out changes to all the regions.

More information


### Deprecation Timeline

We recommend that you regularly check the deprecation timeline for any updates regarding features that will be deprecated and removed.

