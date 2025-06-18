# Step 1: Removing old Identity cache keys

To remove the old Identity cache keys, take the following steps:

To retrieve the Redis password, run the following command:kubectl --kubeconfig <directory of SF cluster yaml file> get secrets/redb-redis-cluster-db -n uipath --template '{{ .data.password }}' | echo $(base64 -d)To retrieve the Redis port, run the following command:kubectl --kubeconfig <directory of SF cluster yaml file> get secrets/redb-redis-cluster-db -n uipath --template '{{ .data.port }}' | echo $(base64 -d)To access the Redis node, run the following commnad:kubectl  --kubeconfig <directory of SF cluster yaml file>  exec -i -t -n redis-system redis-cluster-0 -c redis-enterprise-node "--" sh -c "clear; (bash || ash || sh)" To delete the old keys, use the retrieved password and port and run the following command:redis-cli -p <Port number> -a <Password> --scan --pattern is:* | xargs redis-cli -p <Port number> -a <Password> del To end the session, run the exit command.
