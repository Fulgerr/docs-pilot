# uipathctl config saml-certificates update

# Description

Update the future SAML certificate providing the pfx and key as arguments.

The command defaults to the current context in the kubeconfig file. If the --kubeconfig flag is set, it uses the kubeconfig file specified by the flag.

uipathctl config saml-certificates update [flags]

# Examples

# Update the saml certificate with the provided pfx file path and password from the cluster
uipathctl identity update-saml-certificate --cert server.pfx --password password

# Update the saml certificate with the provided pfx file path and password from the cluster identified by the current context in the kubeconfig file
uipathctl identity update-saml-certificate --cert server.pfx --password password --kubeconfig cluster.kubeconfig

# Options

--cert string        path to certificate
  -h, --help               help for update
      --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
      --password string    password for pfx file

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
