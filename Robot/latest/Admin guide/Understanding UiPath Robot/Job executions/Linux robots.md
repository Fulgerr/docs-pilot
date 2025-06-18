# Linux robots

Before the introduction of Linux Robots, UiPath Robots were confined to Windows operating systems, as they were built to interact with Windows-specific technologies.

To expand your automation scope beyond Windows-exclusive operability, we introduced Linux Robots.

A Linux Robot is a version of the Robot built to function in Linux environments, therefore making cross-platform automation possible.

The Robot, together with the Linux operating system and other software dependencies, are bundled into a Docker image. When you use this image to start a Docker container, the resulting container would be a standalone, functional Linux environment where the Robot can operate.

The Docker image is based on the Ubuntu Linux version of the mcr.microsoft.com/dotnet/runtime. All files required by the application are found in the /application/ directory.
