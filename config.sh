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
      command "uh-oh, git install and git upgrade both failed"
    fi
  fi
}

# install Vundle, a vim plugin manager
function installVundle() {
  echo "installing vundle..."
  if ! command git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; then
    echo "not able to clone Vundle at destination. Does it already exist?" 
  fi  
}


 cp src/.??* ~ &&
 echo "copied dotfiles..."  &&
installBrew &&
installGit &&
installVundle
