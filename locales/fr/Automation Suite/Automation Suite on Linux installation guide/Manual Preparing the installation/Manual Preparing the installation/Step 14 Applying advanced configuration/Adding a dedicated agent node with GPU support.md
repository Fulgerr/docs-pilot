# Adding a dedicated agent node with GPU support

Automation Suite currently supports only Nvidia GPU drivers. See the list of GPU-supported operating systems.For more on the cloud-specific instance types, see the following:AWSAzureGCPBefore adding dedicated agent node(s) with GPU support, make sure to check Hardware requirements.

### Installing a GPU driver on the
                machine

The
                                                  following instructions apply to both online and
                                                  offline Automation Suite installations. In the
                                                  case of offline installations, you must ensure
                                                  temporary internet access to retrieve the required
                                                  GPU driver dependencies. If you encounter issues
                                                  while installing the GPU driver, contact Nvidia
                                                  support.The
                                                  GPU driver is stored under the
                                                  /opt/nvidia and
                                                  /usr folders. It is highly
                                                  recommended that these folders should be at-least
                                                  5 GB and 15 GB, respectively, on the
                                                  GPU agent machine.

# Untitled Section

To install the GPU driver on the agent node, refer to the Nvidia installation
                                        instructions.


### Adding a GPU node to the cluster




### Enabling the GPU on the cluster

Log in to any server node. Navigate to the installer folder (UiPathAutomationSuite).cd /opt/UiPathAutomationSuiteEnable the GPU on the cluster by running the following command on any server node:sudo ./bin/uipathctl rke2 gpu enable

