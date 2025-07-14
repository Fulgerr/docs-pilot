# Azure disk not marked as SSD

# Description

An Azure known issue incorrectly shows the rotational flag enabled for the Azure SSD disk. As a result, the Azure disk is not marked as SSD, and the following error occurs when trying to configure the Objectstore disk:

ERROR][2022-08-18T05:26:35+0000]: Rotational device: '/dev/sdf' is not recommended for ceph OSD

# Solution

To fix this issue and mark the Azure SSD disk as non-rotational, run the following commands:

echo "0" > "/sys/block/{raw_device_name}/queue/rotational"
echo "KERNEL==\"${raw_device_name}\", ATTR{queue/rotational}=\"0\"" >> "/etc/udev/rules.d/99-ceph-raw-osd-mark-ssd.rules"
udevadm control --reload
udevadm trigger

Example:

echo "0" > "/sys/block/sdf/queue/rotational"
echo "KERNEL==\"sdf\", ATTR{queue/rotational}=\"0\"" >> "/etc/udev/rules.d/99-ceph-raw-osd-mark-ssd.rules"
udevadm control --reload
udevadm trigger
