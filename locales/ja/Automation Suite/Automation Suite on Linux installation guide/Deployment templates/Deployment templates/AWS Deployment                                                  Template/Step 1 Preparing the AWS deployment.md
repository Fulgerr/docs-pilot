# Step 1: Preparing the AWS deployment

This page lists the steps you need to take before deploying Automation Suite to AWS.

To prevent data loss,
            ensure the infrastructure you use does not automatically delete cluster disks on cluster
            reboot or shutdown. If this capability is enabled, make sure to disable it.

### Getting started on AWS

The AWS deployment requires a moderate level of familiarity with AWS services.

If you are new to AWS, you can start by reading the following introductory materials to get familiar. They provide basic materials for how to design, deploy, and operate infrastructure and applications on the AWS Cloud.

Getting Started Resource Center

AWS Training and Certification

This Quick Start also assumes familiarity with AWS Services listed in the Request resources quotas section of this
            guide. For a detailed diagram and description of the architecture, see:

Deployment architecture on AWS


### Creating an AWS account

If you don’t already have an AWS account, create one by following the step-by-step instructions. Your AWS account is automatically signed up for all AWS services. You are charged only for the services you use.


### Configuring your AWS account

The following sections walk you through the steps you need to take to configure your AWS Account specific to the Automation Suite deployment requirements.


### Connections to external endpoints

The following table describes all the external endpoints that the service interacts with:


| Requirements | Details |
| --- ---| AWS metadata service | Provides details about your Amazon EC2 instance |
| AWS management APIs | Used via AWS CLI or lambda functions |
| AWS bootstrap archive | Used for services to provision and manage resources. Retrieved from the following URL: https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-py3-latest.tar.gz |
| AWS CLI package | Used for the command line interface to interact with AWS services from a machine. You can access the package from the following URL: https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip |
| AWS SSM Agent | Used for managing instances via remote commands at scale. You can download the agent from the following URL: https://s3.${AWS::Region}.amazonaws.com/amazon-ssm-${AWS::Region}/latest/linux_amd64/amazon-ssm-agent.rpm |
| AWS Cloudwatch Agent | Used for collecting system and application logs for monitoring. You can download the agent from the following URL: https://s3.amazonaws.com/amazoncloudwatch-agent/redhat/amd64/latest/amazon-cloudwatch-agent.rpm |
| Nvidia drivers | Required for GPU-enabled VMs. You can get the drivers from the Nvidia repository. |
| External repository if used | N/A |
| UiPath S3 buckets for templates / lambda functions usage / bash scripts for installation. | N/A |

For more details, see Network requirements.


### Connecting AI Center to an external Orchestrator

To connect AI Center to an external Orchestrator, you must set Connect AiCenter to an external Orchestrator to true and provide certificates for Orchestrator and Identity to the parameters listed in AWS deployment parameters. For details on how to obtain the certificates, see Chain certificates.

To encode the certificates in base64 format, run the following commands:

cat orchestrator.cer | base64 | tr -d '\n' > orchestratorCert
cat identity.cer | base64 | tr -d '\n' > identityCert

To register AI Center to the external Orchestrator, you must run this SSM document.


### Backing up the cluster

The AWS template allows you to enable a backup at deployment time. By default, the backup interval is set to 90 minutes, and the retention interval is set to 72 hours. You can change the default values post-deployment.


### Enabling FIPS 140-2

If you deploy Automation Suite in AWS GovCloud regions, FIPS 140-2 is enabled by default.

If you are not on AWS GovCloud, you can only enable FIPS 140-2 on your machines after completing an Automation Suite installation. For instructions, see Security and compliance.

Insights does not support FIPS 140-2, and you must disable it for a successful installation.


### Preparing an AWS GovCloud deployment

To deploy Automation Suite to AWS GovCloud, you must meet the following requirements:

* You must only use an existing VPC.
* You must create a Route53 resource for your custom domain and associate it with the existing VPC to which you plan to deploy. You must provide the Route53 ID as a value for the ID of Route 53 hosted zone parameter.
* If you use an ALB load balancer, you must import your certificate in Certificate Manager and provide the certificate ARN as a value for the ARN of the ACM hosted certificate to use parameter before installation.

