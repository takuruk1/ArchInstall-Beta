## Configures yay, and other packages needed.
cd /opt
sudo pacman -Sy
sudo pacman -S git --noconfirm
sudo git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si --noconfirm
