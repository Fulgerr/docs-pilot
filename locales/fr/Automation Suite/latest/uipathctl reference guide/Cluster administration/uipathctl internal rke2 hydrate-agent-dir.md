# uipathctl internal rke2 hydrate-agent-dir

# Description

Copy the infra images to the agent directory on all nodes.

uipathctl internal rke2 hydrate-agent-dir [flags]

# Options

--concurrency int           Number of agent nodes copy images concurrently (default 3)
  -h, --help                      help for hydrate-agent-dir
      --images-filepath string    ImageList filePath
      --is-insecure               Is registry hosted over insecure/http server
      --name string               System upgrade controller plan name
      --password string           Password for source registry
      --src-registry-url string   Source registry URL for copying images
      --tmp-path string           Path to copy uipathcore and Imagelist (default "/tmp")
      --username string           Username for source registry
      --versions string           Artifacts file server URL (default "upgrade-server-service.kube-system.svc.cluster.local:80")

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 1h0m0s)
