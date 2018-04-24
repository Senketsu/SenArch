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
mainDir="$HOME/Code/Other/SenArch"
tempDir="$HOME/Code/Other/SenArch/data/temp"
dataDir="$HOME/Code/Other/SenArch/data"
buildRoot="$mainDir/build_data/airootfs"
buildHome="$buildRoot/etc/skel"


echo_info () {
  echo "[$me] INFO: $1"
}


build_iso () {
  read -p "[$me] Prompt: Proceed to build the SenArch ISO ? (y/n) | " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    cd "$mainDir/build_data"
    sudo ./build.sh -v
    sudo chmod 777 $mainDir/build_data/out/SenArch*.iso
    sudo mv $mainDir/build_data/out/SenArch*.iso "$mainDir"

    read -p "[$me] Prompt: Remove build_data files ? (Y/n) | " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo_info "Cleaning up ..."
      sudo rm -rf "$mainDir/build_data"
    fi
    echo_info "#########################################################"
    echo_info "###                 ALL DONE !                        ###"
    echo_info "#########################################################"
  else
    echo_info "You can continue the build process later. Bye !~"
  fi
}

copy_senarch_files () {
  echo_info "#########################################################"
  read -p "[$me] Prompt: Copy SenArch build files into your ISO ? (y/n) | " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    sudo cp -r "$mainDir/data" "$buildHome/Documents/SenArch"
    sudo cp -r "$mainDir/docs" "$buildHome/Documents/SenArch"
    sudo cp -r "$mainDir/tools" "$buildHome/Documents/SenArch"
    sudo cp -r "$mainDir/README.md" "$buildHome/Documents/SenArch/README.md"
    sudo cp -r "$mainDir/build.sh" "$buildHome/Documents/SenArch/build.sh"
  else
    sudo rm -rf "$buildHome/Documents/SenArch"
  fi
}

## Copy aaaaaaall the additional files
copy_main_files() {

  sudo cp -r $dataDir/syscfg/* "$buildRoot"
  sudo cp -r $dataDir/scripts/* "$buildRoot/usr/local/bin"
  sudo cp -r $mainDir/tools/* "$buildRoot/usr/local/bin"
  sudo cp -r "$mainDir/docs" "$buildRoot/usr/local/share/doc"
  sudo cp -r "$mainDir/README.md" "$buildHome/README.md"
  sudo cp -r "$mainDir/docs/SenArch_Guide.txt" "$buildHome/SenArch_Guide.txt"
  cd "$buildHome/Documents"
  sudo ln -s ../../../usr/local/share/doc/ArchWiki ./ArchWiki
  cd "$workDir"
}


## Main functions, copy all the shizz to build iso
main () {
  echo_info "#########################################################"
  echo_info "###            SenArch ISO builder.                   ###"
  echo_info "###     This script will build new SenArch ISO.       ###"
  read -p "[$me] Prompt: Do you want to continue ? (y/n) | " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    # Get fresh configs by running SenArch MakeBackup
    mkdir -p "$tempDir"
    $mainDir/tools/samb-configs.sh "$tempDir"
    sudo cp -r "$dataDir/template" "$mainDir/build_data"
    # This is for custom live iso configs if needed
    sudo cp -r "$dataDir/configs/." "$buildHome"
    echo_info "#########################################################"
    echo_info "###    Updating template configs with fresh ones..    ###"
    read -p "[$me] Prompt: Overwrite conflicting files ? (y/n) | " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      sudo cp -rf "$tempDir/." "$buildHome"
    else
      sudo cp -rn "$tempDir/." "$buildHome"
    fi
    sudo rm -rf "$tempDir"
    copy_main_files
    copy_senarch_files
    build_iso
  fi
}




if [ -d "$mainDir/build_data" ]; then
  echo_info "#########################################################"
  echo_info "###      Folder with build data already exists..      ###"
  read -p "[$me] Prompt: Do you want to delete those files ? (Y/n)" -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    sudo rm -rf "$mainDir/build_data"
    main
  fi
else
  main
fi

