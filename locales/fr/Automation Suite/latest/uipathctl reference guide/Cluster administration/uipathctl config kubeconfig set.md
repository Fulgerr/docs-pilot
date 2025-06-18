# uipathctl config kubeconfig set

# Description

Update the alternative cluster Kubernetes context.

uipathctl config kubeconfig set [flags]

# Options

-d, --debug           Run in debug mode
  -h, --help            help for set
  -m, --multisite       Update the kubeconfig context to connect with the alternative cluster in multisite setup.
      --secret string   Base64 encoded kubeconfig to update the context

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
