# Step 2: Deploying the AWS Marketplace offering

This page explains how to choose your deployment option and how to create the stack.

You are responsible for the cost of the AWS services used while running the AWS Marketplace deployment. There is no additional cost for using this deployment.For full details, see the pricing pages for each AWS service used by this deployment. Prices are subject to change.

Now that you have configured the AWS account, sign in to that account at https://aws.amazon.com with an IAM user role with the necessary permissions.

The following sections walk you through the steps you need to take to launch the AWS Marketplace deployment and create the stack.

### Deployment steps

1. Navigate to the Automation Suite on Linux page on AWS Marketplace and select Continue to Subscribe .
2. When you have reviewed the information on the page, select Continue to Configuration .
3. On the Configure this software page, in the Fulfillment option dropdown, select CloudFormation Template . The Software version is pre-selected.
4. Select your region from the corresponding dropdown, then select Continue to Launch . If you deploy Automation Suite in an existing VPC, make sure that the region you select is the same as the region where your network infrastructure is located. For more information on deploying in an existing VPC, see Table 1. Network choice.
5. On the Launch this software page, leave all the default options unchanged and select Launch .
6. On the Create stack page, leave all the default options unchanged and select Next .
7. On the Specify stack details page, change the stack name if needed. Review the parameters for the template. Provide values for the parameters that require input. For all other parameters, review the default settings and customize them as necessary. For details on each parameter, see . After reviewing and customizing the parameters, choose Next .
8. On the Review and create page, review and confirm the template settings. Under Capabilities , select the two check boxes to acknowledge that the template creates IAM resources and might require the ability to automatically expand macros.
9. Choose Submit to deploy the stack.
10. Monitor the status of the stack. When the status is CREATE_COMPLETE , the UiPath® Automation Suite deployment is ready. Each deployment takes about 1 hour and 25 minutes to complete.
11. To view the created resources, see the values displayed in the Outputs tab for the stack.


### Known issues



