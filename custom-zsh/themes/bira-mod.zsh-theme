# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v p g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'
local svn_info='$(svn_prompt_info)%{$reset_color%}'

PROMPT="╭─${current_dir} ${rvm_ruby} ${svn_info} ${git_branch}
╰─%B$%b "
# RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg_bold[cyan]%}?"

ZSH_THEME_REPO_NAME_COLOR="%{$fg[magenta]%}"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg[magenta]%}]"
ZSH_THEME_SVN_PROMPT_DIRTY=":✘"
ZSH_THEME_SVN_PROMPT_CLEAN=""
