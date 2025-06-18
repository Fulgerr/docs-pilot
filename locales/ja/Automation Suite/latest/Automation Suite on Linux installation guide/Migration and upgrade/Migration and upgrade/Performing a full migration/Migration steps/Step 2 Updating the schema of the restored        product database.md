# Step 2: Updating the schema of the restored
        product database

This section guides you through the
            process of restoring and updating the Identity and Orchestrator databases using Docker
            or Podman. To identify the images to use for performing the schema update, refer to the
                Migration
                compatibility matrix.

Take the connection string of the restored Identity database and save it in a
                    file, for example cs.txt. Provide sufficient permissions for
                    the file (chmod 666 cs.txt) to be used by the container.Run the Identity database migrator to update the schema of the restored
                    Identity database. You can do this using either Docker or Podman.<podman/docker> run -v <absolute-path-to-cs.txt>:/uipath/secrets/cs.txt <docker-registry>/identity-service-datamigrator:<datamigrator-image-version> /app/UiPath.DataMigrator.Cli.dll install --connectionStringFile /uipath/secrets/cs.txtIf the command fails with [ERR] File '/uipath/secrets/cs.txt' doesn't
                        exist., it could be due to the SELinux security feature. This could
                    occur if you are using a Linux distribution which has this feature enabled. In
                    this case, you must use this command:<podman/docker> run -v <absolute-path-to-cs.txt>:/uipath/secrets/cs.txt:z  <docker-registry>/identity-service-datamigrator:<datamigrator-image-version>  /app/UiPath.DataMigrator.Cli.dll install --connectionStringFile /uipath/secrets/cs.txtExample:root@migration-test:~/migration# podman run -v /root/migration/cs.txt:/uipath/secrets/cs.txt  sfbrdevhelmweacr.azurecr.io/identity-service-datamigrator:25.1.22-alpha-k8.19 /app/UiPath.DataMigrator.Cli.dll install --connectionStringFile /uipath/secrets/cs.txt
[07:29:27 INF] Initializing database connection string from file /uipath/secrets/cs.txt
[07:29:39 INF] Skip adding data masking for non-cloud deploymentTake the connection string of the restored Orchestrator database and save it in
                        .json format, for example
                        app-secrets.jsonin the following format:{ "AppSettings": {}, "ConnectionStrings": {"Default":"<connection-string>"} }Run the Orchestrator database migrator to update the schema of the restored
                    Orchestrator database. You can do this using either Docker or Podman.<podman/docker> run -v <absolute-path-to-app-secrets.json>:/config/app-secrets/values.json <docker-registry>/orchestrator/orchestrator-tools-sf:<orchestrator-migrator-version> ./UiPath.Orchestrator.Cli.dll database upgrade-database --database-type Default --configuration-path ./UiPath.Orchestrator.dll.config --configPaths /config/app-secrets/values.json --verboseExample:root@migration-test:~/migration# podman run -v /root/migration/app-secrets.json:/config/app-secrets/values.json sfbrdevhelmweacr.azurecr.io/orchestrator/orchestrator-tools-sf:24.10.2 ./UiPath.Orchestrator.Cli.dll database upgrade-database --database-type Default --configuration-path ./UiPath.Orchestrator.dll.config --configPaths /config/app-secrets/values.json --verbose
