export ZSH="/home/xiaoyao/.oh-my-zsh"

ZSH_THEME="jason"
plugins=(git git-extras z zsh-autosuggestions)

export ZSH_DISABLE_COMPFIX=true
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

source $ZSH/oh-my-zsh.sh

# aliases
alias p="python"
