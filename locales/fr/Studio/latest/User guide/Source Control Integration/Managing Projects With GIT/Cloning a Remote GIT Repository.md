# Cloning a Remote GIT Repository

1. In the Team tab, select Clone Repository . The Clone a remote GIT repository. window is displayed.
2. Select either Use HTTPS or Use SSH .
3. Type in the Repository URL , and choose an empty Check out directory .
4. Select Use Credentials / Use Key and configure authentication (either sign in with GitHub, enter user and password, enter user and token for HTTPS, or enter private key path and password for SSH).
5. Click Open , Studio opens the project in the Designer panel.
6. In the Open window, select a project.json file to open in Studio.

After cloning a GIT repository to a local working directory, the .git
            subdirectory is created containing the necessary GIT metadata. The metadata includes
            subdirectories for objects, refs, and template files. In addition, a
                HEAD file is also created, which points to the currently checked
            out commit.When opening cloned projects created with
                previous versions of Studio for the first time, project files can be marked as
                modified due to automatic changes when upgrading to the new Studio version. If this
                occurs, commit the automatic changes with a specific commit message (for example,
                "UiPath Studio automatic update").
