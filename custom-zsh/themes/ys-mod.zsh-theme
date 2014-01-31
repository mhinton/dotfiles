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
    RUBY_PROMPT="%{$fg[blue]%}rvm:(%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg[blue]%})%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT="%{$fg[blue]%}rbenv:(%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg[blue]%})%{$reset_color%}"
  fi
fi

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}on%{$reset_color%} %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}o"

# Prompt format: \n # USER at MACHINE in DIRECTORY on git:BRANCH STATE [TIME] \n $
PROMPT="
%{$fg[cyan]%}%n\
%{$fg[white]%}@\
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%} \
%{$fg[white]%}using \
${RUBY_PROMPT} \
${git_info} \
%{$fg[gray]%}[%*]
%{$fg[white]%}$ %{$reset_color%}"
