# How to delete images from the old installer after upgrade

If you experience issues with image vulnerabilities or storage consumption after performing an upgrade, you can delete the images from the old installer.

Starting with Automation Suite 2023.10.5, you can clean up the previous version images after the upgrade from the in-cluster Docker registry, using the following commands:

* To delete the images that are not needed anymore after upgrade: cd /opt/UiPathAutomationSuite/<new_version>/installer
./bin/uipathctl registry cleanup --manifest versions/docker-images.json
* To delete the on-demand bundles images, you need to specifically remove these images: ./bin/uipathctl registry cleanup --manifest /versions/docker-images.json --images-list images-list.jsonThe following example shows the format of the images-list.json file: {
    "cleanup-list": [
        "aicenter/python39:23.10.0-rc4",
        "image2",
        "image3"
    ]
}

For previous Automation Suite versions, to perform this optional post-upgrade operation, take the following steps:

1. Update IMG, TAG, USER, PASS, registry, and latest_image_json according to the cluster configuration in the following script, then run it: #!/bin/bash

### Please change the following variables as required
IMG=<E.g. dataservice/dataservice-designer>
TAG=<E.g. v20231116-tag>
USER=<E.g. "admin">
PASS=<E.g. "password">
registry=<E.g. "registry.mycluster.com">
latest_image_json=<E.g. "/opt/UiPathAutomationSuite/UiPath_Installer/versions/docker-images.json">
####

[[ -f "${latest_image_json}" ]] || {
	echo "File "$latest_image_json" doesn't exist"
	exit 1
}

cat "${latest_image_json}" | tr -d '",' | grep -w "${IMG}:${TAG}" >> /dev/null && {
	echo "Image ${IMG}:${TAG} is being used in cluster. Will skip the deletion."
	exit 0
}

echo "Deleting image ${IMG}:${TAG}"

cred="-u ${USER}:${PASS}"

for i in `curl -k -H 'Accept: application/vnd.docker.distribution.manifest.v2+json' $cred "https://$registry/v2/$IMG/manifests/$TAG" | jq -r '.layers | .[] | .digest'`; do
	curl -k  -H "Accept: application/vnd.docker.distribution.manifest.v2+json"  $cred -X DELETE "https://$registry/v2/$IMG/manifests/$i"
done

for i in `curl -k -H 'Accept: application/vnd.docker.distribution.manifest.v2+json' $cred "https://$registry/v2/$IMG/manifests/$TAG" | jq -r '.config.digest'`; do
	curl -k  -H "Accept: application/vnd.docker.distribution.manifest.v2+json"  $cred -X DELETE "https://$registry/v2/$IMG/manifests/$i"
done
2. Run the following command in the registry pod and, then, restart the registry pod. registry garbage-collect /etc/docker/registry/config.yaml
