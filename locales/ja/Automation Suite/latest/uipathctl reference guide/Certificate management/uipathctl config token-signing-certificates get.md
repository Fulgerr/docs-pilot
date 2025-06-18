# uipathctl config token-signing-certificates get

# Description

Get the current Token Signing certificate observed in the cluster in pem format.

The command defaults to the current context in the kubeconfig file. If the --kubeconfig flag is set, it uses the kubeconfig file specified by the flag.

uipathctl config token-signing-certificates get [flags]

# Examples

# Get the current token signing certificate from the cluster
uipathctl config token-signing-certificates get

# Get the current token signing certificate from the cluster with additional certificate information
uipathctl config token-signing-certificates get --show-details
        
# Get the current token signing certificate from the cluster identified by the current context in the kubeconfig file
uipathctl config token-signing-certificates get --kubeconfig cluster.kubeconfig

# Options

-h, --help           help for get
    --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
    --show-details   if true, additional token certificate information will be printed

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 1h0m0s)
