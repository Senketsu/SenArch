#!/bin/bash
if [[ $EUID -eq 0 ]]; then
  echo "-----------------------------------"
  echo "This script must NOT be run as root" 1>&2
  echo "-----------------------------------"
  exit 1
fi


workDir=$(pwd)
me=`basename "$0"`
cfgDir="$HOME/.config"
targDir="$workDir/senarch-dotfiles"

echo_info () {
  echo "[$me] INFO: $1"
}


copy_configs () {
  cp -r "$cfgDir/Aporia" "$targDir/.config"
  cp -r "$cfgDir/awesome" "$targDir/.config"
  cp -r "$cfgDir/bleachbit" "$targDir/.config"
  cp -r "$cfgDir/conky" "$targDir/.config"
  mkdir -p "$targDir/.config/Code - OSS/User/"
  cp "$cfgDir/Code - OSS/User/settings.json" "$targDir/.config/Code - OSS/User/settings.json"
  cp "$cfgDir/Code - OSS/User/keybindings.json" "$targDir/.config/Code - OSS/User/keybindings.json"
  cp -r "$cfgDir/deadbeef" "$targDir/.config"
  mkdir -p "$targDir/.config/deluge"
  cp "$cfgDir/deluge/core.conf" "$targDir/.config/deluge/core.conf"
  cp "$cfgDir/deluge/gtkui.conf" "$targDir/.config/deluge/gtkui.conf"
  cp "$cfgDir/deluge/label.conf" "$targDir/.config/deluge/label.conf"
  cp -r "$cfgDir/gtk-3.0" "$targDir/.config"
  cp -r "$cfgDir/hexchat" "$targDir/.config"
  cp -r "$cfgDir/htop" "$targDir/.config"
  cp -r "$cfgDir/mc" "$targDir/.config"
  cp -r "$cfgDir/mcomix" "$targDir/.config"
  cp -r "$cfgDir/Mousepad" "$targDir/.config"
  cp -r "$cfgDir/mpd" "$targDir/.config"
  cp -r "$cfgDir/mpv" "$targDir/.config"
  cp -r "$cfgDir/obs-studio" "$targDir/.config"
  cp -r "$cfgDir/osmo" "$targDir/.config"
  cp -r "$cfgDir/pcmanfm" "$targDir/.config"
  mkdir -p "$targDir/.config/pulse"
  cp "$cfgDir/pulse/client.conf" "$targDir/.config/pulse/client.conf"
  cp "$cfgDir/pulse/default.pa" "$targDir/.config/pulse/default.pa"
  cp -r "$cfgDir/ranger" "$targDir/.config"
  cp -r "$cfgDir/termite" "$targDir/.config"
  cp -r "$cfgDir/transmission-daemon" "$targDir/.config"
  cp -r "$cfgDir/transmission-remote-gtk" "$targDir/.config"
  cp -r "$cfgDir/xpad" "$targDir/.config"
  cp -r "$cfgDir/xarchiver" "$targDir/.config"
  cp "$cfgDir/compton.conf" "$targDir/.config/compton.conf"
  cp "$cfgDir/kritarc" "$targDir/.config/kritarc"
  cp -r "$HOME/.vim" "$targDir"
  cp -r "$HOME/.mpdscribble" "$targDir"
  cp -r "$HOME/.mutt" "$targDir"
  cp -r "$HOME/.ncmpcpp" "$targDir"
  cp -r "$HOME/.newsboat" "$targDir"
  cp -r "$HOME/.themes" "$targDir"
  cp -r "$HOME/.w3m" "$targDir"
  cp -r "$HOME/.weechat" "$targDir"
  mkdir -p "$targDir/.claws-mail"
  cp "$HOME/.claws-mail/accountrc" "$targDir/.claws-mail/accountrc"
  cp "$HOME/.claws-mail/colorlabelrc" "$targDir/.claws-mail/colorlabelrc"
  cp "$HOME/.claws-mail/pagesetuprc" "$targDir/.claws-mail/pagesetuprc"
  cp "$HOME/.claws-mail/passwordstorerc" "$targDir/.claws-mail/passwordstorerc"
  cp "$HOME/.claws-mail/tagsrc" "$targDir/.claws-mail/tagsrc"
  cp "$HOME/.bashrc" "$targDir/.bashrc"
  cp "$HOME/.gitconfig" "$targDir/.gitconfig"
  cp "$HOME/.gtkrc-2.0" "$targDir/.gtkrc-2.0"
  cp "$HOME/.tmux.conf" "$targDir/.tmux.conf"
  cp "$HOME/.xprofile" "$targDir/.xprofile"
  cp "$HOME/.xscreensaver" "$targDir/.xscreensaver"
  cp "$HOME/.weechat-passphrase" "$targDir/.weechat-passphrase"
  cp "$HOME/.zshrc" "$targDir/.zshrc"
  cp -H "$HOME/PassBox.kdbx"  "$targDir/PassBox.kdbx"
}



if [ -z "$1" ]
  then
    echo_info "Starting config backup !"
    mkdir -p "$targDir"
    copy_configs
    apack "SenArch-Configs_$(date +%F).7z" "$targDir"
    rm -rf "$targDir"
    echo_info "DONE ! '$workDir/SenArch-Configs_$(date +%F).7z'"
  else
    if [[ -d $1 ]]; then
      targDir="$1"
      echo_info "Copying configs to: '$targDir' ..."
      copy_configs
      echo_info "DONE !"
    else
      echo "[$me] ERROR:'$1' is not valid directory"
      exit 1
    fi
fi

