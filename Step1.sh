echo -e "\nFormatting drive, please wait.\n"
wipefs --all /dev/nvme0n1
clear
echo -e "\nCreating BOOT partition.\n"
sgdisk -n 0:0:+512M -t 0:ef00 -c 0:BOOT /dev/nvme0n1
clear
echo -e "\nCreating ROOT partition\n"
sgdisk -n 0:0:0 -t 0:8304 -c 0:ROOT /dev/nvme0n1
clear
echo -e "\nCreating ESP partition\n"
mkfs.fat -F 32 -n "ESP" /dev/nvme0n1p1
clear
echo -e "\nCreating System partition\n"
mkfs.ext4 -L "System" -F /dev/nvme0n1p2
echo -p "\nFinished, please run the next script.\n"