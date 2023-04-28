#!/bin/bash

# list of packages to install
packages=(
alsa-utils
amd-ucode
arch-install-scripts
archinstall
b43-fwcutter
base
bind
brltty
broadcom-wl
btrfs-progs
clonezilla
cloud-init
cryptsetup
darkhttpd
ddrescue
dhclient
dhcpcd
diffutils
dmidecode
dmraid
dnsmasq
dosfstools
e2fsprogs
edk2-shell
efibootmgr
espeakup
ethtool
exfatprogs
f2fs-tools
fatresize
fsarchiver
gnu-netcat
gpart
gpm
gptfdisk
grml-zsh-config
grub
hdparm
hyperv
intel-ucode
irssi
iw
iwd
jfsutils
kitty-terminfo
less
lftp
libfido2
libusb-compat
linux
linux-atm
linux-firmware
linux-firmware-marvell
livecd-sounds
lsscsi
lvm2
lynx
man-db
man-pages
mc
mdadm
memtest86+
memtest86+-efi
mkinitcpio
mkinitcpio-archiso
mkinitcpio-nfs-utils
modemmanager
mtools
nano
nbd
ndisc6
nfs-utils
nilfs-utils
nmap
ntfs-3g
nvme-cli
open-iscsi
open-vm-tools
openconnect
openssh
openvpn
partclone
parted
partimage
pcsclite
ppp
pptpclient
pv
qemu-guest-agent
refind
reflector
reiserfsprogs
rp-pppoe
rsync
rxvt-unicode-terminfo
screen
sdparm
sg3_utils
smartmontools
sof-firmware
squashfs-tools
sudo
syslinux
systemd-resolvconf
tcpdump
terminus-font
testdisk
tmux
tpm2-tss
udftools
usb_modeswitch
usbmuxd
usbutils
vim
virtualbox-guest-utils-nox
vpnc
wireless-regdb
wireless_tools
wpa_supplicant
wvdial
xfsprogs
xl2tpd
zsh
mesa
xorg
xorg-server
xorg-apps
xorg-drivers
xorg-xkill
xorg-xinit
xterm
binutils
dosfstools
linux-headers
noto-fonts-emoji
usbutils
xdg-user-dirs
--END OF MINIMAL INSTALL--
alsa-plugins
alsa-utils
autoconf
automake
awesome-terminal-fonts
bash-completion
bind
bison
bluez
bluez-libs
bluez-utils
bridge-utils
btrfs-progs
celluloid
cmatrix
code
cronie
cups
dialog
dmidecode
dnsmasq
dtc
efibootmgr
egl-wayland
exfat-utils
flex
fuse2
fuse3
fuseiso
gamemode
gcc
gimp
gparted
gptfdisk
grub-customizer
gst-libav
gst-plugins-good
gst-plugins-ugly
haveged
htop
jdk-openjdk
kitty
libdvdcss
libtool
lsof
lutris
lzop
m4
make
neofetch
ntfs-3g
ntp
openbsd-netcat
openssh
os-prober
p7zip
papirus-icon-theme
patch
picom
pkgconf
powerline-fonts
pulseaudio
pulseaudio-alsa
pulseaudio-bluetooth
python-notify2
python-psutil
python-pyqt5
python-pip
qemu
snap-pac
snapper
steam
swtpm
synergy
terminus-font
traceroute
ttf-droid
ttf-hack
ttf-roboto
ufw
unrar
unzip
virt-manager
virt-viewer
which
wine-gecko
wine-mono
winetricks
zip
zsh
zsh-syntax-highlighting
zsh-autosuggestions
)

# update package database and upgrade existing packages
sudo pacman -Syu

# install packages
for package in "${packages[@]}"
do
    sudo pacman -S "$package"
done

