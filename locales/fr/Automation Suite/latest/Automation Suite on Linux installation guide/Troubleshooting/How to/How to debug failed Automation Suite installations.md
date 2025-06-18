# How to debug failed Automation Suite installations

# Untitled Section

If the Automation Suite installation fails while running the uipathctl installer, take the following steps to debug it:

1. Check if the nodes are active.For server nodes, run sudo systemctl status rke2-server.For agent nodes, run sudo systemctl status rke2-agent.If the nodes are active, but the installation failed, use the diagnostic tool to troubleshoot.If a node is inactive, check the installation logs for any errors.
2. Capture basic installation logs.The installer prints the installation log location when using uipathctl.Troubleshooting can also be done based on the logs available in ArgoCD, Istio, or on the machine itself. For more details, see Exploring logs.
3. Capture all installation logs.To capture all logs related to the Automation Suite installation, download the rke2logCollector.sh script from GitHub and run it under the root account.The script collects the following data:system infonetwork infodocker infok3s inforke2 inforancher logsk8s component logssystem pod logsnginx-proxy infok3s cluster logssystem pod logsrke2 cluster logsrke2 system pod logsrke2 agent/server logssystem logs from /var/logsystem logs from journaldk8s directory statek8s certificatesk3s directory statek3s certificatesk3s server certificatesrke2 directory staterke2 certificatesrke2 server certificatesrke etcd infoetcdctl outputrke2 etcd info
