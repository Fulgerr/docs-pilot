# uipathctl snapshot backup create

# Description

Back up the snapshot of the cluster. NAME denotes the name associated with the snapshot backup.

uipathctl snapshot backup create NAME [flags]

# Options

-h, --help   help for create
  -w, --wait   wait until the backup completes (default false)

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
