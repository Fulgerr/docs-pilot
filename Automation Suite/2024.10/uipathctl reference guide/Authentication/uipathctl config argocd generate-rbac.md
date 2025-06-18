# uipathctl config argocd generate-rbac

# Description

The following command generates a sample RBAC configuration file for ArgoCD. See

[RBAC Configuration - Argo CD - Declarative GitOps CD for Kubernetes.](https://argo-cd.readthedocs.io/en/stable/operator-manual/rbac/)

uipathctl config argocd generate-rbac [flags]

# Examples

# Generate a sample rbac configuration file for ArgoCD:
  uipathctl config generate-rbac generate-rbac

# Options

-h, --help   help for generate-rbac

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
