# Automation Suite certificate is not trusted from the server where CData Sync is running

When running the CData Sync extraction job, the following error can occur:

Cannot conclude ssl handshake. Cause: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target.

# Possible cause

The error message indicates a possible problem with an Secure Sockets Layer (SSL) handshake, which is the process of validating and initiating communication between two systems over a secure connection.

The system is unable to trace a chain of trust from the certificate provided by the target server back to a trusted root certificate. This is likely due to an issue in the Certificate Authority (CA) chain.

Potentially the certificate is not signed by a known and trusted Certificate Authority. The following section a possible solution to establish trust during SSL communications.

It might also mean that the system does not have the required certificate installed, or that the certificate is expired or invalid.

# Possible solution

To establish a chain of trust, it is necessary to have access to both the root certificate and the intermediate certificates. These certificates collectively make up the Certificate Authority (CA) chain. The root certificate must be trusted by the system, . The intermediate certificates link the trust to your server's certificate.

The Java keystore is available from the following location: C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\bin.

To set up a trusted chain, follow these steps.

1. Configure the Java trust store located at C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\lib\security\cacerts
2. Run the following PowerShell commands in an elevated admin console:keytool -importcert -alias "intermediate-ca" -keystore "C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\lib\security\cacerts" -file .\intermediate-ca.crt -storepass changeit keytool -importcert -alias "root-ca" -keystore "C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\lib\security\cacerts" -file .\root-ca.crt -storepass changeit

The keytool utility is part of the Java Development Kit (JDK) and the Java Runtime Environment (JRE). It resides in the bin directory of the Java installation: C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\bin.changeit is the default trust store password.The intermediate-ca.crt and root-ca.crt files must be in the current directory from where the commands are being run.Make sure to adapt these details based on your actual configuration and setup.

The root and intermediate certificates should now be correctly installed and trusted in the system's certificate store. You should be able to start the extraction run without encountering SSL trust issues.

1. Restart the CData Sync Service using the command Get-Service "CData Sync" | Restart-Service
2. Run the CData Sync extraction job.

The issue should be solved.

The paths shown are for Windows. In case you are using Linux, change the paths to the correct location. The location of the Java trust store is /opt/CDataSync/jre/jdk-17.0.5+8/lib/security/cacerts.

# Diagnose SSL connectivity issues using SSLPoke

SSLPoke in the Java Runtime Environment can be used to test and debug SSL connections. The SSLPoke tool can also help determine if there are any issues with the server's certificate by sending a test SSL/TLS packet to a specified server on a specified port.

You can use the following command to test the root and intermediate certificates that are trusted by your Java application.

&"C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\bin\java.exe" "-Djavax.net.ssl.trustStore=C:\Program Files\CData\CData Sync\jre\jdk-17.0.5+8\lib\security\cacerts" "-Djavax.net.debug=ssl,handshake" SSLPoke localhost 443

Refer to the Atlassian Support documentation for more information on SSLPoke.
