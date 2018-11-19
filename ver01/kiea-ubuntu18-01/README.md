Kiea-ubuntu18-01
================
```
- chrome
- virtualbox
- samba        445, 139
- tomcat7(WAS) 8080, 8009, 8005
- nginx(web)   80
- sendmail     25, 587
```
```
$ sudo apt update  <- pkg block
$ sudo apt upgrade  <- latest version of pkg
$ sudo apt list | grep sendmail
$ sudo dpkg --list
$ sudo apt remove sendmail
$ sudo apt purge sendmail
$ sudo apt remove sendmail && sudo apt auroremove
$ sudo aptitude remove <package>
$ sudo dpkg --remove sendmail
```

Service
-------
```
# cd /etc/init.d
# vi test-service
	#!/bin/bash
	### BEGIN INIT INFO
	# Provides:        TestServer
	# Required-Start:  $network
	# Required-Stop:   $network
	# Default-Start:   2 3 4 5
	# Default-Stop:    0 1 6
	# Short-Description: Start/Stop TestServer
	### END INIT INFO

	start() {
		# 여기서 실제 데몬을 시작하는 스크립트 또는 프로그램을 입력해야 한다.
		echo "started" >> /tmp/testserver
	}

	stop() {
		# 여기서 실제 데몬을 중지하는 스크립트 또는 프로그램을 입력해야 한다.
		echo "stopped" >> /tmp/testserver
	}

	case $1 in
		start|stop)
			$1;;
		*)
			echo "[help] $0 <start|stop>";
			exit 1;;
	esac
# chmod 0755 /etc/init.d/test-service
# update-rc.d test-service defaults

# update-rc.d -f test-service remove

```




References
----------
- [How can I uninstall software?](https://askubuntu.com/questions/1143/how-can-i-uninstall-software "How can I uninstall software?"):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):


.....


