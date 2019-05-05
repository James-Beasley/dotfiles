# Dotfiles

My personal collection of dotfiles. While the files have only been fully tested on Debian, they should be usable on any Linux-based operating system which is compatible with the listed applications.

## Applications

* **Bar:** i3status
* **Display Manager:** LightDM
* **Editor:** Vim
* **Launcher:** Rofi
* **Shell:** fish
* **Terminal:** XTerm
* **Window Manager:** i3-gaps

Some additional utilities are required to get full functionality. This includes `Compton`, `feh`, and `Redshift`.

## Setup

**Note 1:** This script requires `sudo` access, due to the fact that you cannot copy to, or edit the content of `/usr/share/pixmaps/` or `/etc/lightdm/lightdm-gtk-greeter.conf` without permissions.

**Note 2:** This script will overwrite any files you have in the following locations: `~/.vimrc`, `~/.Xresources`, `~/.config/fish/config.fish`, `~/.config/i3/bar`, `~/.config/i3/config`, `/usr/share/pixmaps/wallpaper.jpg`, and `/etc/lightdm/lightdm-gtk-greeter.conf`. Make sure you either have backups of those files, or don't mind them getting overwritten before continuing.

First, download the install script using `wget`:
```
$ wget --no-check-certificate https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/install.sh \
   -O install.sh
```
Then, run the script using `bash`:
```
$ bash install.sh
```

The Vim color scheme I use is `onedark.vim` and is not included in this repository. You can download and install a copy of the color scheme from its [official repository](https://github.com/joshdick/onedark.vim).
