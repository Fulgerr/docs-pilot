# ST-USG-017 - Invalid parameter modifier

Rule ID: ST-USG-017

Scope: Coded workflow

# Description

When the Execute() entry method contains out or
                    ref parameters, an error is shown.

# Recommendation

Avoid declaring out and ref parameters for the
                    Execute() entry method, such as in the following example:

public void Execute(ref string location, out string country)
