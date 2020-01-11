#!/usr/bin/env bash

# installs Homebrew 
function installBrew() {
  echo "installing Homebrew..."
  command /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function installGit() {
  echo "install git via brew..."
  if command brew install git; then
    echo "git successfully installed"
  else
    if command brew updgrade git; then
      echo "git sucessfully upgraded"
    else
      echo "uh-oh, git install and git upgrade both failed"
      return 1
    fi
  fi
}

function installDircolors() {
  echo "retrieving dircolors..."
  if command brew install coreutils; then
      echo "installed coreutils"
      command mkdir ~/.dircolors
      command git clone https://github.com/gibbling666/dircolors.git ~/.dircolors
  fi
}

# install Vundle, a vim plugin manager
function installVundle() {
  echo "installing vundle..."
  if ! command git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; then
    echo "not able to clone Vundle at destination. Does it already exist?" 
  fi  
}

function copyMaxfilesPlist() {
  echo "copying maxfiles.plist..."
  command sudo cp limit.maxfiles.plist /Library/LaunchDaemons/
}

function copyDotfiles() {
  command cp -r src/. ~
  echo "copied dotfiles..."
}

copyDotfiles &&
installBrew &&
installGit &&
installVundle &&
installDircolors &&
copyMaxfilesPlist
