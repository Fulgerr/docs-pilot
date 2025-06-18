# Alerts

You must configure alert receivers to prevent issues that may lead to downtime.

## Configuring alerts

You can find uipathctl in the Automation Suite installation folder: .../UiPathAutomationSuite/UiPath_Installer/bin.Before starting configuring alerts, make sure to enable kubectl.

# Adding an email receiver

To add a new email configuration after an installation, run the following command:

./uipathctl config alerts add-email \
  --name test \
  --to "admin@example.com" \
  --from "admin@example.com" \
  --smtp server.mycompany.com \
  --username admin \
  --password somesecret \
  --require-tls \
  --ca-file <path_to_ca_file> \
  --cert-file <path_to_cert_file> \
  --key-file <path_to_key_file> \
  --send-resolved

To send email notifications to multiple recipients, you can create multiple email receivers.

FlagValueExamplenameThe name of the email configurationtestconfigtoThe email address of the receiveradmin@example.comfromThe email address of the senderadmin@example.comSMTPSMTP server URL or IP address and port numberserver.mycompany.com:567usernameAuthentication usernameadminpasswordAuthentication passwordsecurepasswordrequire-tlsBoolean flag to denote that TLS is enabled at the SMTP server.N/Aca-fileFile path containing the CA Certificate of the SMTP server. This is optional if the CA is private../ca-file.crtcert-fileFile path containing the certificate of the SMTP server. This is optional if the certificate is private../cert-file.crtkey-fileFile path containing the private key of the certificate of the SMTP server. This is required if the certificate is private../key-file.crtsend-resolvedBoolean flag to send an email once the alert is resolved.N/A

# Removing an email receiver

To remove an email configuration, you must run the following command. Make sure to pass the name of the email configuration you want to remove.

./uipathctl config alerts remove-email --name test

# Updating an email receiver

To update an email configuration, you must run the following command. Make sure to pass the name of the email configuration you want to update and the additional optional parameters you want to edit. These parameters are the same as the ones for adding a new email configuration. You can pass one or more flags at the same time.

./uipathctl config alerts update-email --name test [additional_flags]


### Adding webhooks to send alerts to external tools

Alert Manager configurations are stored in a secret in Base64-encoded format. To update the secret, take the following steps:

Get the existing Alert Manager configuration in a file called am_config.yaml.kubectl get secret alertmanager-config -n monitoring -o jsonpath="{.data.alertmanager\.yaml}" | base64 --decode > am_config.yaml Configure webhooks. For details, see Alert Manager webhook configuration.Encode the configuration to Base64 format.openssl base64 -in am_config.yaml -out am_config_base64.yamlUpdate the alertmanager.yaml attribute in the secret. Replace the existing Base64-encoded string with the one in am_config_base64.yaml.Check that the configurations are updated in the status section in Alert Manager.

For troubleshooting, refer to the Alert Manager and Prometheus pod logs.


## Testing alerts

To test the alerts, take the following steps:

Log in to Alert Manager by accessing https://monitoring.fqdn/alertmanager.Copy the _oauth2_proxy=<value> cookie.Create a test alert via Postman, as shown in the following example:Method: Post
URL: https://monitoring.fqdn/alertmanager/api/v2/alerts
Headers: 
- Content-Type: application/json
- Cookie: _oauth2_proxy=<value>
Body: [{"labels":{"alertname":"Acme Alert", "severity":"warning"}}]You should now see the alert in Alert Manager.


## Checking currently firing alerts

To view the alerts, navigate to
                Prometheus using https://monitoring.fqdn/metrics and select the
                    Alerts tab. Here you can see all the alerts configured in Automation
                Suite.To view the active alerts,
                            filter the alert status by using the Firing checkbox.For more details about
                            certain alerts, expand the alerts you want to view.


## Silencing alerts

If alerts are too noisy, you can silence them. To do that, take the following steps:

Access Alert Manager using https://monitoring.fqdn/alertmanager.Find the alert in question, and select Silence.Fill in the Creator and Comment details, and select Create. The alert should no longer show on the Monitoring Dashboard or be reported to any of the configured receivers.


## Troubleshooting alerts

If you have issues with the alert receiver configuration, check the logs by running the following command:kubectl logs -n monitoring -l app.kubernetes.io/name=kube-prometheus-stack-prometheus-operator --tail=-1

