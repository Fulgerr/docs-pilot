# High Availability – three availability zones

Kubernetes is designed to run a single cluster across multiple availability zones. To ensure resiliency against a zone failure, you can deploy critical components, including kubernetes and uipath product services, in High Availability (HA) mode.

HA mode requires at least three server nodes deployed in three distinct availability zones.

Availability zones can be generalized as data centers. Clusters spanned across multiple data centers are more highly available than all availability zones in the same data centers.

## Requirements

To ensure HA with three availability zones, the following requirements must be met:

* Three availability zones that are geographically separate but within close proximity;
* Round Trip Time (RTT) among the availability zones must be minimal (<10 ms RTT);
* All availability zones must provide a consistent set of resources with HA and redundancy;
* Single virtual network span across all the availability zones.

High Availability Add-On (HAA) is required for deploying Orchestrator in a three active availability zone topology on Automation Suite.


## Architecture

The architecture of a configuration with HA with three availability zones has the following characteristics:

* All three zones are linked in the same virtual network;
* Each of the zones must host at least one server node so that there are at least three server nodes installed in Automation Suite to maintain the quorum requirement;
* Each of the zones should host additional balanced
                number of agent nodes to meet the overall hardware requirements for running
                Automation Suite. SQL server must be
                            configured as failover group spanning across two zones to ensure the
                            entire deployment is resilient to the failure of one zone.A minimum of three nodes
                            are required for Elasticsearch in any of the two zones, configured in
                            different clusters and synchronized.A minimum of two load
                            balancers in any of the two zones, to ensure High Availability at load
                            balancer level.

To ensure both HA and Disaster Recovery, you can employ the deployment model illustrated in the following image. In this example, all three zones are active, and the traffic manager is employed to use a specific algorithm, such as Round Robin or one of its variants to direct traffic to any of the load balancers. Similarly to the traffic manager, the load balancer will direct traffic to any of the availability zones.

![b535e0a-Multi-Zone_1=GUID-127AD9F6-FA33-424B-A723-5951ADFCD692=1=en=Default](/images/b535e0a-Multi-Zone_1=GUID-127AD9F6-FA33-424B-A723-5951ADFCD692=1=en=Default.png)

