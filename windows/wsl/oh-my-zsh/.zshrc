export ZSH="/home/xiaoyao/.oh-my-zsh"

ZSH_THEME="jason"
plugins=(git git-extras z zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

export DOCKER_HOST=tcp://localhost:2375

# This loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# aliases
alias work="cd /c/Workspace"
alias pchome="cd /c/Users/Xiao\ Yao/"
alias p="python"

# source at last step
source $ZSH/oh-my-zsh.sh
# these have to be put after source
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
