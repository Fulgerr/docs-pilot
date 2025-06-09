# Q&A: Deployment templates

# Untitled Section

Q: For the multi-node HA-ready production profile, the processor requirement for the Complete product selection is 96 (v-)CPU/cores. Is this requirement inclusive of server and agent nodes, or does it refer to server or agent nodes?A: Our documentation indicates that the multi-node HA-ready production profile requires at least 3 server nodes with minimum CPU/RAM per node. As long as this condition is met, the remaining CPU/RAM requirements can be spread over either additional server or agent nodes that also meet the minimum CPU/RAM requirements.

# Untitled Section

Q: Is a GPU required for Task Mining?A: No, GPU is not required for Task Mining.

# Untitled Section

Q: What does node fault tolerance in the UiPath® Automation Suite Install Sizing Calculator refer to? Does it cover agent nodes, only server nodes, or both?A: The UiPath® Automation Suite Install Sizing Calculator bases the recommendation with fault tolerance so that a minimum of 3 server nodes are always available in the worst case scenario. You can increase the number of servers that can go down without causing the deployment to fail.

# Untitled Section

Q: Can I use a private domain in Amazon Route 53?A: Yes, private hosted zones are supported.

# Untitled Section

Q: Do I need to specify the DNS records in the cloud solution (e.g., AWS) as well? Can I use an on-premises DNS solution with an Automation Suite AWS deployment? For example, in the case of a URL the end-user accesses, does the record need to be resolvable in the cloud or on-premises DNS?A: You can use non-Amazon Route 53 DNS infrastructure. However, the DNS must be resolvable in the VPC where you perform the deployment.

# Untitled Section

Q: Which CNI plugin is used as part of Kubernetes? For example, when vendor-supplied, the Kubernetes solution supports integration with VPC/VNET. If using AWS Kubernetes, whenever the vendor creates and deploys workload, pods get IP addresses from the VPC itself. That means the workload can be accessed by AWS or Azure services.A: We use Cilium CNI. The Kubernetes distribution comes with 3 supported CNIs, but not the AWS-specific one.

# Untitled Section

Q: Do you customize Service IP and POD IP ranges?A: We currently do not customize Service IP and POD IP ranges. The default CIDR is 10.42.0.0/16.

# Untitled Section

Q: When deploying Automation Suite to AWS into an existing VPC, is it possible to use TerraForm instead of CloudFormation?A: No, it is not possible. We use the native Infrastructure as Code tool from the cloud provider (CloudFormation for AWS, ARM for Azure).

# Untitled Section

Q:In regard to the previous question, if my standard for IaaC is Terraform, does it mean that I need to develop the Terraform code?A: If you would like to deploy Automation Suite manually (not using the existing AWS or Azure templates), then yes, you would need to develop the Terraform code. Alternatively, you can use the existing CloudFormation template for deployment or as a base to assist in creating the Terraform code.

# Untitled Section

Q: How can I estimate the number of specialized nodes required by Task Mining?A: Task Mining requires/supports 1 dedicated node out of the box.

# Untitled Section

Q: Can I use Graviton-based processes for the deployment?A: No, the Kubernetes distribution does not support ARM.

# Untitled Section

Q: Can Automation Suite be hosted on AMD or only on Intel processors?A: Either is fine as long as you meet the architecture requirements.

# Untitled Section

Q: Can I deploy Automation Suite templates on Ubuntu and CentOS?A: No, Ubuntu and CentOS are not supported.

# Untitled Section

Q: For an AWS deployment, if an EFS is automatically deployed, how much space does it reserve?A: EFS does not come with pre-provisioned size. It is pay-as-you-use. EFS will hold all backups for all disks across the cluster, which means it will use 6 TB of data, the sum of all the nodes storage data disk space.

# Untitled Section

Q: Does Azure deployment deploy an NFS solution, as AWS does? If it does, how much space does it reserve?A: NFS is a protocol that has multiple possible implementations. AWS Elastic File System is one such implementation. NFS Server is another implementation. Azure has a different implementation called Azure Files. If you want to have a backup, you need one of these infrastructure elements.

# Untitled Section

Q: Which is the preferred cloud service provider: Azure or AWS?A: We do not have a preferred cloud service provider. We support both.

# Untitled Section

Q: If Autoscaling is enabled, does the node require customized images?A: Autoscaling uses your RedHat image, on top of which the UiPath® software will be installed. We do not have clear data now, but cold start is in the 5-10 minute range.

# Untitled Section

Q: Can I use the Standard edition of Microsoft SQL Server?A: We support Microsoft SQL Server 2016, 2017, and 2019 Standard and Enterprise editions. For more on SQL requirements, see our documentation.

# Untitled Section

Q: Is the the total vCPU requirement of 96 cores required from the beginning or can it be part of Autoscaling, which will add or remove nodes depending on the resource need?A: 96 cores are required to power up the system. Subsequently, you can employ different scaling strategies. However, you must not go under that number.

# Untitled Section

Q: Do I select the RHEL image or is it prescribed in the AWS or Azure templates? If I must select it, what RHEL version should I use when deploying via templates?A: The deployment uses a basic RHEL image (which is determined at runtime) and creates an autoscaling group template that is applied when the VM is provisioned. This means that all the software is installed when a new EC2 instance is created. The templates use RHEL 8.2 as of now.

# Untitled Section

Q: Is there any need for VMs other than for the Kubernetes cluster?A: To run Automation Suite, no additional VMs outside the cluster are required. However, if you do not have existing machines to run UiPath® Robot, then these would likely be required, in addition to any developer VMs or desktops for UiPath Studio (IDE).

# Untitled Section

Q: Will there be any integration with CloudWatch or Azure Monitor for Kubernetes logs?A: As of now, there is no integration to push logs to CloudWatch.

# Untitled Section

Q: Can Automation Suite use open-source database solutions, such as MySQL or PostgreSQL?A: The Microsoft SQL Server requirement is independent of the cloud where the Automation Suite is deployed.
