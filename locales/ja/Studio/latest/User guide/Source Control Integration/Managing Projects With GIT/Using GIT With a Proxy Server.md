# Using GIT With a Proxy Server

GIT integration in Studio supports accessing remote repositories if internet access is through a proxy server. This can be done in two ways: either configured at machine level in the Proxy Settings window or by making changes to git commands.

Proxy details configured in the Proxy Settings window are taken into account, without the need of entering them in the .gitconfig file.

To configure proxy details with git commands, add them to GIT configuration files in the following form:

[http "https://domain.com"] proxy = http://proxyUsername:proxyPassword@proxy.server.com:port

GIT configuration files can be found at the following locations:

* config file: %ProgramData%\Git
* .gitconfig file: %UserProfile%
* local config file from project level, for example %UserProfile%\Desktop    estproject\.git .
