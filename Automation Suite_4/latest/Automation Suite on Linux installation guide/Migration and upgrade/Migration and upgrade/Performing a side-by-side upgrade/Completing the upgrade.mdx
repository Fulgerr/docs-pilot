# Completing the upgrade

To complete the upgrade, take the
                following steps:

Edit the cluster_config.json file to point to the cloned
                    databases and, optionally, to the cloned buckets.If you installed Automation Suite in an offline environment and upgrade from
                    2023.4 or earlier to 2023.10 or later, add install_type:
                        offline to the cluster_config.json file.If you have Insights enabled, you must run the following command to ensure that
                    the Insights data persists after the upgrade:kubectl -n uipath create cm migration-lock --from-literal=migration=pending --dry-run=client -o yaml | kubectl apply -f -Running this command will not
                        have any adverse impact if Insights is not enabled.Run the installer on the target cluster:cd /opt/UiPathAutomationSuite/<version>/installer

./bin/uipathctl manifest apply cluster_config.json --versions versions/helm-charts.jsonUpdate the certificates post-installation. For instructions, see: Managing the
                        certificates.Start the skills:sync the
                            skills:uipathctl service aicenter sync-skills [skill_ids]check the skills
                            status:uipathctl service aicenter sync-skill-status [skill_ids]The
                            command can return any of the following statuses:InProgess - skill deployment is in
                                    progress.Failed - skill deployment is failed.OutOfSync - skill is available in the
                                    database; however, it has yet to be deployed.Available - when the skills are deployed
                                    and available to consume.Validate that the target cluster works as expected.uipathctl health checkCheck the state of your new Automation Suite cluster related to data,
                    connectivity, robots, and workflow.Applicable only if you are following the Side-by-side upgrade (identically
                    sized target cluster): You can optionally update the FQDN of the target cluster to be same as the FQDN of the source cluster. Alternatively, you can use a new FQDN.Before updating FQDN, you
                            must add the required certificates to match the FQDN.To update the FQDN, see
                                Configuring the FQDN post-installation.Changing the FQDN also requires new server certificates. If a new
                                certificate is available, you have two options: either continue with
                                the new self-signed certificates configured by the installer
                                automatically, or stop the installation and bring in a new
                                certificate.You can configure the certificate via the
                                    server_certificate field in
                                    cluster_config.json.If you are following the Side-by-side upgrade (single node start), the FQDN
                        update should happen after the target cluster is scaled up.Optionally, if you experience issues with image vulnerabilities or storage
                    consumption, delete the images from the
                        old installer.Enable the backup on the cluster target.
