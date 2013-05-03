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
Bundle 'tpope/vim-sensible'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
" Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-dispatch'
Bundle 'vim-ruby/vim-ruby'
Bundle 'elzr/vim-json'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'vim-scripts/vcscommand.vim'
Bundle 'sjl/gundo.vim'
Bundle 'gregsexton/gitv'
Bundle 'wookiehangover/jshint.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'AndrewRadev/switch.vim'
Bundle 'ervandew/supertab'
Bundle 'kchmck/vim-coffee-script'
Bundle 'skalnik/vim-vroom'
Bundle 'danchoi/virb'
Bundle 'ap/vim-css-color'
Bundle 'SirVer/ultisnips'
" Bundle 'vim-scripts/YankRing.vim'
Bundle 'maxbrunsfeld/vim-yankstack'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'robmiller/vim-movar'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'airblade/vim-gitgutter'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'othree/html5.vim'
Bundle 'godlygeek/tabular.git'
Bundle 'itspriddle/vim-marked'
Bundle 'jc00ke/vim-tomdoc'
Bundle 'mutewinter/nginx.vim'
Bundle 'mutewinter/tomdoc.vim'

" Experimental plugins
" Bundle 'Valloric/YouCompleteMe'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'pangloss/vim-javascript'

" Clojure related packages
" removed for now to see if these are slowing vim down
" Bundle 'guns/vim-clojure-static'
" Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'tpope/vim-fireplace'

" Colorschemes:
Bundle 'altercation/vim-colors-solarized'
Bundle 'sjl/badwolf'
Bundle 'w0ng/vim-hybrid'
Bundle 'morhetz/gruvbox'
" Bundle 'daylerees/colour-schemes', {'rtp': 'vim-themes/'}   " this path don't seem to work
" check this occasionally for new colorschemes
" don't use it all the time because some are duplicates
"Bundle 'flazz/vim-colorschemes'    

" vim-scripts repos
Bundle 'L9'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
