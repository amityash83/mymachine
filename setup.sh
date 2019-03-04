#!/bin/bash
# script to bootstrap setting up a mac with ansible 

function uninstall {

echo "WARNING : This will remove homebrew and all applications installed through it"
echo -n "are you sure you want to do that? [y/n] : "
read confirmation

if [ $confirmation == "y" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    exit 0
else
  echo "keeping everything intact"
  exit 0
fi
}

if [ $1 == "uninstall" ]; then
    uninstall
fi

echo "==========================================="
echo "Setting up your mac using amityash83/mymachine"
echo "==========================================="

installdir="/tmp/setupmac-$RANDOM"
git clone https://github.com/amityash83/mymachine.git $installdir 

if [ ! -d $installdir ]; then
    echo "failed to find setupmac."
    echo "git cloned failed"
    exit 1
else
    cd $installdir/byansible
    ansible-playbook -i ./hosts playbooks/main.yml --verbose
fi

echo "cleaning up..."
rm -Rfv /tmp/$installdir


# Install Xcode, on macOS, you can't dev without Xcode
# xcode-select --install

# Install HomeBrew, a tool to install CLI tools without copy/paste
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew Cask, a tool to install UI tools without monkey clicking
# brew tap caskroom/cask

echo "and we are done! Enjoy!"

exit 0
