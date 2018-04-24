#!/bin/bash
echo "@@@ Copying system files to mounted partition."
time cp -ax / /mnt
echo "@@@ Copying boot to /mnt/boot"
cp -vaT /run/archiso/bootmnt/arch/boot/$(uname -m)/vmlinuz /mnt/boot/vmlinuz-linux
echo "@@@ Generating fstab."
genfstab -U /mnt >> /mnt/etc/fstab
echo "@@@ Chrooting to mounted partition.\n Continue with senarch-prepare.sh"
arch-chroot /mnt /bin/bash -c "/usr/local/bin/senarch-prepare.sh"
