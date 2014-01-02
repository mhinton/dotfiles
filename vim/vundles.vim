" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" My Bundles here:
"
" original repos on github

" Basics
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
" Bundle 'tpope/vim-eunuch'

" Improvements
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'kien/ctrlp.vim'
Bundle 'jasoncodes/ctrlp-modified.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
" Bundle 'sjl/gundo.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kana/vim-textobj-user'
" Bundle 'SirVer/ultisnips'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'bling/vim-airline'

" Programming
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
" Bundle 'gregsexton/gitv'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/syntastic'
Bundle 'wookiehangover/jshint.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'AndrewRadev/switch.vim'
" Bundle 'ap/vim-css-color'
Bundle 'robmiller/vim-movar'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'mattn/emmet-vim'
" Bundle 'godlygeek/tabular.git'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'
Bundle 'csexton/trailertrash.vim'
Bundle 'sjl/strftimedammit.vim'

" Additional Syntax
Bundle 'tpope/vim-markdown'
Bundle 'othree/html5.vim'
" Bundle 'jc00ke/vim-tomdoc'
" Bundle 'mutewinter/tomdoc.vim'
" Bundle 'kchmck/vim-coffee-script'
Bundle 'mutewinter/nginx.vim'

" Integration with other programs
Bundle 'itspriddle/vim-marked'

" Bundle 'ervandew/supertab'  " Remove SuperTab when using YouCompleteMe
" Bundle 'tpope/vim-obsession'
" Bundle 'tpope/vim-dispatch'

" Deactivated plugins
" Bundle 'skalnik/vim-vroom'
" Bundle 'danchoi/virb'
" Bundle 'vim-scripts/YankRing.vim'
" Bundle 't9md/vim-ruby-xmpfilter'
" Bundle 'terryma/vim-multiple-cursors'

" Experimental plugins
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'mattdbridges/bufkill.vim'
" trying out a replacement for Tabular
Bundle 'junegunn/vim-easy-align'
" CoVim is collabrative editing inside vim, requires some setup so this a placeholder in case I want to use it
" Bundle 'FredKSchott/CoVim'
" this requires to work http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
" Bundle 'christoomey/vim-tmux-navigator' " this broke vim window nav for me

" Clojure related packages
" removed for now to see if these are slowing vim down
" http://clojure-doc.org/articles/tutorials/vim_fireplace.html
" Bundle 'guns/vim-clojure-static'
" Bundle 'tpope/vim-fireplace'
" Bundle 'tpope/vim-classpath'
" Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'dgrnbrg/vim-redl' " new vim integration with clojure

" Colorschemes:
" Bundle 'altercation/vim-colors-solarized'
Bundle 'sjl/badwolf'
Bundle 'w0ng/vim-hybrid'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'goatslacker/mango.vim'
Bundle 'gregsexton/Muon'
Bundle 'jnurmine/Zenburn'
Bundle 'thinkpixellab/flatland', {'rtp': 'Vim/'}
" Bundle 'daylerees/colour-schemes', {'rtp': 'vim-themes/'}   " this path don't seem to work
" check this occasionally for new colorschemes
" don't use it all the time because some are duplicates
"Bundle 'flazz/vim-colorschemes'

" vim-scripts repos
Bundle 'L9'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
