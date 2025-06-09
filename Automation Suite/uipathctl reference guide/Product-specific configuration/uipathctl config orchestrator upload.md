# uipathctl config orchestrator upload

# Description

Upload files, nlog extensions or secure store plugins to storage

uipathctl config orchestrator upload [flags]

# Examples

# Upload files to storage
uipathctl config orchestrator upload --storage-directory /path/to/storage/directory
# Upload nlog extensions to storage
uipathctl config orchestrator upload --nlog-extensions-directory /path/to/nlog/extensions/directory
# Upload secure store plugins to storage
uipathctl config orchestrator upload --securestore-plugins-directory /path/to/securestore/plugins/directory

# Upload files to external storage
uipathctl config orchestrator upload --storage-directory /path/to/storage/directory --is-external-storage
# Upload nlog extensions to external storage
uipathctl config orchestrator upload --nlog-extensions-directory /path/to/nlog/extensions/directory --is-external-storage
# Upload secure store plugins to external storage
uipathctl config orchestrator upload --securestore-plugins-directory /path/to/securestore/plugins/directory --is-external-storage

# Options

-h, --help                                   help for upload
    --is-external-storage                    flag whether the storage is external
    --namespace string                       The namespace where UiPath Automation Suite is deployed (default "uipath")
    --nlog-extensions-directory string       location of the nlog extensions on the local disk
    --securestore-plugins-directory string   location of the securestore plugins on the local disk
    --storage-directory string               location of the storage directory on the local disk

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
