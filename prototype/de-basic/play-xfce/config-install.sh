#!/usr/bin/env bash

set -e


### Head: xfce4 ################################################################
#
xfce4_config_install () {
	mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"

	cp ./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	echo "cp ./config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml"


	mkdir -p $HOME/.config/xfce4/panel
	echo "mkdir -p $HOME/.config/xfce4/panel"

	cp ./config/xfce4/panel/whiskermenu-1.rc $HOME/.config/xfce4/panel/whiskermenu-1.rc
	echo "cp ./config/xfce4/panel/whiskermenu-1.rc $HOME/.config/xfce4/panel/whiskermenu-1.rc"

}
#
### Tail: xfce4 ################################################################


### Head: rofi #################################################################
#
rofi_config_install () {
	mkdir -p $HOME/.config/rofi
	echo "mkdir -p $HOME/.config/rofi"

	cp ./config/rofi/config $HOME/.config/rofi/config
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"
}
#
### Tail: rofi #################################################################


### Head: fcitx ################################################################
#
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
#
### Tail: fcitx ################################################################


### Head: gtk3 #################################################################
#
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
#
### Tail: gtk3 #################################################################


### Head: gtk2 #################################################################
#
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
#
### Tail: gtk2 #################################################################


### Head: main #################################################################
#
main_config_install () {
	xfce4_config_install

	rofi_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install
}
#
main_config_install

### Tail: main #################################################################
