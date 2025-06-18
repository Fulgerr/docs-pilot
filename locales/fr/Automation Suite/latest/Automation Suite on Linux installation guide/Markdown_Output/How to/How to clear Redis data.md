# How to clear Redis data

1. Identify the secret name, password, and port: export KUBECONFIG="/etc/rancher/rke2/rke2.yaml"; export PATH=$PATH:/var/lib/rancher/rke2/bin;
secretName=$(kubectl get redb redis-cluster-db -o jsonpath="{.spec.databaseSecretName}" -n redis-system)
password=$(kubectl get secret $secretName -o jsonpath="{.data.password}" -n redis-system | base64 --decode)
port=$(kubectl get secret $secretName -o jsonpath="{.data.port}" -n redis-system | base64 --decode)
2. Identify the service names: kubectl get secret $secretName -o jsonpath="{.data.service_names}" -n redis-system | base64 --decode
3. Let's assume the output of the previous command is: redis-cluster-db, redis-cluster-db-headless. You must call the following FLUSHALL commands: kubectl exec -ti -n redis-system redis-cluster-0 -- redis-cli -h redis-cluster-db -p $port -a $password FLUSHALL

kubectl exec -ti -n redis-system redis-cluster-0 -- redis-cli -h redis-cluster-db-headless -p $port -a $password FLUSHALL
