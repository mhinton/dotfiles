# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
# ZSH_THEME="mhinton"
#ZSH_THEME="dstufft"
#ZSH_THEME="jnrowe"
#ZSH_THEME="bira-mod"
ZSH_THEME="steeef-mod"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler ruby rails3 rake jruby svn compleat history-substring-search autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR=vim
export PAGER=less
#export LESS='-RM' # -R print color escapes to the screen, -M user very verbose prompt

# Always pushd when changing directory
setopt auto_pushd

# ruby perf settings
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Setup rvm
rvm_project_rvmrc=1
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin
