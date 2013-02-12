alias vim='/usr/local/bin/mvim -v'
alias -g less='less -R'

# don't have zsh try and expand brackets [ ] with rake
alias rake="noglob rake"
alias bundle="noglob bundle"

alias -g be="bundle exec"
alias -g bi="bundle install"
alias -g bl="bundle list"
alias -g bp="bundle package"
alias -g bu="bundle update"


# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something

alias la='ls -ah'
alias ll='ls -lh'
alias lla='ls -alh'

# recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# Enable aliases to be sudo’ed
alias sudo='sudo '

# IP addresses
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
#alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# File size
alias fs="stat -f \"%z bytes\""

# find the largest file in a directory
alias ds='du -ks * | sort -n'

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"


# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

function hgrep() { history | grep $1 -} 

# create a .rvmrc file
function rvmrc() {
  if [[ -n "$1" && -n "$2" ]]; then
    rvm --rvmrc --create $1@$2
  else
    echo "proper usage: rvmrc <ruby version> <gemset name>"
  fi
}

# PS
alias psg="ps -aux | grep "
alias psr='ps -aux | grep ruby'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Common shell functions
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'
alias ps='ps aux'
alias cdb='cd -'

alias la='ls -ah'
alias ll='ls -lh'
alias lla='ls -alh'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# IP addresses
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
#alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# File size
alias fs="stat -f \"%z bytes\""

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"


# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

function hgrep() { history | grep $1 -} 

# PS
alias psg="ps -aux | grep "
alias psr='ps -aux | grep ruby'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Common shell functions
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'
alias ps='ps aux'
alias cdb='cd -'

# Git Aliases
# alias gs='git status'
#alias gstsh='git stash'
# alias gsh='git show'
#alias gi='vi .gitignore'
# alias gcm='git ci -m'
#alias gcim='git ci -m'
# alias gci='git ci'
# alias gco='git co'
#alias ga='git add -A'
#alias guns='git unstage'
#alias gunc='git uncommit'
#alias gm='git merge'
#alias gms='git merge --squash'
#alias gam='git amend'
#alias gr='git rebase'
# alias gra='git rebase --abort'
# alias grc='git rebase --continue'
# alias gbi='git rebase --interactive'
# alias gl='git l'
# alias glg='git l'
#alias co='git co'
# alias gf='git fetch'
#alias gd='git diff'
# alias gb='git b'
#alias gdc='git diff --cached'
# alias gpl='git pull'
# alias gplr='git pull --rebase'
# alias gps='git push'
# alias gnb='git nb' # new branch aka checkout -b
#alias grs='git reset' 
#alias grsh='git reset --hard'
#alias gcln='git clean'
#alias gclndf='git clean -df'
# alias gsm='git submodule'
# alias gsmi='git submodule init'
# alias gsmu='git submodule update'
# alias gt='git t'
alias glr="git log -10 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"


alias cds='cd /Users/matthew/Sites/scholar'
alias cdsa='cd /Users/matthew/Sites/scholar/cg_author'
alias cdsp='cd /Users/matthew/Sites/scholar/cg_publisher'
alias cdsi='cd /Users/matthew/Sites/scholar/cg_identity'
alias cdsc='cd /Users/matthew/Sites/scholar/cg_community'

alias octo='cd /Users/matthew/Dropbox/Sites/octopress'
alias projects='cd /Users/matthew/Dropbox/Projects'
alias dsites='cd /Users/matthew/Dropbox/Sites'
alias dotfiles='cd /Users/matthew/.dotfiles'

alias cm='console-mux -f scholar-processes.rb'
alias rsa='rs -p 3001'
alias rsp='rs -p 3002'
alias usa='bundle exec unicorn_rails -p 3001'
alias usp='bundle exec unicorn_rails -p 3002'
alias psi='bundle exec puma -p 3000'
alias psa='bundle exec puma -p 3001'
alias psp='bundle exec puma -p 3002'

alias rls='bundle exec rails s -p 4000'
alias rlp='bundle exec puma -p 4000'
