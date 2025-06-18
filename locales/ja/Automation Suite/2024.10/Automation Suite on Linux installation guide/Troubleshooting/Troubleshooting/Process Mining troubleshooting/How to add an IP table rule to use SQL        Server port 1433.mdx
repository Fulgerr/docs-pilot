# How to add an IP table rule to use SQL
        Server port 1433

Only the default SQL Server port 1433 can be used for the Airflow metadata SQL
            server database AutomationSuite_ProcessMining_Metadata. If your
            organization policies or firewall rules do not allow using port 1433, you can redirect
            incoming traffic directed at port 1433 of the SQL Server IP address to a new SQL Server
            IP and port.

Use the following Linux command to add a nat rule in the IP tables
            PREROUTING chain:

iptables -t nat -A PREROUTING -d <sql server IP> -dport 1433 -j DNAT --to-destination <sql server ip>:<sql server port>

Replace <sql server IP> and <sql server
                port> with your respective SQL Server IP address and port number.

This command should be run as a root
                user or a sudo user.

To make the connectivity available from node level as well, an additional rule in the
            output chain is required:

iptables -t nat -A OUTPUT -p tcp -d <sql server IP> --dport 1433 -j DNAT --to-destination <sql server ip>:<sql server port>

The iptables commands needs to be executed on all the nodes of the
            cluster.

To make the IP table rules persistent, run the following command:

iptables-save > /etc/sysconfig/iptables
systemctl enable iptables
