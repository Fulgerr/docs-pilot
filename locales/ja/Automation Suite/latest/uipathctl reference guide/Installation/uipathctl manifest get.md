# uipathctl manifest get

# Description

Get prints on stdout the current manifest observed in the cluster. The format is always YAML.

The command will default to the current context in the kubeconfig file. If the --kubeconfig flag is set, it will use the kubeconfig file specified by the flag. Without other flags, the cluster wide configurations and dependencies are not included in the output.

uipathctl manifest get [flags]

# Examples

# Get the current manifest observed in the cluster, without dependencies or cluster wide configurations
uipathctl manifest get
        
# Get the current manifest from the cluster identified by the current context in the kubeconfig file
uipathctl manifest get --kubeconfig /root/kubeconfig

# Get the current manifest, including the cluster wide configurations and the dependencies
uipathctl manifest get --include-config --include-dependencies

# Options

-h, --help                   help for get
      --ignore-errors          ignore errors when getting the manifest
      --include-config         include cluster wide config in the diff
      --include-dependencies   include dependencies in the diff
      --namespace string       The namespace where UiPath Automation Suite is deployed (default "uipath")
  -o, --output output          output format. one of [json,yaml] (default yaml)

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
