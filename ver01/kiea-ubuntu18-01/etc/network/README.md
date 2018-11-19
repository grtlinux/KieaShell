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
```

firewall-cmd
------------
```
* samba port
$ sudo firewall-cmd --permanent --add-port=139/tcp
$ sudo firewall-cmd --permanent --add-port=445/tcp

$ sudo firewall-cmd --reload
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

