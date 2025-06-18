# Retrieving the latest applied
        configuration from the cluster

It is recommended that you retrieve the configuration file from the cluster before
            attempting an upgrade. This prevents you from overwriting your configuration when
            performing the upgrade.

To retrieve the configuration, take one of the following steps.

If you upgrade from 2023.10.0 or
                later versions, make sure you use the uipathctl commands from the
                base (currently installed) version directory.If you upgrade from versions prior to 2023.10.0:Make sure that you use the configureUiPathAS.sh script from
                        the version of the installer that is currently installed on your system. For
                        instance, if you run version 2023.4, you must use the
                            configureUiPathAS.sh script from 2023.4 to retrieve the
                        file.Manually add the
                            "install_type": "offline" option in the
                            cluster_config.json file. For more details, refer to
                        the Updating the cluster configuration page.

* If you upgrade from versions prior
                    to 2023.10.0, use the following options: Option A: If you
                            already have a cluster_config.json file available, get
                            it by navigating to the installer folder of your current installed
                            Automation Suite version and running the following
                        command:cd /opt/UiPathAutomationSuite/<current_installed_AS>/installer
./configureUiPathAS.sh config get -i /path/to/old/cluster_config.json -o /opt/UiPathAutomationSuite/latest/installer/cluster_config.json Option B: If you do
                            not have a cluster_config.json file available, generate
                            one by navigating to the latest installer folder and running the
                            following
                        command:cd /opt/UiPathAutomationSuite/<current_installed_AS>/installer
./configureUiPathAS.sh config get -o /opt/UiPathAutomationSuite/latest/installer/cluster_config.json
* If you upgrade from 2023.10.0 or
                later versions, generate the config file by navigating to the latest installer
                folder and running the following
                command: cd /opt/UiPathAutomationSuite/<current_installed_AS>/installer
./bin/uipathctl manifest get-revision > /opt/UiPathAutomationSuite/latest/installer/cluster_config.json
