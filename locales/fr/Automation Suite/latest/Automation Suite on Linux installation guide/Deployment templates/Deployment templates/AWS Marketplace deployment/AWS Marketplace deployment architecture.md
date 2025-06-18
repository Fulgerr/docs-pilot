# AWS Marketplace deployment architecture


### Architecture diagram

![26e2615-58c6264-aws-sf=GUID-A95D0C17-7A88-4335-9CCE-7E7F89256591=1=en=Default](/images/26e2615-58c6264-aws-sf=GUID-A95D0C17-7A88-4335-9CCE-7E7F89256591=1=en=Default.jpg)


### Complete component list




### Deployment and instance type mapping

The template dynamically computes the hardware needed for the deployment as follows:

* Depending on the services installed, it sets minimum requirements at cluster level.
* Depending on the deployment profile (multi-node or single-node profile), it sets minimum requirements for a single VM.
* Selects the instance types based on their availability in the region you deploy and the aforementioned requirements.

The following table shows the mappings between deployment and possible instance types:


| Deployment type | Instance types |
| --- ---| Single-node, services selection that needs less than 16 CPUs | c5.4xlarge, c5a.4xlarge, m5.4xlarge, m5a.4xlarge |
| Single-node, services selection that needs more than 16 CPUs | c5a.8xlarge, c5.9xlarge, m5.8xlarge |
| Multi-node, services selection that needs less than 48 CPUs | c5.4xlarge, c5a.4xlarge, m5.4xlarge, m4.4xlarge |
| Multi-node, services selection that needs more than 48 CPUs | c5a.8xlarge, c5.9xlarge, m5.8xlarge, m5a.8xlarge |

