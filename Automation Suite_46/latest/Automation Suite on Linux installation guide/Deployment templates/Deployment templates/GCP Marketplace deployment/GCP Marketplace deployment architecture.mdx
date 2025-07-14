# GCP Marketplace deployment architecture


### Architecture diagram

![13f1dc9-gcp_architecture.drawio_1=GUID-749760C8-42C4-4775-ADDD-F803171F716E=1=en=Default](/images/13f1dc9-gcp_architecture.drawio_1=GUID-749760C8-42C4-4775-ADDD-F803171F716E=1=en=Default.png)


### Components

* Virtual network A subnet where all nodes reside. A NAT Gateway for outbound connectivity (a Cloud Nat resource attached to a Cloud Router); Firewall Rules to secure subnet traffic.
* A DNS private zone needed for installation. For more details, check the Known limitations section.
* 4 Managed Instance Groups. You can choose the instance type for server, agent, GPU agent nodes, and Automation Suite Robots nodes. Make sure you meet the hardware requirements for each type of node. Each VM has a 128 GB OS and 256 GB cluster binaries and state disk. Server nodes have two additional disks: a 512GB data disk and a 512GB disk used for objectstore. Server nodes (cluster control plane). Server nodes also run workloads. Agent nodes. Designed to only run workloads (they have no control plane services). If the number of desired Agent nodes is 0, an empty Managed Instance Group is created. GPU nodes. Nodes used specifically for ML models that have video cards. If the number of desired GPU nodes is 0, no Managed Instance Group is created. Automation Suite Robots nodes. Designed to only run robot workloads. If the number of desired Automation Suite Robots nodes is 0, an empty Managed Instance Group is created. Automation Suite Robots nodes have an additional 32GB disk used for robot package caching.
* Public load balancer used to balance HTTPS traffic from port 443 to nodes.
* 2 Internal load balancers and a Managed Instance Group needed for forwarding node registration requests. The VMs have the smallest instance size possible.
* Task Mining node deployed as a separate VM. Its instance type is n2-standard-32.
* Bastion instance used to access the other nodes. It has a public IP and SSH enabled.
* SQL Database Instance: 8 cores and 32 GB RAM1000 GB disk size that can be manually extendedThe databases are created by the installer
* A PostgreSQL Database Instance for Process Mining AutomationSuite_Airflow database. (Recommended for Process Mining on Automation Suite 2024.10.3 or higher) 4 cores and 16GB RAM64 GB disk size>=500 IOPS
* A secondary SQL Database Instance is deployed if Process Mining is installed and the cluster is HA (has at least 3 server nodes): 16 cores and 32 GB RAM100 GB disk size that can be manually extendedThe database needed by Process Mining is created by the installer
* Secret Manager used to store auto-generated credentials for SQL server, Automation Suite Platform, and ArgoCD console.
* Service account used for the VM identities.


### Known limitations

Process Mining

* Installation fails if you enable Process Mining in a multi-node HA-ready production mode. Make sure not to select Process Mining at installation time. You can enable Process Mining post-installation, after creating the AutomationSuite_ProcessMining_Warehouse database. For details, see Managing products.

DNS

* Due to the fact that a DNS cannot be automatically attached to the LB: The steps for configuring DNS can be completed only after the installation, while they are needed during installation. The private DNS zone solves this issue and can be safely deleted after the installation is completed. Alternatively, for testing purposes check the Step 4: Configuring the DNS.

RHEL

* Google may update the RHEL version without notice, thus leaving Automation Suite deployments outside of support. Currently, manual deployments using custom RHEL images are the only way to and stay in support.

