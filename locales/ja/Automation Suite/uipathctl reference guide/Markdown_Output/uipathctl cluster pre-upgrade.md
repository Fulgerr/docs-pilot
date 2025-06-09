# uipathctl cluster pre-upgrade

# Description

Load the configuration found at PATH and run pre upgrade operations for RKE2 cluster.

uipathctl cluster pre-upgrade PATH [flags]

# Options

-h, --help                  help for pre-upgrade
      --versions-dir string   Optional path to embedded versions directory

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
