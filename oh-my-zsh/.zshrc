# Path to your oh-my-zsh installation.
export ZSH="/Users/{YOUR_USERNAME}/.oh-my-zsh"

ZSH_THEME="jason"

plugins=(git z osx docker zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

### User configuration ###

# aliases
alias zshconfig="vim ~/.zshrc"
alias brewlib="cd /usr/local/Cellar/"
alias p="python"



