export ZSH="/Users/jasonxiao/.oh-my-zsh"

ZSH_THEME="jason"
plugins=(git git-extras z osx docker zsh-autosuggestions)

export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

source $ZSH/oh-my-zsh.sh
export PATH=/usr/local/anaconda3/bin:"$PATH"
export PATH="/usr/local/sbin:$PATH"

# aliases
alias zshconfig="vim ~/.zshrc"
alias brewlib="cd /usr/local/Cellar/"
alias p="python"
