# ZSH Theme - Jason customized
local return_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%}"

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

local node_version=''
if which node &> /dev/null; then
  node_version='%{$fg[green]%}‹node-$(node -v)›%{$reset_color%}'
fi

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${current_dir} ${node_version} ${git_branch}
${return_status}"

RPROMPT='%{$(echotc UP 1)%}$(git_prompt_status)%{$(echotc DO 1)%}%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}› %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[yellow]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}◒ "
