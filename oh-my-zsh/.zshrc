# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/yxiao6/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  osx
  mvn
  nvm
  npm
  docker
  kubectl
  colored-man-pages
  z 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  zsh-history-substring-search
)


# nvm config
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# aliases
alias zshconfig="vim ~/.zshrc"
alias brewlib="cd /usr/local/Cellar/"
alias grep="grep --color=auto -i"
alias p="python"

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time ip)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
