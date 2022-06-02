#!/bin/bash
# creates systemd-networkd config files for bridging VMs to LAN
# 
# OTHER CONFIG:
# 1. the hardware NIC on the VM(s) must be configured to utilize the bridge, default would be virbr0
# 2. static IPs can be configured via your router's admin portal
#    - this works by using static MACAddresses, set in this script (for host) and virt-manager (for guests)
# 
# 
# Sources:
# - config setup: https://octetz.com/docs/2020/2020-11-13-vm-networks/
# - config docs: https://wiki.archlinux.org/title/systemd-networkd#network_files
# 

##### CONFIG #####
host_ethernet_device=<todo-fillin>
host_mac_address=<todo-fillin>
bridge_name=br0

config_path=/etc/systemd/network

# creating network config files
sudo mkdir $config_path

sudo cat <<EOF >>$config_path/br.netdev
# creates bridge with static MACAddress
[NetDev]
Name=$bridge_name
Kind=bridge
MACAddress=$host_mac_address
EOF

sudo cat <<EOF >>$config_path/1-br0-bind.network
# binds ethernet device enp8s0 to bridge
[Match]
Name=$host_ethernet_device

[Network]
Bridge=$bridge_name
EOF

sudo cat <<EOF >>$config_path/2-br0-dhpc.network
# enables dhpc on ip resolving on bridge
# note: static ips should be set using router with this method
[Match]
Name=$bridge_name

[Network]
DHCP=ipv4
EOF


# disable NetworkManager to keep from overriding config
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

# restart systemd-networkd to apply network configuration
sudo systemctl restart systemd-networkd

# ensure bridge and ethernet are up
sudo ip link set up $host_ethernet_device
sudo ip link set up $bridge_name
