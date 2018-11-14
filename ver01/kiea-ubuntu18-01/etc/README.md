/etc
====
```
root@KieaUbun18:/etc# du -ka init.d rc*.d
4	init.d/smbd
4	init.d/cron
4	init.d/dns-clean
4	init.d/network-manager
4	init.d/unattended-upgrades
4	init.d/spice-vdagent
4	init.d/avahi-daemon
8	init.d/rsync
4	init.d/saned
4	init.d/dbus
4	init.d/kerneloops
4	init.d/x11-common
4	init.d/kmod
8	init.d/alsa-utils
4	init.d/cups
4	init.d/gdm3
4	init.d/grub-common
4	init.d/uuidd
4	init.d/bluetooth
8	init.d/apparmor
8	init.d/virtualbox
4	init.d/cups-browsed
8	init.d/networking
4	init.d/acpid
4	init.d/console-setup.sh
4	init.d/whoopsie
4	init.d/rsyslog
4	init.d/pppd-dns
4	init.d/speech-dispatcher
4	init.d/plymouth
4	init.d/hwclock.sh
8	init.d/udev
4	init.d/keyboard-setup.sh
4	init.d/plymouth-log
4	init.d/samba-ad-dc
4	init.d/irqbalance
4	init.d/nmbd
4	init.d/procps
4	init.d/ufw
4	init.d/anacron
4	init.d/apport
192	init.d


0	rc0.d/K01nmbd
0	rc0.d/K01alsa-utils
0	rc0.d/K01speech-dispatcher
0	rc0.d/K01irqbalance
0	rc0.d/K01virtualbox
0	rc0.d/K01plymouth
0	rc0.d/K01uuidd
0	rc0.d/K01cups-browsed
0	rc0.d/K01bluetooth
0	rc0.d/K01kerneloops
0	rc0.d/K01gdm3
0	rc0.d/K01networking
0	rc0.d/K01spice-vdagent
0	rc0.d/K01smbd
0	rc0.d/K01unattended-upgrades
0	rc0.d/K01saned
0	rc0.d/K01samba-ad-dc
0	rc0.d/K01avahi-daemon
0	rc0.d/K01rsyslog
4	rc0.d


0	rc1.d/K01nmbd
0	rc1.d/K01whoopsie
0	rc1.d/K01alsa-utils
0	rc1.d/K01ufw
0	rc1.d/K01speech-dispatcher
0	rc1.d/K01irqbalance
0	rc1.d/K01virtualbox
0	rc1.d/K01uuidd
0	rc1.d/K01cups-browsed
0	rc1.d/K01bluetooth
0	rc1.d/K01cups
0	rc1.d/K01kerneloops
0	rc1.d/K01gdm3
0	rc1.d/K01spice-vdagent
0	rc1.d/K01smbd
0	rc1.d/K01saned
0	rc1.d/K01samba-ad-dc
0	rc1.d/K01avahi-daemon
0	rc1.d/K01rsyslog
4	rc1.d


0	rc2.d/S01kerneloops
0	rc2.d/S01smbd
0	rc2.d/S01grub-common
0	rc2.d/S01spice-vdagent
0	rc2.d/S01dbus
0	rc2.d/S01unattended-upgrades
0	rc2.d/S01whoopsie
0	rc2.d/S01irqbalance
0	rc2.d/S01rsyslog
0	rc2.d/S01avahi-daemon
0	rc2.d/S01bluetooth
0	rc2.d/S01cron
0	rc2.d/S01plymouth
0	rc2.d/S01virtualbox
0	rc2.d/S01nmbd
0	rc2.d/S01cups
0	rc2.d/S01acpid
0	rc2.d/S01rsync
0	rc2.d/S01console-setup.sh
0	rc2.d/S01saned
0	rc2.d/S01uuidd
0	rc2.d/S01samba-ad-dc
0	rc2.d/S01apport
0	rc2.d/S01anacron
0	rc2.d/S01gdm3
0	rc2.d/S01cups-browsed
0	rc2.d/S01speech-dispatcher
4	rc2.d


0	rc3.d/S01kerneloops
0	rc3.d/S01smbd
0	rc3.d/S01grub-common
0	rc3.d/S01spice-vdagent
0	rc3.d/S01dbus
0	rc3.d/S01unattended-upgrades
0	rc3.d/S01whoopsie
0	rc3.d/S01irqbalance
0	rc3.d/S01rsyslog
0	rc3.d/S01avahi-daemon
0	rc3.d/S01bluetooth
0	rc3.d/S01cron
0	rc3.d/S01plymouth
0	rc3.d/S01virtualbox
0	rc3.d/S01nmbd
0	rc3.d/S01cups
0	rc3.d/S01acpid
0	rc3.d/S01rsync
0	rc3.d/S01console-setup.sh
0	rc3.d/S01saned
0	rc3.d/S01uuidd
0	rc3.d/S01samba-ad-dc
0	rc3.d/S01apport
0	rc3.d/S01anacron
0	rc3.d/S01gdm3
0	rc3.d/S01cups-browsed
0	rc3.d/S01speech-dispatcher
4	rc3.d


0	rc4.d/S01kerneloops
0	rc4.d/S01smbd
0	rc4.d/S01grub-common
0	rc4.d/S01spice-vdagent
0	rc4.d/S01dbus
0	rc4.d/S01unattended-upgrades
0	rc4.d/S01whoopsie
0	rc4.d/S01irqbalance
0	rc4.d/S01rsyslog
0	rc4.d/S01avahi-daemon
0	rc4.d/S01bluetooth
0	rc4.d/S01cron
0	rc4.d/S01plymouth
0	rc4.d/S01virtualbox
0	rc4.d/S01nmbd
0	rc4.d/S01cups
0	rc4.d/S01acpid
0	rc4.d/S01rsync
0	rc4.d/S01console-setup.sh
0	rc4.d/S01saned
0	rc4.d/S01uuidd
0	rc4.d/S01samba-ad-dc
0	rc4.d/S01apport
0	rc4.d/S01anacron
0	rc4.d/S01gdm3
0	rc4.d/S01cups-browsed
0	rc4.d/S01speech-dispatcher
4	rc4.d


0	rc5.d/S01kerneloops
0	rc5.d/S01smbd
0	rc5.d/S01grub-common
0	rc5.d/S01spice-vdagent
0	rc5.d/S01dbus
0	rc5.d/S01unattended-upgrades
0	rc5.d/S01whoopsie
0	rc5.d/S01irqbalance
0	rc5.d/S01rsyslog
0	rc5.d/S01avahi-daemon
0	rc5.d/S01bluetooth
0	rc5.d/S01cron
0	rc5.d/S01plymouth
0	rc5.d/S01virtualbox
0	rc5.d/S01nmbd
0	rc5.d/S01cups
0	rc5.d/S01acpid
0	rc5.d/S01rsync
0	rc5.d/S01console-setup.sh
0	rc5.d/S01saned
0	rc5.d/S01uuidd
0	rc5.d/S01samba-ad-dc
0	rc5.d/S01apport
0	rc5.d/S01anacron
0	rc5.d/S01gdm3
0	rc5.d/S01cups-browsed
0	rc5.d/S01speech-dispatcher
4	rc5.d


0	rc6.d/K01nmbd
0	rc6.d/K01alsa-utils
0	rc6.d/K01speech-dispatcher
0	rc6.d/K01irqbalance
0	rc6.d/K01virtualbox
0	rc6.d/K01plymouth
0	rc6.d/K01uuidd
0	rc6.d/K01cups-browsed
0	rc6.d/K01bluetooth
0	rc6.d/K01kerneloops
0	rc6.d/K01gdm3
0	rc6.d/K01networking
0	rc6.d/K01spice-vdagent
0	rc6.d/K01smbd
0	rc6.d/K01unattended-upgrades
0	rc6.d/K01saned
0	rc6.d/K01samba-ad-dc
0	rc6.d/K01avahi-daemon
0	rc6.d/K01rsyslog
4	rc6.d


0	rcS.d/S01ufw
0	rcS.d/S01apparmor
0	rcS.d/S01pppd-dns
0	rcS.d/S01udev
0	rcS.d/S01kmod
0	rcS.d/S01plymouth-log
0	rcS.d/S01keyboard-setup.sh
0	rcS.d/S01networking
0	rcS.d/S01x11-common
0	rcS.d/S01dns-clean
0	rcS.d/S01alsa-utils
0	rcS.d/S01procps
4	rcS.d

```


References
----------
- []( ""):
.....
