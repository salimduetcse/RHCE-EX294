#When you clone a VM, the cloned machine often keeps the same network configuration 
#as the original VM, including the IP address. You need to assign a new IP address to the clone.

#!/bin/bash 

# Check the network connection name
[root@ansible1]# nmcli con show

Example output:
NAME           UUID                                  TYPE      DEVICE
ens160  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx  ethernet  ens160
# Assign a new IP address Replace the IP, gateway, and connection name with your values:
[root@ansible1]# nmcli con mod static-ens160 \
ipv4.addresses 192.168.19.143/24 \
ipv4.gateway 192.168.19.2 \
ipv4.dns 8.8.8.8 \
ipv4.method manual

# Restart the connection
[root@ansible1]# nmcli con down static-ens160
[root@ansible1]# nmcli con up static-ens160
# 4. Verify
[root@ansible1]# ip addr show ens160