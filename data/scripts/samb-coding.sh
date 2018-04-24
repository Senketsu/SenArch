#!/bin/bash
if [[ $EUID -eq 0 ]]; then
  echo "-----------------------------------"
  echo "This script must NOT be run as root" 1>&2
  echo "-----------------------------------"
  exit 1
fi
workDir=$(pwd)
codeDir="$HOME/Coding"
mkdir -p $HOME/Coding_BK/$(date +%F)
apack $HOME/Coding_BK/C.7z $codeDir/C
apack $HOME/Coding_BK/Java.7z $codeDir/Java
apack $HOME/Coding_BK/Nim.7z $codeDir/Nim
apack $HOME/Coding_BK/Other.7z "$codeDir/Other Trash"
apack $HOME/Coding_BK/Python.7z $codeDir/Python
apack $HOME/Coding_BK/Shell.7z $codeDir/Shell
apack $HOME/Coding_BK/WebDev.7z $codeDir/WebDev
mv $HOME/Coding_BK/*.7z ~/Coding_BK/$(date +%F)
apack $HOME/Coding_BK/Coding_$(date +%F).7z $HOME/Coding
echo "========================================================================="
echo "@@@ Source codes backup completed !                                   @@@"
echo "@@@ Please check whether the scripts needs updating for new languages.@@@"
echo "@@@ Thank you !~                                                      @@@"
echo "========================================================================="
