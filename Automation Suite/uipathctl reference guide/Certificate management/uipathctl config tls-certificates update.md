# uipathctl config tls-certificates update

# Description

Update the TLS certificates with the CA certificate and key provided as arguments.

If the provided key is encrypted, use the --password flag specifying the decryption password. The command defaults to the current context in the kubeconfig file. If the --kubeconfig flag is set, it uses the kubeconfig file specified by the flag.

uipathctl config tls-certificates update [flags]

# Examples

# Update the tls certificates with the provided certificate paths and key path from the cluster
uipathctl config tls-certificates update --cert server.crt --cacert ca.crt --key server.key
        
# Update the tls certificates with the provided certificate paths and encrypted key path from the cluster
uipathctl config tls-certificates update --cert server.crt --cacert ca.crt --key server.key --password password

# Update the tls certificates with the provided certificate paths and key path from the cluster identified by the current context in the kubeconfig file
uipathctl config tls-certificates update --cert server.crt --cacert ca.crt --key server.key --kubeconfig cluster.kubeconfig

# Options

--cacert string      path to ca certificate
      --cert string        path to certificate
  -h, --help               help for update
      --key string         path to certificate key
      --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
      --password string    password for encrypted key
      --use-istio-cert     use existing tls certificates

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
