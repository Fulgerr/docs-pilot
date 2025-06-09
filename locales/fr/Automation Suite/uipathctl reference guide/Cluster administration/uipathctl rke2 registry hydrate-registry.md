# uipathctl rke2 registry hydrate-registry

# Description

Seed the in-cluster docker-registry from the temporary registry. By default, the seed will be performed for all registry pods.

To seed a specific registry pod, use --cluster-registries argument with required pods's IP. To reduce hydration time, you can increase the number of worker thread by passing --num-worker argument. Please ensure all registry pods are in Running state before performing hydration.

uipathctl rke2 registry hydrate-registry [flags]

# Examples

# Seed all registry pods using configuration found in cluster_config.json
uipathctl rke2 registry hydrate-registry cluster_config.json

# Seed specific registry pod having ip 10.42.0.157
uipathctl rke2 registry hydrate-registry cluster_config.json --cluster-registries 10.42.0.157

# Seed all registry pods with 12 worker count
uipathctl rke2 registry hydrate-registry cluster_config.json --num-worker 12

# Options

--cluster-registries strings   List of cluster-registries ip along with port, if not mentioned then all the registry pods considered
  -h, --help                         help for hydrate-registry
      --num-worker int               Number of workers to seed images in parallel (default 3)

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
