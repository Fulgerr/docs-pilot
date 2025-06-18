# uipathctl snapshot restore create

# Description

Restore a specific snapshot of the cluster. NAME is the name of the restore and, --from-snapshot accepts the name of the snapshot to restore.

uipathctl snapshot restore create NAME [--from-snapshot SNAPSHOT_NAME] [options] [flags]

# Options

-s, --from-snapshot string   Name of the snapshot to restore
  -h, --help                   help for create
  -w, --wait                   wait until the restore completes (default false)

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
