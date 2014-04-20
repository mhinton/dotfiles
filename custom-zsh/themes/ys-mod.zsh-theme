# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Get the current ruby version in use with RVM:
if [ -e ~/.rvm/bin/rvm-prompt ]; then
    RUBY_PROMPT="%{$fg[blue]%}rvm:%{$reset_color%}(%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg[blue]%}%{$reset_color%})"
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT="%{$fg[blue]%}rbenv:%{$reset_color%}(%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg[blue]%}%{$reset_color%})"
  fi
fi

local git_info='$(git_prompt_info)$(git_prompt_status)$(git_prompt_short_sha)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$reset_color%}:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}~"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}✱"
## ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}𝝙"


local svn_info='$(svn_prompt_info)'

## SVN info
ZSH_THEME_SVN_PROMPT_PREFIX="%{$reset_color%}(%{$fg[cyan]%}svn:"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%})"
# ZSH_THEME_SVN_PROMPT_PREFIX="${PR_RESET}${PR_RED}(svn:"
# ZSH_THEME_SVN_PROMPT_SUFFIX=")%{$reset_color%}"
# ZSH_THEME_SVN_PROMPT_DIRTY="${VCS_DIRTY_COLOR}✘${VCS_SUFIX_COLOR}"
# ZSH_THEME_SVN_PROMPT_CLEAN="${VCS_CLEAN_COLOR}✔${VCS_SUFIX_COLOR}"

vcs_status() {
    if [[ ( $(whence in_svn) != "" ) && ( $(in_svn) == 1 ) ]]; then
        svn_info
    else
        git_info
    fi
}

# Prompt format: \n # DIRECTORY RUBY_VERSION git:BRANCH STATE [TIME] \n $
PROMPT="
%{$fg[yellow]%}${current_dir}%{$reset_color%} \
${RUBY_PROMPT} \
${git_info}${svn_info} \
%{$fg[gray]%}[%*]
%{$fg[white]%}» %{$reset_color%}"
