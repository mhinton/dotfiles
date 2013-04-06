# prompt style and colors based on Steve Losh's Prose theme:
# http://github.com/sjl/oh-my-zsh/blob/master/themes/prose.zsh-theme
#
# vcs_info modifications from Bart Trojanowski's zsh prompt:
# http://www.jukie.net/bart/blog/pimping-out-zsh-prompt
#
# git untracked files modification from Brian Carper:
# http://briancarper.net/blog/570/git-info-in-your-zsh-prompt

# function virtualenv_info {
#     [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
# }
PR_GIT_UPDATE=1

autoload -U add-zsh-hook
autoload -Uz vcs_info

#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
# http://guns.github.com/xterm-color-table.vim/images/xterm-color-table.png
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    # hotpink="%F{161}"
    hotpink="%F{9}"
    limegreen="%F{118}"
    yellow="%F{11}"
    grey="%F{60}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
    yellow="$fg_bold[yellow]"
fi

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true

# set formats
# %a - action (e.g. rebase-i)
# %b - branchname
# %c - stagedstr (see below)
# %i - current revision number of identifier
# %R - repository path
# %S - path in the repository
# %s - the vcs in use (git, svn, etc.)
# %u - unstagedstr (see below)
PR_RST="%{${reset_color}%}"
FMT_BRANCH="(%{$turquoise%}%b%u%c${PR_RST}:%i${PR_RST})"
FMT_ACTION="(%{$limegreen%}%a${PR_RST})"
FMT_UNSTAGED="%{$yellow%}⚡"
FMT_STAGED="%{$limegreen%}●"

zstyle ':vcs_info:*:prompt:*' unstagedstr   "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr     "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' branchformat '%b:%r'
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""


function steeef_preexec {
    case "$(history $HISTCMD)" in
        *git*)
            PR_GIT_UPDATE=1
            ;;
        *svn*)
            PR_GIT_UPDATE=1
            ;;
    esac
}
add-zsh-hook preexec steeef_preexec

function steeef_chpwd {
    PR_GIT_UPDATE=1
}
add-zsh-hook chpwd steeef_chpwd

function steeef_precmd {
    if [[ -n "$PR_GIT_UPDATE" ]] ; then
        # check for untracked files or updated submodules, since vcs_info doesn't
        if git ls-files --other --exclude-standard --directory 2> /dev/null | grep -q "."; then
            PR_GIT_UPDATE=1
            # FMT_BRANCH="%{$fg[magenta]%}%s:${PR_RST}(%{$turquoise%}%b$%u%c%{$hotpink%}?${PR_RST}) %{$fg[magenta]%}%.7i${PR_RST}"
            FMT_BRANCH="%{$fg[white]%}%s:${PR_RST}(%{$fg[blue]%}%b:%.7i${PR_RST}%u%c%{$hotpink%}?${PR_RST}) "
        else
            # FMT_BRANCH="%{$fg[magenta]%}%s:${PR_RST}(%{$turquoise%}%b%u%c${PR_RST}) %{$fg[magenta]%}%.7i${PR_RST}"
            FMT_BRANCH="%{$fg[white]%}%s:${PR_RST}(%{$fg[blue]%}%b:%.7i${PR_RST}%u%c${PR_RST})"
        fi
        zstyle ':vcs_info:git:prompt:*' formats       "${FMT_BRANCH}"
        SVN_FMT_BRANCH="%s:(%{$turquoise%}%b%u%c${PR_RST})"
        zstyle ':vcs_info:svn:prompt:*' formats       "${SVN_FMT_BRANCH}"

        vcs_info 'prompt'
        PR_GIT_UPDATE=
    fi
}
add-zsh-hook precmd steeef_precmd

function ruby_info {
  rvm_ruby=''
  if which rvm-prompt &> /dev/null; then
    rvm_ruby="%{$hotpink%}‹$(rvm-prompt i v g s)›${PR_RST}"
  else
    if which rbenv &> /dev/null; then
      rvm_ruby='%{$hotpink%}‹$(rbenv version | sed -e "s/ (set.*$//")›${PR_RST}'
    fi
  fi
}
add-zsh-hook precmd ruby_info

# PROMPT=$'
# ╭─ $fg[yellow]%~%{$reset_color%} ${rvm_ruby} $vcs_info_msg_0_
# ╰─${PR_RST}$ '
PROMPT=$'
$fg[yellow]%~%{$reset_color%} ${rvm_ruby} $vcs_info_msg_0_
%{${reset_color}%}▶ '

RPROMPT='' # remove the right hand prompt

ZSH_PROMPT_BASE_COLOR="%{$fg[white]%}"

# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
