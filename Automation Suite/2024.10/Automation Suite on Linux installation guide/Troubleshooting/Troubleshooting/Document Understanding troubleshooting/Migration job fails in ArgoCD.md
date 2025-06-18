# Migration job fails in ArgoCD

# Description

Migration job fails for Document Understanding in ArgoCD.

# Solution

Document Understanding requires the FullTextSearch feature to be enabled on the SQL server. Otherwise, the installation can fail without an explicit error message in this regard, as the migration job fails in ArgoCD.
