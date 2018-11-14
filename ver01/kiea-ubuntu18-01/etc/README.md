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


References
----------
- []( ""):
.....
