# uipathctl cluster migration import

# Description

The command executes the migration from a source directory to a target cluster.

uipathctl cluster migration import [flags]

# Examples

# Import the cluster state from local directory to cluster
        uipathctl cluster migration import

# Options

-h, --help              help for import
      --versions string   path to versions file

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
