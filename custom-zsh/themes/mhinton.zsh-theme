local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"
# call smiley like this ${smiley}
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    svn log -l 1 >/dev/null 2>/dev/null && echo '⚡' && return
    echo '○'
    #echo '' 
}

PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}  %{$reset_color%}%{$fg[red]%}$(~/.rvm/bin/rvm-prompt i v g)%{$reset_color%}  $(svn_prompt_info)$(git_prompt_info)%{$reset_color%}
○ '
RPROMPT='%{$fg_bold[gray]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[magenta]%}"         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}$(git_prompt_status)%{$reset_color%})"             # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[blue]%}✘%{$reset_color%}"                # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"                               # Text to display if the branch is clean

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"

ZSH_THEME_REPO_NAME_COLOR="%{$fg[magenta]%}"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg[magenta]%}]"
ZSH_THEME_SVN_PROMPT_DIRTY=":✘"
ZSH_THEME_SVN_PROMPT_CLEAN=":✔"

ZSH_PROMPT_BASE_COLOR="%{$fg[white]%}"
