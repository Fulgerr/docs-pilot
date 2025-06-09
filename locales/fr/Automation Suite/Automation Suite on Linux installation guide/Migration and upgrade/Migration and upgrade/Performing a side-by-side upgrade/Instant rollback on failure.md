# Instant rollback on failure

In case of failure or issues during the side-by-side upgrade process, you can instantly roll back to your previous state by disabling maintenance mode on your source cluster. You can then use your source environment just like before as the side-by-side upgrade process does not interfere with the source environment.

To disable maintenance mode, run the following command:

uipathctl cluster maintenance disable
