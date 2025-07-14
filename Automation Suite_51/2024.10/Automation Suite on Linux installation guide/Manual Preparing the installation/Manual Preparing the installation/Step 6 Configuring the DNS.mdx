# Step 6: Configuring the DNS

The Automation Suite cluster is exposing multiple URLs to access the cluster management tools and the suite core functionality, all based on a common FQDN.

You must configure the DNS for the common FQDN and the subdomains specific to each tool as shown
            in the following table.

We support only lowercase FQDNs. Do not use uppercase
                characters in your FQDN.


| Application | Domain | Example URL |
| --- --- ---| Automation Suite | fqdn | automationsuite.mycompany.com |
| Application Lifecycle Management (ALM) | alm.{{fqdn}} | alm.automationsuite.mycompany.com |
| Monitoring / Observability | monitoring.{{fqdn}} | monitoring.automationsuite.mycompany.com |
| Object Store | objectstore.{{fqdn}} | objectstore.automationsuite.mycompany.com |
| Docker Registry | registry.{{fqdn}} | registry.automationsuite.mycompany.com |
| Insights | insights.{{fqdn}} | insights.automationsuite.mycompany.com |
| Apps | apps.{{fqdn}} | apps.automationsuite.mycompany.com |

## Configuring DNS using public domain registrar

Add a A Record in Advanced DNS or Management section of your domain as shown in the following table:


| Type | Host | Value |
| --- --- ---| A Record (or CName) | automationsuite (or a subdomain to access Automation Suite) | For A Record: IP Address of Load BalancerFor CName: DNS name associated with Load Balancer |
| A Record (or CName) | *.automationsuite (or a subdomain to access Automation Suite) | For A Record: IP Address of Load BalancerFor CName: DNS name associated with Load Balancer |

See the following example for the configuration:

![cca4242-DNSConfiguration=GUID-84079F3C-6687-453E-BFE6-6360B0A43954=1=en=Default](/images/cca4242-DNSConfiguration=GUID-84079F3C-6687-453E-BFE6-6360B0A43954=1=en=Default.png)

If the * wildcard is too generic, add a separate record or rule for the following subdomains: alm, monitoring, objectstore, registry, insights and apps.


## Configuring the DNS in a multi-site deployment

Automation Suite multi-site deployments require that you configure the DNS for the common FQDN and the subdomains specific to each tool as shown in the following table:

ApplicationDomainExampleValuePrimary Cluster FQDNfqdn-primaryautomationsuite-primary.mycompany.comFor A Record: the IP address of the primary cluster’s load balancerFor CName: the DNS name associated with the primary cluster’s load balancerSecondary Cluster FQDNfqdn-secondaryautomationsuite-secondary.mycompany.comFor A Record: the IP address of the secondary cluster’s load balancerFor CName: the DNS name associated with the secondary cluster’s load balancerApplication Lifecycle Managementalm.{{fqdn-primary}}alm.automationsuite-primary.mycompany.comFor A Record: the IP address of the primary cluster’s load balancerFor CName: the DNS name associated with the primary cluster’s load balanceralm.{{fqdn-secondary}}alm.automationsuite-secondary.mycompany.comFor A Record: the IP address of the secondary cluster’s load balancerFor CName: the DNS name associated with the secondary cluster’s load balancerMonitoringmonitoring.{{fqdn-primary}}monitoring.automationsuite-primary.mycompany.comFor A Record: the IP address of the primary cluster’s load balancerFor CName: the DNS name associated with the primary cluster’s load balancermonitoring.{{fqdn-secondary}}monitoring.automationsuite-secondary.mycompany.comFor A Record: the IP address of the secondary cluster’s load balancerFor CName: the DNS name associated with the secondary cluster’s load balancerRegistry (For offline only)registry.{{fqdn-primary}}registry.automationsuite-primary.mycompany.comFor A Record: the IP address of the primary cluster’s load balancerFor CName: the DNS name associated with the primary cluster’s load balancerregistry.{{fqdn-secondary}}registry.automationsuite-secondary.mycompany.comFor A Record: the IP address of the secondary cluster’s load balancerFor CName: the DNS name associated with the secondary cluster’s load balancer

