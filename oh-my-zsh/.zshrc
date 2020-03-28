# Path to your oh-my-zsh installation.
export ZSH="/Users/yxiao6/.oh-my-zsh"

ZSH_THEME="jason"

plugins=(git z osx docker zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)


# nvm config
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# aliases
alias zshconfig="vim ~/.zshrc"
alias brewlib="cd /usr/local/Cellar/"
alias p="python"

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

