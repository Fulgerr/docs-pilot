# ArgoCD login failed

# Error details

The error code for this issue is 12001.

# Description

You may fail to log into ArgoCD when using the admin password or the installer may fail with the following error message:

![e343f52-argocdlogin=GUID-E605EA4F-DE98-459B-BB3E-7555E77C5664=1=en=Default](/images/e343f52-argocdlogin=GUID-E605EA4F-DE98-459B-BB3E-7555E77C5664=1=en=Default.png)

# Solution

To fix this issue, enter your password, create a bcrypt password, and run the commands described in the following section:

password="<enter_your_password>"
bcryptPassword=<generate bcrypt password using link https://www.browserling.com/tools/bcrypt >

# Enter your bcrypt password and run the following command
kubectl -n argocd patch secret argocd-secret \
  -p '{"stringData": {
    "admin.password": "<enter you bcryptPassword here>",
    "admin.passwordMtime": "'$(date +%FT%T%Z)'"
  }}'

# Run the following commands
argocdInitialAdminSecretPresent=$(kubectl -n argocd get secret argocd-initial-admin-secret --ignore-not-found )
if [[ -n ${argocdInitialAdminSecretPresent} ]]; then
   echo "Start updating argocd-initial-admin-secret"
   kubectl -n argocd patch secret argocd-initial-admin-secret \
   -p "{
      \"stringData\": {
         \"password\": \"$password\"
      }
   }"
fi
