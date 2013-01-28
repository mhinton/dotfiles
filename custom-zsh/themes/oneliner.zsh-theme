# Yay! High voltage and arrows!

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"

ZSH_THEME_REPO_NAME_COLOR="%{$fg[magenta]%}"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg[magenta]%} "
ZSH_THEME_SVN_PROMPT_DIRTY=":✘"
ZSH_THEME_SVN_PROMPT_CLEAN=""

PROMPT='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(svn_prompt_info)%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%} '
RPROMPT='%{$fg[red]%}$(~/.rvm/bin/rvm-prompt i v p g)%{$reset_color%}'
