# About Version Control

Source control systems prove very handy when developing larger projects that require smooth
      collaboration between multiple users. You can connect Studio automation projects to GIT, SVN,
      or TFS by accessing Home (Studio Backstage View) > Team.

![SourceControl_AboutVersionControl1=GUID-C15B0A8B-2A99-4A66-8F9E-8C6421607A83=1=en=Default](/images/SourceControl_AboutVersionControl1=GUID-C15B0A8B-2A99-4A66-8F9E-8C6421607A83=1=en=Default.png)

The source control plugins for GIT, SVN, and TFS are enabled by default in Studio. You can
      enable or disable them individually from Home (Studio Backstage View) > Tools
      > Plugins.

![SourceControl_AboutVersionControl2=GUID-193787CF-5F29-4D47-A3C7-4D0ED4423F96=1=en=Default](/images/SourceControl_AboutVersionControl2=GUID-193787CF-5F29-4D47-A3C7-4D0ED4423F96=1=en=Default.png)

When a project is open in Studio, the Add to Source Control button in the status bar
      offers shortcuts to GIT Init, Copy to GIT, Add to TFS, and Add to
        SVN.

We recommend adding all the files and
          subfolders in the project folder to source control (the
        .local subfolder is ignored by default). In addition, make sure there are
      no ignore lists such as .gitignore files configured in a way that excludes
      project files and subfolders.

Only the files and subfolders from the project folder (the folder containing the
        project.json file) can be added to source control from Studio. If you want
      to add files or folders from outside the project folder, you must use other source control
      clients.

You cannot connect to
        GIT, TFS and SVN at the same time.

The GIT Version
        Control offers an overview and instructions on how to work with GIT-versioned
      projects in Studio.

The steps for checking in your projects to a TFS or SVN repository are detailed
      in the dedicated pages Managing Projects with TFS and Managing Projects with SVN.

Part of working with versioned files is the possibility to compare changes between the local
      version of the file and the one checked in the repository. You can do so using Workflow Diff.

If you want to compare two similar files in the same automation project, use Compare Files, which is also available for
      unversioned files.

Here is an example of a GIT ignore file:# Compiled source # 
################### 
*.com 
*.class 
*.dll 
*.exe 
*.o 
*.so  

# Packages #
############ 
# it's better to unpack these files and commit the raw source 
# git has its own built in compression methods 
*.7z 
*.dmg 
*.gz 
*.iso 
*.jar 
*.rar 
*.tar 
*.zip  

# Logs and databases # 
###################### 
*.log 
*.sql 
*.sqlite  

# OS generated files #
###################### 
.DS_Store 
.DS_Store? 
._* 
.Spotlight-V100 
.Trashes 
.settings 
ehthumbs.db
Thumbs.db 
desktop.ini  

# Project files 
*.idea
/DocumentUnderstandingProcess/Tests/.pytest_cache/
/DocumentUnderstandingProcess/contentFiles/any/any/pt0/VisualBasic/.local/
/DocumentUnderstandingProcess/contentFiles/any/any/pt1/CSharp/.local/
