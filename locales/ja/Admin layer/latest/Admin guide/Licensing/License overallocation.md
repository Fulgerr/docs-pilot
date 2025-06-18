# License overallocation

UiPath does not enforce automatic license removal or deny access to the services due to the license excess usage to not create any inconveniences by disrupting your operations. However, you are required to adjust the license count within the limits of your organization's license plan as soon as you are notified of overallocation.Continuing to use the excess licenses constitutes a breach of the license agreement and may result in disruption of services if no action is taken within 14 days.

## Preventing organization-level license overallocation

# Identifying organization-level license allocation

Overallocation of licenses occurs in your organization if the number of licenses assigned to accounts or tenants surpasses the number included in your licensing plan.

To identify organization-level license overallocation, monitor the Home and License pages. If the number of purchased licenses decreased since you last assigned licenses to accounts or to tenants, a warning banner is displayed on the Home and all Admin pages.

# Preventing organization-level license overallocation

To avoid organization-level overallocation, make sure the number of allocated licenses is lower than or equal to the number of licenses in your plan.

# Addressing organization-level license overallocation

To address organization-level license overallocation, take one of the following steps:

If the overallocation indicates a need for additional licenses, you must purchase new licenses.If you already have as many licenses as you need, you must decrease the number of service/robot licenses from tenants that do not need them.


## Overallocation caused by double activation

If you have used the same license code to activate the license at both the host level and at the organization level, both appear as overallocated.

To license both the host and organization from the same license, you must activate the license at the host level and then allocate licenses to organizations.

At the organization level, deactivate the license from the Admin > Licenses page. This resolves the overallocation issue.At the host level, allocate licenses to the organization as needed. This properly licenses the organization.


## Preventing service-level license overallocation

# Identifying service-level license allocation

Service-level license overallocation occurs when more licenses are in use for a particular service than the number of allocated licenses.

To identify service-level license overallocation, monitor the Home and License pages. If the number of licenses allocated to a service appears in red, it indicates a discrepancy between the number of allocated and in-use licenses.

# Preventing service-level license overallocation

To prevent service-level license overallocation, ensure that the number of licenses allocated for a service is greater than or equal to the number of licenses already in use. Note that you cannot re-allocate runtimes that are currently in use.

# Addressing service-level license overallocation

If the number of in-use licenses exceeds the number of allocated licenses, take one of the following steps:

* Increase the number of allocated service/robot licenses to match the number of licenses used for the service.
* Decrease the allocated licenses to the number of available licenses.

