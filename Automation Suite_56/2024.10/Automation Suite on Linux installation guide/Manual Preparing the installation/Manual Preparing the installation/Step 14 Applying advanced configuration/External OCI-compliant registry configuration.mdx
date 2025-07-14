# External OCI-compliant registry configuration

To configure an external OCI-compliant registry, update the following parameters in the cluster_config.json file:


| Keys | Value |
| --- ---| registries.docker.url | Default value: registry.uipath.comThe URL or FQDN of the registry to be used by Automation Suite to host the container images. |
| registries.docker.usernameregistries.docker.password | Authentication information to be used for pulling the Docker images from the registry.If one of the values is found in the input file, you must provide both of them when configuring the external registry. |
| registries.docker.pull_secret_value | The registry pull secret.This field is optional. |
| registries.helm.url | Default value: registry.uipath.comThe URL or FQDN of the registry to be used by Automation Suite to host the Helm chart of the service. |
| registries.helm.usernameregistries.helm.password | Authentication information to be used for pulling Helm charts from the registry.If one of the values is found in the input file, you must provide both of them when configuring the external registry. |
| registries.trust.enabled | Enable or disable Connaisseur. Possible values: true and false. |
| registries.trust.public_key | The public key in Base64-encoded format used to validate image signatures. By default, it is set to the public part of the private key used to sign images in Azure Credential Registry. |
| registries.trust.detection_mode | If enabled, Connaisseur only warns when it cannot validate images. It does not block the create/update request. Possible value: true and false. |
| registry_ca_cert | The location of the CA file corresponding to the certificate configured for the registry.If the registry is signed by a private certificate authority hosted on your premises, you must provide it to establish the trust. |

You can use different methods to generate the encoded version of the pull_secret_value, including the one using Docker. For details, see How to generate the encoded pull_secret_value for external registries.

The following configuration sample shows a typical OCI-compliant registry setup:

{
    "registries": {
        "docker": {
            "url": "registry.domain.io",
            "username": "username",
            "password": "password", 
            "pull_secret_value": "pull-secret-value"
        },
        "helm": {
            "url": "registry.domain.io",
            "username": "username",
            "password": "password"
        },
        "trust": {
            "enabled": true,
            "public_key": "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUZrd0V3WUhLb1pJemowQ0FRWUlLb1pJemowREFRY0RRZ0FFNE4vSzNzK2VXUTJHU3NnTTJNcUhsdEplVHlqRQp1UC9sd0dNTnNNUjhUZTI2Ui9TTlVqSVpIdnJKcEx3YmpDc0ZlZUI3L0xZaFFsQzlRdUU1WFhITDZ3PT0KLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tCg==",
            "detection_mode": false
        }
    },
    "registry_ca_cert": "/etc/pki/ca-trust/extracted/ca-bundle.trust.crt"
}

For registries such as Harbor, which require using a project, you must append the
            project name to the registry URL. The requirement applies to the
                registries.docker.url and registries.helm.url
            parameters in the cluster_config.json file, as shown in the
            following example:{
  "registries": {
    "docker": {
      "url": "registry.domain.io/myproject",
      "username": "username",
      "password": "password"
      "pull_secret_value": "pull-secret-value"
    },
    "helm": {
      "url": "registry.domain.io/myproject",
      "username": "username",
      "password": "password"
    }
    "trust": {  
        "enabled": true,  
        "public_key": "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUZrd0V3WUhLb1pJemowQ0FRWUlLb1pJemowREFRY0RRZ0FFNE4vSzNzK2VXUTJHU3NnTTJNcUhsdEplVHlqRQp1UC9sd0dNTnNNUjhUZTI2Ui9TTlVqSVpIdnJKcEx3YmpDc0ZlZUI3L0xZaFFsQzlRdUU1WFhITDZ3PT0KLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tCg==",  
        "detection_mode": false  
    }
  },
  "registry_ca_cert": "/etc/pki/ca-trust/extracted/ca-bundle.trust.crt"
}
