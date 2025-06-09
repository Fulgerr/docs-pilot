# uipathctl snapshot backup disable

# Description

Disable the periodical snapshot backup of the cluster.

uipathctl snapshot backup disable [flags]

# Options

-h, --help            help for disable
  -p, --prefix string   This will prefix the names of all the snapshot backups with the given string.
                        	 (default "snapshot")

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
