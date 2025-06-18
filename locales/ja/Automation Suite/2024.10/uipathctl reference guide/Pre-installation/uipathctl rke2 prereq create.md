# uipathctl rke2 prereq create

# Description

Create the RKE2 specific prerequisite checks.

uipathctl rke2 prereq create PATH [flags]

# Options

-h, --help          help for create
      --only string   If set, limits the scope of the command to a specific check (e.g., 'rpm')

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
      --excluded strings    components to be excluded from execution, defaults to none
  -f, --force               override all user prompts to true
      --included strings    components to be included in the execution, defaults to all
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -o, --output output       output format. one of [json,yaml,text] (default text)
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --upgrade             include upgrade-related checks
      --versions string     optional path to versions file
