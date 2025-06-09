# Step 2: Deploying Automation Suite to GCP

Make sure to go through Step 1: Preparing the GCP deployment before proceeding.

### Configuring the deployment

Once you prepare the GCP environment, you can directly deploy the infrastructure.Take the following steps:

Download the templates from here and unzip them.(Optional) Move the SSH keys generated at Step 1 in the templates folder.The unzipped templates include a terraform.tfvars file with the parameters. Edit them according to your deployment.


### Advanced configuration

If you want to add any new configuration that is exposed via cluster_config.json, follow these steps:

Use your favorite text editor to edit the ./scripts/inputs_schema file from the unzipped package.Change or add the json file as required.Keep in mind that Terraform will replace ${var} variables defined in the metadata.tf with their respective values when altering the inputs_schema file.


### Completing the deployment

Once you set the parameters, take the following steps:

Open a terminal and authenticate to GCP using the following command.gcloud auth application-default loginIn the terminal, go to the folder where you unzipped the templates and run the following commands:terraform init
terraform applyType Yes when asked for approval. The deployment will then run. It usually takes between 1 to 1.5 hours to complete.

