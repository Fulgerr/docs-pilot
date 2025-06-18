# Upgrade fails in offline environments

# Description

When performing an Automation Suite upgrade from 2023.4 or earlier to 2023.10 or later in an offline environment, you may encounter the following error: "Error 10024: You already have an offline installation on the VM."

# Solution

To fix the issue, add install_type: offline to the cluster_config.json file.
