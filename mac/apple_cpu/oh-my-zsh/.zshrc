# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  macos
  vscode
  mvn
  gradle
  dotenv
  nvm
  npm
  yarn
  kubectl
  colored-man-pages
  colorize
  #command-not-found
  #fzf
  z 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Apple M1 Homebrew 
export PATH="/opt/homebrew/bin:$PATH"

# disable folder underline style
# these have to be put after source
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# ZLE_RPROMPT_INDENT=0
# POWERLEVEL9K_LEGACY_ICON_SPACING=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###########################
###  CLI Tools         ####
###########################

# fzf config
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Set fzf installation directory path
# export FZF_BASE=/usr/local/Cellar/fzf/0.21.1
# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"
# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"


##########################
### Development Tools ####
##########################

# Node.js nvm config
export NVM_DIR="$HOME/.nvm"
# nvm config from brew info nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Java jdk jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Ruby rbenv
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# Python pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


###########################
### User Configuration ####
###########################

# PUT customized configs & alias at the bottom to override existings
[[ ! -f .config.generic.zsh ]] || source .config.generic.zsh
[[ ! -f .config.mac.zsh ]] || source .config.mac.zsh
[[ ! -f .config.work.zsh ]] || source .config.work.zsh

