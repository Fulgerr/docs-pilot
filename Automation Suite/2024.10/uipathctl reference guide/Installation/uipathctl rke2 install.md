# uipathctl rke2 install

# Description

Install UiPath components.

uipathctl rke2 install [flags]

# Options

--accept-license-agreement   Accept the license agreement
  -d, --debug                      Run in debug mode
  -h, --help                       help for install
  -i, --input string               Specify input json file
  -k, --install-kubernetes         Install Kubernetes and infrastructure modules
  -j, --join-node string           Type of node to be joined to an existing cluster
      --kubeconfig string          Specify path to the kubeconfig file
  -m, --machines string            Comma separated IP address / hostnames of all the machines
  -o, --output string              Specify output json file
      --region string              Specify region label value
  -r, --restore                    Setup Restore
      --skip-packages-install      Disable installation of package dependencies(helm, jq, etc.)
      --skip-pre-reqs              Skips pre-requisite checks during install
      --zone string                Specify zone label value

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
