# Running High Availability with Process Mining

If you are running High Availability (HA) with Process Mining, you must change the Airflow scheduler helm chart from replicas:2 to replicas:1. Multiple replicas of the scheduler are not needed and cause instability when creating process apps and ingesting data with Process Mining.

To change the Airflow scheduler helm chart from replicas:2 to replicas:1, take the following steps:

1. Gain access to the ArgoCD UI by following steps 1-5 in How to Troubleshoot Services During Installation.
2. In the ArgoCD Experience, enter Airflow in the searchbar and open the card.
3. In the Airflow application, use the NAME filter to select the airflow-scheduler and the KINDS filter to select the Deployment to see the deploy step of airflow-scheduler.
4. Select on the airflow-scheduler deploy card to open its details. You should see its summary of KIND set to Deployment and NAME as airflow-scheduler.
5. In the LIVE MANIFEST section, select Edit and locate the section of the manifest under spec: where replicas:2 and the selector match labels for airflow-scheduler.
6. Change the replicas to replicas:1 and select Save.

Selecting the SYNC button in the Airflow application will reset the value back to replicas:2.The value might also be reset if you enable SELF-HEAL in the airflow APP DETAILS screen.
