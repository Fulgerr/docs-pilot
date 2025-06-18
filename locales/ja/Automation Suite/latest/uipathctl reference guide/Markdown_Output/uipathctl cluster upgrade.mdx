# uipathctl cluster upgrade

# Description

Load the configuration found at the path provided in the argument and drive the state of the cluster to it.

The command will perform a diff between the current state of the cluster and the desired state, and apply the changes to the cluster.

Unlike the apply command, the upgrade command will not install any component that is not already installed.

When the --override flag is present, the list will override the selection found in the input file. The flag is mutually exclusive with the --only flag. When the exclude_components key is present in the input file, the components found in the list are excluded from the installed components. This has the highest priority over all the other flags and it is not mutually exclusive with any of them.

uipathctl cluster upgrade PATH [flags]

# Examples

# Apply the configuration found in input.json, using the versions found in versions.json
        uipathctl cluster upgrade input.json/cluster_config.json --versions versions.json
        
        # Apply the configuration and specify the kubeconfig file to use
        uipathctl cluster upgrade input.json/cluster_config.json --kubeconfig cluster.kubeconfig --versions versions.json

        # Apply the configuration but skip the components installed directly by helm
        uipathctl cluster upgrade --skip-helm input.json/cluster_config.json --versions versions.json

        # Apply the configuration overriding the initial list of components
        uipathctl cluster upgrade --override automation_hub,orchestrator --versions versions.json

# Options

--component-timeout duration   timeout for individual components to be ready (default 15m0s)
  -h, --help                         help for upgrade
      --no-wait                      if true, return immediately after the ArgoCD applications are created
      --only strings                 optional exclusive list of components to apply
      --override strings             optional list to override the components enabled in input.json file
      --skip-helm                    if true, skip components installed directly by helm
      --skip-oss-prereq              if true, skip OSS components prerequisites checks
      --skip-upgrade-readiness       if true, skip backup and maintenance checks
      --versions string              path to versions file

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
