# uipathctl prereq create

# Description

Creates the external prerequisites. These are primarily object storage buckets and SQL databases. The SQL databases required for the installation are created on the SQL server if the sql.create_db key is set in the config file. The object storage buckets are created in the cloud provider if the object_storage.create_bucket key is set in the config file.

uipathctl prereq create PATH [flags]

# Examples

# Create all external prerequisites
uipathctl prereq create input.json/cluster_config.json --versions versions.json

# Options

-h, --help                help for create
      --location location   Location where the prerequisites are executed. one of [local, cluster] (default cluster)
  -o, --output output       output format. one of [json,yaml,text] (default text)
      --versions string     Path to the versions file

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
      --excluded strings    components to be excluded from execution, defaults to none
  -f, --force               override all user prompts to true
      --included strings    components to be included in the execution, defaults to all
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --upgrade             include upgrade-related checks
