# How to disable TX checksum offloading

Checksum offloading on a network card may cause issues in some setups, including on VMware instances and in Cilium. If you encounter such issues, take the following steps:

1. Disable TX checksum offloading by running the
                following commands: For server machines:cat <<EOF | sudo tee /etc/systemd/system/disable-checksum.service
[Unit]
Description=Disable TX Checksum Offload
Before=rke2-server.service
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c "INTERFACE=$(awk '$2 == 00000000 { print $1; exit }' /proc/net/route); ethtool -K \$INTERFACE tx-checksum-ip-generic off || ethtool -K cilium_host tx-checksum-ip-generic off || true"
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl enable disable-checksumFor agent machines:cat <<EOF | sudo tee /etc/systemd/system/disable-checksum.service
[Unit]
Description=Disable TX Checksum Offload
Before=rke2-agent.service
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c "INTERFACE=$(awk '$2 == 00000000 { print $1; exit }' /proc/net/route); ethtool -K \$INTERFACE tx-checksum-ip-generic off || ethtool -K cilium_host tx-checksum-ip-generic off || true"
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl enable disable-checksum
2. Restart the affected instance by taking the steps described in .
