#!/bin/zsh

echo "Sync configs from local computer to this config folder"

[ -f "$HOME/.config.generic.zsh" ] && cp $HOME/.config.generic.zsh `dirname $0`/../shared/oh-my-zsh/
[ -f "$HOME/.config.mac.zsh" ] && cp $HOME/.config.mac.zsh `dirname $0`/oh-my-zsh/
[ -f "$HOME/.zshrc" ] && cp $HOME/.zshrc `dirname $0`/oh-my-zsh/

echo "Done"