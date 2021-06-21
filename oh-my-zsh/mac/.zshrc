# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set fzf installation directory path
#export FZF_BASE=/usr/local/Cellar/fzf/0.21.1
# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"
# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"

plugins=(
  git
  osx
  mvn
  nvm
  npm
  yarn
  docker
  docker-compose
  kubectl
  colored-man-pages
  command-not-found
  thefuck
  fzf
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

# extra configs & aliases
[ -f .config.generic ] && source .config.generic
[ -f .config.wsl ] && source .config.wsl
[ -f .config.mac ] && source .config.mac
[ -f .config.work ] && source .config.work

source $ZSH/oh-my-zsh.sh

# disable folder underline style
# these have to be put after source
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"
# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"

# java config
jdk() {
	version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
}
# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
