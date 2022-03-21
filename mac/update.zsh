#!/bin/zsh

set -e

OH_MY_ZSH_PATH="$HOME/.oh-my-zsh/"

if [ -d "$OH_MY_ZSH_PATH" ]; then
  echo "Updating config files in ${OH_MY_ZSH_PATH}..."
  current_path=`dirname $0`
  mv $HOME/.zshrc $HOME/.zshrc.bak
  cp $current_path/oh-my-zsh/.zshrc $HOME/

  mv $HOME/.config.mac.zsh $HOME/.config.mac.zsh.bak
  cp $current_path/oh-my-zsh/.config.mac.zsh $HOME/

  mv $HOME/.config.generic.zsh $HOME/.config.generic.zsh.bak
  cp $current_path/../shared/oh-my-zsh/.config.generic.zsh $HOME/
  
  echo "Done updating oh-my-zsh configs"
else
  echo "${OH_MY_ZSH_PATH} not found. continue..."
fi