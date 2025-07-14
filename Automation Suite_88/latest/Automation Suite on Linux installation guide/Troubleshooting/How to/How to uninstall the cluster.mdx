# How to uninstall the cluster

If you experience issues specific to Kubernetes running on the cluster, you can directly uninstall the rke2 cluster.

1. Depending on your installation profile, run one of the following commands: 1.1. In an online setup, run the following script with elevated privileges, i.e. sudo, on each node of the cluster. This will uninstall the nodes. function remove_rke2_entry_from_exclude() {
  local current_exclude_list new_exclude_list
  YUM_CONF_FILE=$1
  if [[ ! -s "${YUM_CONF_FILE}" ]];
  then
    # File is empty
    return
  fi
  current_exclude_list=$(grep 'exclude=' "${YUM_CONF_FILE}" | tail -1)
  if echo "$current_exclude_list" | grep -q 'rke2-*';
  then
    if [[ -w ${YUM_CONF_FILE} ]];
    then
      new_exclude_list=$(printf '%s\n' "${current_exclude_list//rke2-* /}")
      new_exclude_list=$(printf '%s\n' "${new_exclude_list//rke2-*,/}")
      new_exclude_list=$(printf '%s\n' "${new_exclude_list//rke2-\*/}")
      sed -i "/exclude=.*rke2-\*/d" "${YUM_CONF_FILE}"
      echo "${new_exclude_list}" >> "${YUM_CONF_FILE}"
    else
      error "${YUM_CONF_FILE} file is readonly and contains rke2-* under package exclusion. Please remove the entry for AS to work."
    fi
  fi
}

function enable_rke2_package_upgrade() {
  remove_rke2_entry_from_exclude /etc/dnf/dnf.conf
  remove_rke2_entry_from_exclude /etc/yum.conf
}

enable_rke2_package_upgrade

service_exists() {
    local n=$1
    if [[ $(systemctl list-units --all -t service --full --no-legend "$n.service" | cut -f1 -d' ') == $n.service ]]; then
        return 0
    else
        return 1
    fi
}
if service_exists rke2-server; then
  systemctl stop rke2-server
  systemctl disable rke2-server
fi
if service_exists rke2-agent; then
  systemctl stop rke2-agent
  systemctl disable rke2-agent
fi
if [ -e /usr/bin/rke2-killall.sh ]
then
    echo "Running rke2-killall.sh"
    /usr/bin/rke2-killall.sh > /dev/null
else
    echo "File not found: rke2-killall.sh"
fi
if [ -e /usr/bin/rke2-uninstall.sh ]
then
    echo "Running rke2-uninstall.sh"
    /usr/bin/rke2-uninstall.sh > /dev/null
else
    echo "File not found: rke2-uninstall.sh"
fi

crontab -l > backupcron
sed -i '/backupjob/d' backupcron > /dev/null
crontab backupcron > /dev/null
rm -rf backupcron > /dev/null
rm -rfv /usr/bin/backupjob > /dev/null
rm -rfv /etc/rancher/ > /dev/null
rm -rfv /var/lib/rook/ > /dev/null
rm -rfv /var/lib/longhorn/ > /dev/null
rm -rfv /var/lib/rancher/rke2/server/db/* > /dev/null
umount -l -f /var/lib/rancher/rke2/server/db > /dev/null 2>&1 || true
rm -rfv /var/lib/rancher/* > /dev/null
umount -l -f /var/lib/rancher
rm -rfv /var/lib/rancher/* > /dev/null
while ! rm -rfv /var/lib/kubelet/* > /dev/null; do
  findmnt --list   --submounts  -n -o TARGET  --target /var/lib/kubelet | grep '/var/lib/kubelet/plugins'  | xargs -r umount -f -l
  sleep 5
done
umount -l -f /var/lib/kubelet
rm -rfv /var/lib/kubelet/* > /dev/null
rm -rfv /datadisk/* > /dev/null
umount -l -f /datadisk
rm -rfv /datadisk/* > /dev/null
rm -rfv ~/.uipath/* > /dev/null
rm -rfv /etc/sysconfig/rke2-server > /dev/null
rm -rfv /etc/sysconfig/rke2-agent > /dev/null
mount /var/lib/rancher
mkdir -p /var/lib/rancher/rke2/server/db/ && mount -a
rm -rfv /var/lib/rancher/rke2/server/db/* > /dev/null
echo "Uninstall RKE complete." 1.2 In an offline setup, run the following script with elevated privileges, i.e. sudo, on each node of the cluster. This will uninstall the nodes. function remove_rke2_entry_from_exclude() {
  local current_exclude_list new_exclude_list
  YUM_CONF_FILE=$1
  if [[ ! -s "${YUM_CONF_FILE}" ]];
  then
    # File is empty
    return
  fi
  current_exclude_list=$(grep 'exclude=' "${YUM_CONF_FILE}" | tail -1)
  if echo "$current_exclude_list" | grep -q 'rke2-*';
  then
    if [[ -w ${YUM_CONF_FILE} ]];
    then
      new_exclude_list=$(printf '%s\n' "${current_exclude_list//rke2-* /}")
      new_exclude_list=$(printf '%s\n' "${new_exclude_list//rke2-*,/}")
      new_exclude_list=$(printf '%s\n' "${new_exclude_list//rke2-\*/}")
      sed -i "/exclude=.*rke2-\*/d" "${YUM_CONF_FILE}"
      echo "${new_exclude_list}" >> "${YUM_CONF_FILE}"
    else
      error "${YUM_CONF_FILE} file is readonly and contains rke2-* under package exclusion. Please remove the entry for AS to work."
    fi
  fi
}

function enable_rke2_package_upgrade() {
  remove_rke2_entry_from_exclude /etc/dnf/dnf.conf
  remove_rke2_entry_from_exclude /etc/yum.conf
}

enable_rke2_package_upgrade

service_exists() {
    local n=$1
    if [[ $(systemctl list-units --all -t service --full --no-legend "$n.service" | cut -f1 -d' ') == $n.service ]]; then
        return 0
    else
        return 1
    fi
}
if service_exists rke2-server; then
  systemctl stop rke2-server
  systemctl disable rke2-server
fi
if service_exists rke2-agent; then
  systemctl stop rke2-agent
  systemctl disable rke2-agent
fi
if [ -e /usr/local/bin/rke2-killall.sh ]
then
  echo "Running rke2-killall.sh"
  /usr/local/bin/rke2-killall.sh > /dev/null
else
  echo "File not found: rke2-killall.sh"
fi
if [ -e /usr/local/bin/rke2-uninstall.sh ]
then
  echo "Running rke2-uninstall.sh"
  /usr/local/bin/rke2-uninstall.sh > /dev/null
else
    echo "File not found: rke2-uninstall.sh"
fi

crontab -l > backupcron
sed -i '/backupjob/d' backupcron > /dev/null
crontab backupcron > /dev/null
rm -rf backupcron > /dev/null
rm -rfv /usr/bin/backupjob > /dev/null
rm -rfv /etc/rancher/ > /dev/null
rm -rfv /var/lib/rook/ > /dev/null
rm -rfv /var/lib/longhorn/ > /dev/null
rm -rfv /var/lib/rancher/rke2/server/db/* > /dev/null
umount -l -f /var/lib/rancher/rke2/server/db > /dev/null 2>&1 || true
rm -rfv /var/lib/rancher/* > /dev/null
umount -l -f /var/lib/rancher
rm -rfv /var/lib/rancher/* > /dev/null
while ! rm -rfv /var/lib/kubelet/* > /dev/null; do
  findmnt --list   --submounts  -n -o TARGET  --target /var/lib/kubelet | grep '/var/lib/kubelet/plugins'  | xargs -r umount -f -l
  sleep 5
done
umount -l -f /var/lib/kubelet
rm -rfv /var/lib/kubelet/* > /dev/null
rm -rfv /datadisk/* > /dev/null
umount -l -f /datadisk
rm -rfv /datadisk/* > /dev/null
rm -rfv ~/.uipath/* > /dev/null
rm -rfv /etc/sysconfig/rke2-server > /dev/null
rm -rfv /etc/sysconfig/rke2-agent > /dev/null
mount /var/lib/rancher
mkdir -p /var/lib/rancher/rke2/server/db/ && mount -a
rm -rfv /var/lib/rancher/rke2/server/db/* > /dev/null
echo "Uninstall RKE complete."
2. Clean up the OSD disk: for osddisk in $(find /dev/uipath/ceph -maxdepth 1 -mindepth 1 -type l); do
  devName=$(basename "${osddisk}")
  devPath="/dev/${devName}"
  sgdisk --zap-all "${devPath}"
  dd if=/dev/zero of="${devPath}" bs=1M count=100 oflag=direct,dsync
  blkdiscard "${devPath}"
done
ls /dev/mapper/ceph-* | xargs -I% -- dmsetup remove %  
rm -rf /dev/ceph-*
rm -rf /etc/udev/rules.d/99-ceph-raw-osd.rules 3, Reboot the node after uninstall. When uninstalling one of the nodes from the cluster, you must run the following command: kubectl delete node <node_name>. This removes the node from the cluster.
