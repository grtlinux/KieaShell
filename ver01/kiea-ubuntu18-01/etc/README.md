/etc
====
```
kiea@KieaUbun18:/etc$ tree -ap init.d rc*.d
init.d
├── [-rwxr-xr-x]  acpid
├── [-rwxr-xr-x]  alsa-utils
├── [-rwxr-xr-x]  anacron
├── [-rwxr-xr-x]  apparmor
├── [-rwxr-xr-x]  apport
├── [-rwxr-xr-x]  avahi-daemon
├── [-rwxr-xr-x]  bluetooth
├── [-rwxr-xr-x]  console-setup.sh
├── [-rwxr-xr-x]  cron
├── [-rwxr-xr-x]  cups
├── [-rwxr-xr-x]  cups-browsed
├── [-rwxr-xr-x]  dbus
├── [-rwxr-xr-x]  dns-clean
├── [-rwxr-xr-x]  gdm3
├── [-rwxr-xr-x]  grub-common
├── [-rwxr-xr-x]  hwclock.sh
├── [-rwxr-xr-x]  irqbalance
├── [-rwxr-xr-x]  kerneloops
├── [-rwxr-xr-x]  keyboard-setup.sh
├── [-rwxr-xr-x]  kmod
├── [-rwxr-xr-x]  network-manager
├── [-rwxr-xr-x]  networking
├── [-rwxr-xr-x]  nmbd
├── [-rwxr-xr-x]  plymouth
├── [-rwxr-xr-x]  plymouth-log
├── [-rwxr-xr-x]  pppd-dns
├── [-rwxr-xr-x]  procps
├── [-rwxr-xr-x]  rsync
├── [-rwxr-xr-x]  rsyslog
├── [-rwxr-xr-x]  samba-ad-dc
├── [-rwxr-xr-x]  saned
├── [-rwxr-xr-x]  smbd
├── [-rwxr-xr-x]  speech-dispatcher
├── [-rwxr-xr-x]  spice-vdagent
├── [-rwxr-xr-x]  udev
├── [-rwxr-xr-x]  ufw
├── [-rwxr-xr-x]  unattended-upgrades
├── [-rwxr-xr-x]  uuidd
├── [-rwxr-xr-x]  virtualbox
├── [-rwxr-xr-x]  whoopsie
└── [-rwxr-xr-x]  x11-common
rc0.d
├── [lrwxrwxrwx]  K01alsa-utils -> ../init.d/alsa-utils
├── [lrwxrwxrwx]  K01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  K01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  K01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  K01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  K01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  K01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  K01networking -> ../init.d/networking
├── [lrwxrwxrwx]  K01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  K01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  K01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  K01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  K01saned -> ../init.d/saned
├── [lrwxrwxrwx]  K01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  K01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  K01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  K01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  K01uuidd -> ../init.d/uuidd
└── [lrwxrwxrwx]  K01virtualbox -> ../init.d/virtualbox
rc1.d
├── [lrwxrwxrwx]  K01alsa-utils -> ../init.d/alsa-utils
├── [lrwxrwxrwx]  K01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  K01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  K01cups -> ../init.d/cups
├── [lrwxrwxrwx]  K01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  K01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  K01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  K01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  K01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  K01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  K01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  K01saned -> ../init.d/saned
├── [lrwxrwxrwx]  K01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  K01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  K01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  K01ufw -> ../init.d/ufw
├── [lrwxrwxrwx]  K01uuidd -> ../init.d/uuidd
├── [lrwxrwxrwx]  K01virtualbox -> ../init.d/virtualbox
└── [lrwxrwxrwx]  K01whoopsie -> ../init.d/whoopsie
rc2.d
├── [lrwxrwxrwx]  S01acpid -> ../init.d/acpid
├── [lrwxrwxrwx]  S01anacron -> ../init.d/anacron
├── [lrwxrwxrwx]  S01apport -> ../init.d/apport
├── [lrwxrwxrwx]  S01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  S01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  S01console-setup.sh -> ../init.d/console-setup.sh
├── [lrwxrwxrwx]  S01cron -> ../init.d/cron
├── [lrwxrwxrwx]  S01cups -> ../init.d/cups
├── [lrwxrwxrwx]  S01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  S01dbus -> ../init.d/dbus
├── [lrwxrwxrwx]  S01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  S01grub-common -> ../init.d/grub-common
├── [lrwxrwxrwx]  S01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  S01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  S01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  S01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  S01rsync -> ../init.d/rsync
├── [lrwxrwxrwx]  S01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  S01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  S01saned -> ../init.d/saned
├── [lrwxrwxrwx]  S01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  S01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  S01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  S01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  S01uuidd -> ../init.d/uuidd
├── [lrwxrwxrwx]  S01virtualbox -> ../init.d/virtualbox
└── [lrwxrwxrwx]  S01whoopsie -> ../init.d/whoopsie
rc3.d
├── [lrwxrwxrwx]  S01acpid -> ../init.d/acpid
├── [lrwxrwxrwx]  S01anacron -> ../init.d/anacron
├── [lrwxrwxrwx]  S01apport -> ../init.d/apport
├── [lrwxrwxrwx]  S01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  S01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  S01console-setup.sh -> ../init.d/console-setup.sh
├── [lrwxrwxrwx]  S01cron -> ../init.d/cron
├── [lrwxrwxrwx]  S01cups -> ../init.d/cups
├── [lrwxrwxrwx]  S01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  S01dbus -> ../init.d/dbus
├── [lrwxrwxrwx]  S01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  S01grub-common -> ../init.d/grub-common
├── [lrwxrwxrwx]  S01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  S01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  S01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  S01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  S01rsync -> ../init.d/rsync
├── [lrwxrwxrwx]  S01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  S01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  S01saned -> ../init.d/saned
├── [lrwxrwxrwx]  S01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  S01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  S01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  S01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  S01uuidd -> ../init.d/uuidd
├── [lrwxrwxrwx]  S01virtualbox -> ../init.d/virtualbox
└── [lrwxrwxrwx]  S01whoopsie -> ../init.d/whoopsie
rc4.d
├── [lrwxrwxrwx]  S01acpid -> ../init.d/acpid
├── [lrwxrwxrwx]  S01anacron -> ../init.d/anacron
├── [lrwxrwxrwx]  S01apport -> ../init.d/apport
├── [lrwxrwxrwx]  S01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  S01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  S01console-setup.sh -> ../init.d/console-setup.sh
├── [lrwxrwxrwx]  S01cron -> ../init.d/cron
├── [lrwxrwxrwx]  S01cups -> ../init.d/cups
├── [lrwxrwxrwx]  S01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  S01dbus -> ../init.d/dbus
├── [lrwxrwxrwx]  S01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  S01grub-common -> ../init.d/grub-common
├── [lrwxrwxrwx]  S01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  S01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  S01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  S01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  S01rsync -> ../init.d/rsync
├── [lrwxrwxrwx]  S01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  S01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  S01saned -> ../init.d/saned
├── [lrwxrwxrwx]  S01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  S01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  S01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  S01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  S01uuidd -> ../init.d/uuidd
├── [lrwxrwxrwx]  S01virtualbox -> ../init.d/virtualbox
└── [lrwxrwxrwx]  S01whoopsie -> ../init.d/whoopsie
rc5.d
├── [lrwxrwxrwx]  S01acpid -> ../init.d/acpid
├── [lrwxrwxrwx]  S01anacron -> ../init.d/anacron
├── [lrwxrwxrwx]  S01apport -> ../init.d/apport
├── [lrwxrwxrwx]  S01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  S01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  S01console-setup.sh -> ../init.d/console-setup.sh
├── [lrwxrwxrwx]  S01cron -> ../init.d/cron
├── [lrwxrwxrwx]  S01cups -> ../init.d/cups
├── [lrwxrwxrwx]  S01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  S01dbus -> ../init.d/dbus
├── [lrwxrwxrwx]  S01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  S01grub-common -> ../init.d/grub-common
├── [lrwxrwxrwx]  S01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  S01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  S01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  S01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  S01rsync -> ../init.d/rsync
├── [lrwxrwxrwx]  S01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  S01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  S01saned -> ../init.d/saned
├── [lrwxrwxrwx]  S01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  S01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  S01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  S01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  S01uuidd -> ../init.d/uuidd
├── [lrwxrwxrwx]  S01virtualbox -> ../init.d/virtualbox
└── [lrwxrwxrwx]  S01whoopsie -> ../init.d/whoopsie
rc6.d
├── [lrwxrwxrwx]  K01alsa-utils -> ../init.d/alsa-utils
├── [lrwxrwxrwx]  K01avahi-daemon -> ../init.d/avahi-daemon
├── [lrwxrwxrwx]  K01bluetooth -> ../init.d/bluetooth
├── [lrwxrwxrwx]  K01cups-browsed -> ../init.d/cups-browsed
├── [lrwxrwxrwx]  K01gdm3 -> ../init.d/gdm3
├── [lrwxrwxrwx]  K01irqbalance -> ../init.d/irqbalance
├── [lrwxrwxrwx]  K01kerneloops -> ../init.d/kerneloops
├── [lrwxrwxrwx]  K01networking -> ../init.d/networking
├── [lrwxrwxrwx]  K01nmbd -> ../init.d/nmbd
├── [lrwxrwxrwx]  K01plymouth -> ../init.d/plymouth
├── [lrwxrwxrwx]  K01rsyslog -> ../init.d/rsyslog
├── [lrwxrwxrwx]  K01samba-ad-dc -> ../init.d/samba-ad-dc
├── [lrwxrwxrwx]  K01saned -> ../init.d/saned
├── [lrwxrwxrwx]  K01smbd -> ../init.d/smbd
├── [lrwxrwxrwx]  K01speech-dispatcher -> ../init.d/speech-dispatcher
├── [lrwxrwxrwx]  K01spice-vdagent -> ../init.d/spice-vdagent
├── [lrwxrwxrwx]  K01unattended-upgrades -> ../init.d/unattended-upgrades
├── [lrwxrwxrwx]  K01uuidd -> ../init.d/uuidd
└── [lrwxrwxrwx]  K01virtualbox -> ../init.d/virtualbox
rcS.d
├── [lrwxrwxrwx]  S01alsa-utils -> ../init.d/alsa-utils
├── [lrwxrwxrwx]  S01apparmor -> ../init.d/apparmor
├── [lrwxrwxrwx]  S01dns-clean -> ../init.d/dns-clean
├── [lrwxrwxrwx]  S01keyboard-setup.sh -> ../init.d/keyboard-setup.sh
├── [lrwxrwxrwx]  S01kmod -> ../init.d/kmod
├── [lrwxrwxrwx]  S01networking -> ../init.d/networking
├── [lrwxrwxrwx]  S01plymouth-log -> ../init.d/plymouth-log
├── [lrwxrwxrwx]  S01pppd-dns -> ../init.d/pppd-dns
├── [lrwxrwxrwx]  S01procps -> ../init.d/procps
├── [lrwxrwxrwx]  S01udev -> ../init.d/udev
├── [lrwxrwxrwx]  S01ufw -> ../init.d/ufw
└── [lrwxrwxrwx]  S01x11-common -> ../init.d/x11-common

0 directories, 218 files


```

iptables
--------
- [How To Protect SSH with Fail2Ban on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04 "How To Protect SSH with Fail2Ban on Ubuntu 14.04"):
```
kiea@KieaUbun18:~$ sudo iptables -L
	Chain INPUT (policy ACCEPT)
	target     prot opt source               destination         

	Chain FORWARD (policy ACCEPT)
	target     prot opt source               destination         

	Chain OUTPUT (policy ACCEPT)
	target     prot opt source               destination         

kiea@KieaUbun18:~$ sudo apt update
	.....
	
kiea@KieaUbun18:~$ sudo apt install -y fail2ban
	패키지 목록을 읽는 중입니다... 완료
	의존성 트리를 만드는 중입니다       
	상태 정보를 읽는 중입니다... 완료
	다음 패키지가 자동으로 설치되었지만 더 이상 필요하지 않습니다:
	  linux-headers-4.15.0-29 linux-headers-4.15.0-29-generic linux-image-4.15.0-29-generic linux-modules-4.15.0-29-generic
	  linux-modules-extra-4.15.0-29-generic
	Use 'sudo apt autoremove' to remove them.
	다음의 추가 패키지가 설치될 것입니다 :
	  python3-pyinotify whois
	제안하는 패키지:
	  mailx monit sqlite3 python-pyinotify-doc
	다음 새 패키지를 설치할 것입니다:
	  fail2ban python3-pyinotify whois
	0개 업그레이드, 3개 새로 설치, 0개 제거 및 8개 업그레이드 안 함.
	398 k바이트 아카이브를 받아야 합니다.
	이 작업 후 2,110 k바이트의 디스크 공간을 더 사용하게 됩니다.
	받기:1 http://kr.archive.ubuntu.com/ubuntu bionic/universe amd64 fail2ban all 0.10.2-2 [329 kB]
	받기:2 http://kr.archive.ubuntu.com/ubuntu bionic/main amd64 python3-pyinotify all 0.9.6-1 [24.7 kB]
	받기:3 http://kr.archive.ubuntu.com/ubuntu bionic/main amd64 whois amd64 5.3.0 [43.7 kB]
	내려받기 398 k바이트, 소요시간 0초 (1,546 k바이트/초)
	Selecting previously unselected package fail2ban.
	(데이터베이스 읽는중 ...현재 200155개의 파일과 디렉터리가 설치되어 있습니다.)
	Preparing to unpack .../fail2ban_0.10.2-2_all.deb ...
	Unpacking fail2ban (0.10.2-2) ...
	Selecting previously unselected package python3-pyinotify.
	Preparing to unpack .../python3-pyinotify_0.9.6-1_all.deb ...
	Unpacking python3-pyinotify (0.9.6-1) ...
	Selecting previously unselected package whois.
	Preparing to unpack .../archives/whois_5.3.0_amd64.deb ...
	Unpacking whois (5.3.0) ...
	fail2ban (0.10.2-2) 설정하는 중입니다 ...
	Created symlink /etc/systemd/system/multi-user.target.wants/fail2ban.service → /lib/systemd/system/fail2ban.service.
	Processing triggers for ureadahead (0.100.0-20) ...
	ureadahead will be reprofiled on next reboot
	whois (5.3.0) 설정하는 중입니다 ...
	Processing triggers for systemd (237-3ubuntu10.6) ...
	Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
	python3-pyinotify (0.9.6-1) 설정하는 중입니다 ...

kiea@KieaUbun18:~$ sudo iptables -L
	Chain INPUT (policy ACCEPT)
	target     prot opt source               destination         

	Chain FORWARD (policy ACCEPT)
	target     prot opt source               destination         

	Chain OUTPUT (policy ACCEPT)
	target     prot opt source               destination         

kiea@KieaUbun18:~$ sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
kiea@KieaUbun18:~$ awk '{ printf "# "; print; }' /etc/fail2ban/jail.conf | sudo tee /etc/fail2ban/jail.local

kiea@KieaUbun18:~$ sudo vim /etc/fail2ban/jail.local

	[DEFAULT]
	.....
	ignoreip = 127.0.0.1/8
	bantime = 600
	findtime = 600
	maxretry = 3

	destemail = root@localhost
	sendername = Fail2Ban
	mta = sendmail

	action = $(action_)s
	.....

	[jail_to_enable]
	......
	enabled = true
	......
	[sshd]
	enabled = true
	port = ssh
	filter = sshd
	# the length of time between login attempts for maxretry. 
	findtime = 600
	# attempts from a single ip before a ban is imposed.
	maxretry = 5
	# the number of seconds that a host is banned for.
	bantime = 3600
	.....

kiea@KieaUbun18:~$ ls /etc/fail2ban/filter.d

kiea@KieaUbun18:~$ sudo apt-get update

kiea@KieaUbun18:~$ sudo apt-get install nginx sendmail iptables-persistent

kiea@KieaUbun18:~$ sudo service fail2ban stop

>>>>> the below job later

kiea@KieaUbun18:~$ sudo service fail2ban stop

kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 

kiea@KieaUbun18:~$ sudo systemctl service enable fail2ban

kiea@KieaUbun18:~$ sudo systemctl service start fail2ban

kiea@KieaUbun18:~$ fail2ban-client restart

kiea@KieaUbun18:~$ fail2ban-client status

kiea@KieaUbun18:~$ fail2ban-client status sshd

kiea@KieaUbun18:~$ ls /etc/fail2ban/filter.d

kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 
kiea@KieaUbun18:~$ 

```

References
----------
- [How To Protect SSH with Fail2Ban on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04 "How To Protect SSH with Fail2Ban on Ubuntu 14.04"):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):
- []( ""):


.....
