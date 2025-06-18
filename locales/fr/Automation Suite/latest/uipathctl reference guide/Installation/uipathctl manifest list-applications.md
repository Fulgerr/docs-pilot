# uipathctl manifest list-applications

# Description

Load the configuration file found in the parameter, and lists the applications created based on it. The runtime configuration is used to determine which applications are required. The output is always in tabular format. By default, the list is sorted alphabetically.

uipathctl manifest list-applications PATH [flags]

# Examples

# List the applications which are installed based on the configuration found in input.json
uipathctl manifest list-applications input.json
        
# List the applications which are installed based on the configuration found in input.json. 
# Sort them by the order in which they need to be installed based on dependencies between them.
uipathctl manifest list-applications input.json/cluster_config.json --sort-by topological

# List the applications without headers 
uipathctl manifest list-applications input.json/cluster_config.json --no-headers

# Override the initial list of enabled components
uipathctl manifest list-applications input.json/cluster_config.json --override gatekeeper,redis

# Options

-h, --help                 help for list-applications
      --is-required string   to check whether the component needs to install
      --no-headers           if true, print the output without headers
      --override strings     optional list of components to override the components enabled in input.json file
      --sort-by sortBy       if set, sort the output by the given criteria. Valid values are: [alphabetical, topological] (default alphabetical)

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
