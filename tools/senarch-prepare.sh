echo "@@@ Removing unwanted live iso files.."
sed -i 's/Storage=volatile/#Storage=auto/' /etc/systemd/journald.conf
systemctl disable pacman-init.service choose-mirror.service
rm -r /etc/systemd/system/{choose-mirror.service,pacman-init.service,etc-pacman.d-gnupg.mount,getty@tty1.service.d}
rm /etc/systemd/scripts/choose-mirror
rm /etc/systemd/system/getty@tty1.service.d/autologin.conf
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio
echo "@@@ Initializing pacman"
pacman-key --init
pacman-key --populate archlinux
echo "@@@ Updating Syslinux"
syslinux-install_update -i -a -m
echo "@@@ Rebuilding initcpio."
mkinitcpio -p linux
echo "@@@ NOTE: You might need to edit your new fstab /mnt/etc/fstab"
echo "@@@ NOTE: You might need to edit your boot loader config."
echo "          (e.g: /mnt/boot/syslinux/syslinux.cfg)"
echo "@@@ NOTE: You might need to change your boot partition to 32bit."
echo "          (unmount -R /mnt & 'resize2fs -s /dev/x')"
echo "@@@ NOTE: Any other small tweaks before rebooting into your new system."
echo "          (e.g: sudoers, mkinitcpio.conf, changing passwords etc..)"
