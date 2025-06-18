# uipathctl rke2 node remove

# Description

Gracefully remove the k8s nodes.

uipathctl rke2 node remove [flags]

# Options

-h, --help                     help for remove
      --ignore-lock              [CAUTION] Ignore single instance lock check. Use this only when previous script run failed to remove lock
      --ignore-missing-tainted   Ignore if a replacement tainted node is not available in the cluster
      --ignore-missing-zone      Ignore if a replacement node is not available in the same zone as provided nodes
  -n, --name string              [Required] : Comma separated list of node names to remove from the cluster.

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
