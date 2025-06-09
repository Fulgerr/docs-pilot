# uipathctl config add-host-admin

# Description

Add a host admin and specify their credentials.

The command defaults to the current context in the

kubeconfig

file. If the

--kubeconfig

flag is set, it uses the

kubeconfig

file specified by the flag.

uipathctl config add-host-admin [flags]

# Examples

# Add host admin with the provided username and password in cluster
        uipathctl config add-host-admin --username newadmin --password password

        # Add host admin with the provided username, password and email in cluster
        uipathctl config add-host-admin --username newadmin --email email --password password
        
        # Add host admin with the provided username and password in the cluster identified by the current context in the kubeconfig file
        uipathctl config add-host-admin --username newadmin --password password --kubeconfig cluster.kubeconfig

# Options

-e, --email string       host admin email
  -h, --help               help for add-host-admin
      --namespace string   The namespace where UiPath Automation Suite is deployed (default "uipath")
  -p, --password string    host admin password
  -u, --username string    host admin username

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
