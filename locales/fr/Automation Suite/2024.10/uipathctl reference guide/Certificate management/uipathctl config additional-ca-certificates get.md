# uipathctl config additional-ca-certificates get

# Description

Get the current additional CA certificates bundle observed in the cluster in pem format.

The command defaults to the current context in the kubeconfig file. If the --kubeconfig flag is set, it uses the kubeconfig file specified by the flag.

uipathctl config additional-ca-certificates get [flags]

# Examples

# Get the additional ca certificates bundle from the cluster
uipathctl config additional-ca-certificates get

# Get the additional ca certificates bundle from the cluster with additional certificate information
uipathctl config additional-ca-certificates get --show-details
        
# Get the additional ca certificates bundle from the cluster identified by the current context in the kubeconfig file
uipathctl config additional-ca-certificates get --kubeconfig cluster.kubeconfig

# Options

-h, --help               help for get
    --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
    --show-details       if true, additional ca certificate information will be printed

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
