# Completing an upgrade


### Context

After performing an Automation Suite cluster upgrade, some changes are needed to ensure a new node joins the cluster correctly. To automate the changes, we recommend using the upgradeUiPathAS.sh script.

This page provides instructions on how to replace the Custom Script Extension (CSE) on the compute resources so that new nodes can be added to your cluster when upgrading to a new Automation Suite version.

The process described in the following sections downloads the scripts required to perform some minor modifications to the Azure resources as well as to validate some prerequisites. The scripts are found inside the <targetVersion> and Modules folders. If the process fails, you are asked whether you want to keep the files.

After ensuring that prerequisites are valid, the CustomScriptExtension objects are updated on all our compute resources so that newly added nodes use the Automation Suite <targetVersion>. Lastly, the files on the initial cluster nodes are overwritten, to also match the files from the <targetVersion>.


### Preparation




### Execution

To successfully perform to upgrade to a new Automation Suite version, take the following steps:

Download the upgradeUiPathAS.sh script from here.Navigate to the path where you have downloaded the script and run the following command: chmod +x ./upgradeUiPathAS.sh.Run the upgrade process in interactive or non-interactive mode in a Linux environment:Option A: To run the process in an interactive mode, use the following command:sh upgradeUiPathAS.sh --targetVersion {ASversion}The script asks you to provide a series of parameters during the run. For details on the required parameters, see Deploying Automation Suite to Azure.Option B: To run the process in a non-interactive mode, take the following steps:Create a <targetVersion> folder next to the downloaded script.
Inside the <targetVersion> folder, create a file named paramValues.json with the following structure:{ "param1":"value1", "param2":"value2" }.For details on the required parameters, see Deploying Automation Suite to Azure.Run the upgradeUiPathAS.sh script:sh upgradeUiPathAS.sh --targetVersion {ASversion} --uninteractive trueMake sure to replace {ASversion} with the Automation Suite version in the aforementioned commands. The Automation Suite version can differ from the Azure template version.

