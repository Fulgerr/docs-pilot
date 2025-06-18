# Automation Suite Robots-specific configuration

Automation Suite Robots can use package caching to optimize your process runs and allow them to run faster. NuGet packages are fetched from the filesystem instead of being downloaded from the Internet/network. This requires an additional space of minimum 10GB and should be allocated to a folder on the host machine filesystem of the dedicated nodes.

To enable package caching, you need to update the following cluster_config.json parameters:


| Parameter | Default value | Description |
| --- --- ---| packagecaching | true | When set to true, robots use a local cache for package resolution. |
| packagecachefolder | /uipath_asrobots_package_cache | The disk location on the serverless agent node where the packages are stored. |
