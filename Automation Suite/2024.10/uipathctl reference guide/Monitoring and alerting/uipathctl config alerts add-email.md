# uipathctl config alerts add-email

# Description

Add email receiver for Alertmanager.

uipathctl config alerts add-email [flags]

# Example

# Adds new email receiver based on parameters passed in command
        uipathctl config alerts add-email --name test --to "admin@example.com" --from "admin@example.com" --smtp "server.mycompany.com:443" --username admin --password "somepassword" --require-tls --ca-file "file path too rootCA" --cert-file "file path too server certificate" --key-file "file path too server key file"

# Options

--ASEA               Boolean flag to denote whether the cluster is ASEA or not
      --ca-file string     File path containing the CA certificate of the SMTP server. This parameter is optional if the CA is private
      --cert-file string   File path containing the certificate of the SMTP server. This parameter is optional if the certificate is private
      --from string        The sender's email address
  -h, --help               help for add-email
      --key-file string    File path containing the private key of the certificate for the SMTP server. This parameter is required if the certificate is private
      --name string        Name of the email configuration
      --password string    SMTP authentication Password
      --require-tls        Boolean flag to denote that TLS is enabled at the SMTP server
      --send-resolved      Boolean flag to denote whether to send email on resolved alert (default true)
      --smtp string        SMTP server URL or IP, including port
      --to string          Receiver's email address
      --username string    SMTP authentication Username

# Options inherited from parent commands

--context string      name of the kubeconfig context to use
  -f, --force               override all user prompts to true
      --kubeconfig string   kubectl configuration file (default: ~/.kube/config)
      --log-format string   log format. one of [text,json] (default "text")
      --log-level string    set log level. one of [trace,debug,info,error] (default "error")
  -q, --quiet               suppress all output except for errors and warnings
      --timeout duration    timeout of the command (default 5h0m0s)
      --versions string     optional path to versions file
