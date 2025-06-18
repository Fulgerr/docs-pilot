# Enabling or disabling Extended Languages
        OCR

To use the Extended Languages OCR, you need
                to have a valid license configured. The license is a base64 string file provided by
                UiPath® over email. To obtain the license, file a support ticket under Document UnderstandingExtended Languages OCR License Request.Please note UiPath only issues Extended Languages OCR licenses to
                    end customers of Automation Suite. You need to have a Master Software and
                    Services Agreement signed with UiPath, be a single user of that Automation Suite
                    instance, and have all automations running in the Automation Suite instance,
                    which is solely used by your organization.Obtaining access to Extended
                    Languages OCR involves acceptance of the following additional terms and
                    conditions:Redistribution of the license
                        by the user to other organizations is strictly prohibited. This license is
                        specifically intended for the use of the Extended Languages OCR as part of
                        UiPath Automation Suite, and solely by the entity to which it is
                        provided.Users are obligated to submit
                        usage reports every quarter, with deadlines on March 31st, June 30th, Sept
                        30th, and Dec 31st each year. These reports can be produced by navigating to
                        the uipath-as-platform storage container and compressing
                        the folder path
                            aistorage/org-00000000-0000-0000-0000-000000000001/tenant-00000000-0000-0000-0000-000000000001
                        into a zip file. This zip file is then sent to a UiPath email address that
                        will be provided with the license file.Non-compliance with these conditions will result in the inability to renew
                    Extended OCR licenses.The license file expires after 12 months, so a
                    license renewal is needed every 12 months. There is a one month grace period,
                    after which the container will cease processing requests.After receiving the license string, continue with the steps from this procedure.

After installing or upgrading Automation Suite, configure the cluster_config.json file.You can find the file at the following
                        location:
                        /opt/UiPathAutomationSuite/cluster_config.json.Add the string for Extended Languages OCR in the cluster_config.json file. When receiving the license via email, open the license file with any text
                    editor (for example, Notepad), and copy and paste the string you find inside the
                        license property of the
                        documentunderstanding object.If the documentunderstanding object is not yet configured, you
                    can use the following code to add it:"documentunderstanding": {
    "enabled": true,
    "extendedOcr": {
      "enabled": true,
      "license": "<base64 encoded license string goes here>"
    }
  },If the documentunderstanding object
                        is already configured, copy only the extendedOcr property
                        from the license file without changing any other properties.Execute the Automation Suite installer again using the following command:cd /opt/UiPathAutomationSuite/UiPath_Installer
./install-uipath.sh -i cluster_config.json -s -o output.json --accept-license-agreementGo to the ArgoCD panel, in the Document Understanding section and check if the
                    Extended Languages OCR is displayed.

### Report file

Users are obligated to submit usage reports every quarter, with deadlines on March 31st,
            June 30th, Sept 30th, and Dec 31st each year. These reports can be produced by
            navigating to the uipath-as-platform storage container and compressing
            the folder path
                aistorage/org-00000000-0000-0000-0000-000000000001/tenant-00000000-0000-0000-0000-000000000001
            into a zip file. This zip file is then sent to a UiPath email address that will be
            provided with the license file.

The report file does not contain any document-specific
            information.

For more information on what the report file includes, check the following sample
            file:{
  "year": 2024,
  "month": 10,
  "report": {
    "type": "UsageResponse",
    "meters": [
      {
        "name": "<container name>",
        "quantity": 12.0
      }
    ],
    "apiType": "<api type>",
    "serviceName": "<service name>"
  }
}

