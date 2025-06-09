# uipathctl config additional-ca-certificates update

# Description

Append the additional CA certificates from the provided path to the ones already existing in the cluster.

The current additional CA certificates from the cluster are overwritten. The command defaults to the current context in the kubeconfig file. If the --kubeconfig flag is set, it uses the kubeconfig file specified by the flag.

uipathctl config additional-ca-certificates update [flags]

# Examples

# Append to the existing additional ca certificates from the cluster
uipathctl config additional-ca-certificates update --cacert additional_ca.crt
        
# Overwrite the current additional ca certificates from the cluster
uipathctl config additional-ca-certificates update --cacert additional_ca.crt --replace

# Append to the existing additional ca certificates from the cluster identified by the current context in the kubeconfig file
uipathctl config additional-ca-certificates update --cacert additional_ca.crt --kubeconfig cluster.kubeconfig

# Options

--cacert string      path to additional ca certificates
  -h, --help               help for update
      --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
  -r, --replace            if true, the existing additional ca certificates are overwritten

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
