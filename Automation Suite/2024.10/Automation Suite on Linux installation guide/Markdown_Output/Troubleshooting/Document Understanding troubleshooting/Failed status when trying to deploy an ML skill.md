# Failed status when trying to deploy an ML skill

# Description

If you are trying unsuccesfully to deploy a Document Understanding ML Skill on AI Center, check the following solutions.

# Solution 1

If you are installing the Automation Suite offline, please double check if the Document Understanding bundle has been downloaded and installed.

The bundle includes the base image (e.g., model library) for the models to properly run on AI Center after uploading the ML Packages via AI Center UI.

For details about installing Document Understanding bundle, please refer to the documentation here. To add Document Understanding bundle, please follow the documentation to re-run the Document Understanding bundle installation.

# Solution 2

Even if you have installed the Document Understanding bundle for offline installation, another issue might occur along with this error message: modulenotfounderror: no module named 'ocr.release'; 'ocr' is not a package.

When creating a Document Understanding OCR ML Package in AI Center, keep in mind that it cannot be named ocr or OCR, which conflicts with a folder in the package. Please make sure to choose another name.

# Solution 3

Sometimes, intermittently, Document Understanding Model Skill Deployments can fail with Failed to list deployment or Unknown Error when deploying the model for the first time.

The workaround is to try deploying the model again. The second time, the deployment is be faster as most of the deployment work of image building would have been done during the first attempt. Document Understanding ML Packages take around 1-1.5 hours for deploying the first time, and these are faster when deploying them again.
