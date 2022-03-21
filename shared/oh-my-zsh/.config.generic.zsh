# zsh
alias zshcfg="nvim ~/.zshrc"

# vim/neovim editor
alias nvimcfg="nvim ~/.config/nvim/init.vim"
alias vimcfg="nvim ~/.config/nvim/init.vim"
alias vim="nvim"

# search
alias h="history | fzf"
alias grep="grep --color=auto -i"

# python
alias p="python3"
alias p2="python"
alias pip="pip3"

# colorls
if (( $+commands[colorls] )); then
  alias l="colorls"
  alias ll="colorls -l"
  alias ld="colorls -lA --sd"
fi
