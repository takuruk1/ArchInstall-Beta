## Installs packages needed
sudo pacstrap -K /mnt base linux linux-fiirmware --noconfirm
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
echo "arch" >> /etc/hostname
mkinitcpio -P
passwd root root
pause 'Press any key to reboot system, finished.'