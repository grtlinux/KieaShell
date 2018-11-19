network
=======

- [How to restart network on Ubuntu 18.04 Bionic Beaver Linux](https://linuxconfig.org/how-to-restart-network-on-ubuntu-18-04-bionic-beaver-linux)

```
netplan
	$ sudo netplan apply
systemctl
	$ sudo systemctl restart NetworkManager.service
service
	$ sudo service network-manager restart
	$ sudo service networking restart
nmcli
	$ sudo nmcli networking off
	$ sudo nmcli networking on
System V init
	$ sudo /etc/init.d/networking restart
	OR
	$ sudo /etc/init.d/netwok-manager restart
ifup/ifdown
	$ sudo ifdown -a
	$ sudo ifup -a
	$ sudo ifdown eth0 && sudo ifup eth0
```
```
# cat /etc/network/interfaces

# cat /etc/resolv.conf 

# ls -l /etc/resolv.conf 

# route -n

# ifconfig

# nm-tool 

# nslookup ubuntu.com

# dig ubuntuforums.org
```

firewall-cmd
------------
```
* samba port
$ sudo firewall-cmd --permanent --add-port=139/tcp
$ sudo firewall-cmd --permanent --add-port=445/tcp

$ sudo firewall-cmd --reload
```

network setting on ubuntu 16
----------------------------
```
$ ip addr
$ sudo vi /etc/network/interfaces
	# The loopback network interface
	auto lo
	iface lo inet loopback
	
	# The primary network interface
	auto ens160
	# iface ens160 inet dhcp
	iface ens160 inet static
		address 192.168.1.18
		netmask 255.255.255.0
		network 192.168.1.0
		broadcast 192.168.1.255
		gateway 192.168.1.1
		dns-nameservers 168.126.63.1 8.8.8.8
		
$ sudo /etc/init.d/networking restart
< OR >
$ sudo service networking restart
	
```

network setting on ubuntu 18
----------------------------

```
$ ip addr
$ sudo cat /etc/netplan/50-cloud-init.yaml
	# This file is generated from information provided by
	# the datasource.  Changes to it will not persist across an instance.
	# To disable cloud-init's network configuration capabilities, write a file
	# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
	# network: {config: disabled}
	network:
		ethernets:
			enp0s3:
				addresses: []
				dhcp4: true
		version: 2

$ sudo vi /etc/natplan/50-cloud-init.yaml
	# This file is generated from information provided by
	# the datasource.  Changes to it will not persist across an instance.
	# To disable cloud-init's network configuration capabilities, write a file
	# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
	# network: {config: disabled}
	network:
		ethernets:
			enp0s3:
				addresses: [192.168.1.18/24]
				gateway4: 192.168.1.1
				nameservers:
				  addresses: [168.126.63.1,8.8.8.8]
				dhcp4: no
		version: 2

$ sudo netplan apply
$ sudo netplan --debug apply
$ ip addr

```

static ip setting on ubuntu 18.04 using netplan
-----------------------------------------------

```
- VirtualBox에서 네트워크 > 어댑터 추가한다.
- NetworkManager : 이 렌더러를 사용하는 경우에는 X Window 환경에서만 사용
- networkd       : X Window 환경이 아닌경우

$ sudo ls -al /etc/netplan/*.yaml

$ sudo ifconfig -a

	lo: .....
	
	enp0s3: .....(어댑터 1)
	
	enp0s8: .....(어댑터 2)
	
	
< enp0s8 을 사용한다. >

$ sudo cat /etc/netplan/50-cloud-init.yaml

	# This file is generated from information provided by
	# the datasource.  Changes to it will not persist across an instance.
	# To disable cloud-init's network configuration capabilities, write a file
	# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
	# network: {config: disabled}
	network:  
		ethernets:
			enp0s3:
				addresses: []
				dhcp4: true
				optional: true
		version: 2

$ sudo vi /etc/netplan/01-netcfg.yaml

	# This file describes the network interfaces available on your system
	# For more information, see netplan(5).
	network:  
		version: 2
		renderer: networkd
		ethernets:
			enp0s8:
				dhcp4: no
				dhcp6: no
				addresses: [192.168.56.100/24]
				gateway4: 192.168.56.1
				nameservers:
					addresses: [8.8.8.8,8.8.4.4]

$ sudo netplan apply
$ sudo netplan --debug apply

$ ifconfig -a
```

ufw (firewall on ubuntu)
--------
```
$ sudo ufw enable
$ sudo ufw disable
$ sudo ufw status verbose

$ sudo ufw show raw
$ sudo ufw default deny
$ sudo ufw default allow

$ sudo ufw allow 22
$ sudo ufw allow 22/tcp
$ sudo ufw allow 22/udp

$ sudo ufw deny 22
$ sudo ufw deny 22/tcp
$ sudo ufw deny 22/udp
$ sudo ufw delete deny 22/tcp

$ less /etc/services

$ sudo ufw allow ssh
$ sudo ufw deny ssh

$ sudo ufw logging on
$ sudo ufw logging off

$ sudo ufw allow from 192.168.0.100
$ sudo ufw allow from 192.168.0.0/24

$ sudo ufw allow from 192.168.0.100 to any port 22
$ sudo ufw allow from 192.168.0.100 to any port 22 proto tcp

$ sudo cat /etc/ufw/before.rules
	.....
$ sudo ufw status numbered
$ sudo ufw delete 1
$ sudo ufw insert 1 allow from 192.168.0.100

$ sudo ufw enable
$ sudo ufw allow from 192.168.0.3 to any port 22 protp tcp
$ sudo ufw allow 123/udp
$ sudo ufw allow 80/tcp
$ sudo ufw allow 3306/tcp
$ sudo ufw status

```

iptables + fail2ban
-------------------

```
$ sudo apt install fail2ban
...
```


References
----------
- [How to restart network on Ubuntu 18.04 Bionic Beaver Linux](https://linuxconfig.org/how-to-restart-network-on-ubuntu-18-04-bionic-beaver-linux "How to restart network on Ubuntu 18.04 Bionic Beaver Linux"):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):



.....

