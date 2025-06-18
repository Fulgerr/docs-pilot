# Overview

# Diagrams

The following
                    diagram depicts a regular Active/Passive deployment of Automation Suite:

![Active-Passive deployment architecture=GUID-916BE67B-6274-4CD6-87BA-3425B1358294=1=en=Default](/images/Active-Passive deployment architecture=GUID-916BE67B-6274-4CD6-87BA-3425B1358294=1=en=Default.png)

The
                following diagram depicts a regular Active/Active deployment of Automation
                Suite:



# Requirements

HardwareRequirementsGlobal Traffic
                                    Manager (GTM)Distributes traffic
                                    to your Automation Suite multi-site deployment. The service must
                                    be highly available and immune to any deployment site.
                                    Additionally, the GTM must be able to configure the health check
                                    to isolate the faulty site quickly. The GTM is not mandatory but
                                    is recommended for a quick switchover. When configuring the
                                        Global Traffic Manager (GTM) for Active/Passive or Active/Active deployments, make sure to use
                                            /orchestrator_/api/status as the health
                                        endpoint. This is critical for effective disaster recovery
                                        management.Load
                                    balancerEvery site needs a
                                    local load balancer that can load-balance the traffic to any
                                    node configured in the same site. For more details, see Configuring the load balancer.NodeEvery site must have at least three
                                        servers, whereas agent nodes are optional. The exact number
                                        of machines depends on the machine size and overall capacity
                                        requirements. You do not need to bring the same set of nodes
                                        to each cluster.In the case of Active/Active
                                        configurations, the size of the secondary cluster can be
                                        smaller, considering that you may install only a few
                                        products.For more details, see Automation Suite Install Sizing
                                    Calculator.SQL databaseAn external SQL server is required
                                        to store the data. For disaster recovery, you need Always On
                                        Availability Groups with a primary SQL server in Site 1 and
                                        at least one secondary physically SQL Server located in Site
                                        2 with data sync enabled. There is also a SQL listener
                                        deployed on top of the SQL server. Both clusters are
                                        configured to use the address of the same listener.ObjectstoreAny files or
                                        packages uploaded to products are stored in the objectstore.
                                        For greater resilience to failure, Automation Suite
                                        deployments require an external objectstore.For
                                        effective disaster recovery, two objectstore instances are
                                        required; one instance must be situated in each data center.
                                        At any given time, only one objectstore instance must be
                                        actively used for reading and writing by both clusters. This
                                        process must be complemented by asynchronous replication to
                                        the secondary instance.High Availability Add-onFor Active/Active, High Availability Add-on must be external
                                        to Automation Suite and must be installed on separate
                                        machines. A minimum of three nodes are required for both
                                        High Availability Add-on instances in each data center,
                                        configured in different clusters and synchronized (CRDB
                                        replication).To install High Availability Add-on, see the High Availability Add-on Installation
                                            Guide.For Active/Passive, High Availability Add-on is installed
                                        within the Automation Suite cluster. However, you must
                                        enable it on both clusters by providing the HAA license. For
                                        more details, see Enabling Redis High Availability Add-On for the
                                            cluster.Elasticsearch
                                    (optional)Elasticsearch is required to send the robot logs. You can
                                        configure the Elasticsearch cross-site replication as
                                        described by Elasticsearch.
