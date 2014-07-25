" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

" My Plugins here:
"
" original repos on github

" Basics
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-eunuch'

" Improvements
" Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
" Plugin 'tpope/vim-projectile'
Plugin 'tpope/vim-projectionist'
Plugin 'kien/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
" Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kana/vim-textobj-user'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'bling/vim-airline'
" Focused writing mode
" Plugin 'junegunn/goyo.vim'
" Plugin 'amix/vim-zenroom2'
" Prose writing
" Plugin 'reedes/vim-pencil'
" Plugin 'reedes/vim-wordy'
" Plugin 'reedes/vim-lexical'
" Plugin 'reedes/vim-textobj-quote'
" Plugin 'reedes/vim-textobj-sentence'

" Programming
Plugin 'tpope/vim-rails'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
" Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/vcscommand.vim'
" Plugin 'gregsexton/gitv'
" Plugin 'airblade/vim-gitgutter'
"vim-signify a superset of vim-gitgutter
Plugin 'mhinz/vim-signify'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'wookiehangover/jshint.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'AndrewRadev/switch.vim'
" Plugin 'ap/vim-css-color'
Plugin 'robmiller/vim-movar'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'mattn/emmet-vim'
" Plugin 'godlygeek/tabular.git'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'pangloss/vim-javascript'
" Plugin 'elzr/vim-json'
Plugin 'tpope/vim-jdaddy'
Plugin 'csexton/trailertrash.vim'
Plugin 'sjl/strftimedammit.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'fatih/vim-go'

Plugin 'StanAngeloff/php.vim'
" PHP debug interface
Plugin 'joonty/vdebug'
" add next plugin if omnicomplete is funky
" Plugin 'shawncplus/phpcomplete.vim'

" Additional Syntax
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
" Plugin 'jc00ke/vim-tomdoc'
" Plugin 'mutewinter/tomdoc.vim'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'mutewinter/nginx.vim'

" Integration with other programs
Plugin 'itspriddle/vim-marked'

" Plugin 'ervandew/supertab'  " Remove SuperTab when using YouCompleteMe
" Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-dispatch'

" Deactivated plugins
" Plugin 'skalnik/vim-vroom'
" Plugin 'danchoi/virb'
" Plugin 'vim-scripts/YankRing.vim'
" Plugin 't9md/vim-ruby-xmpfilter'
" Plugin 'terryma/vim-multiple-cursors'

" Experimental plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattdbridges/bufkill.vim'
" trying out a replacement for Tabular
Plugin 'junegunn/vim-easy-align'
" CoVim is collabrative editing inside vim, requires some setup so this a placeholder in case I want to use it
" Plugin 'FredKSchott/CoVim'
" this requires to work http://robots.thoughtbot.com/post/53022241323/seamlessly-navigate-vim-and-tmux-splits
" Plugin 'christoomey/vim-tmux-navigator' " this broke vim window nav for me

" Clojure related packages
" removed for now to see if these are slowing vim down
" http://clojure-doc.org/articles/tutorials/vim_fireplace.html
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'tpope/vim-classpath'
" Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'
" Plugin 'dgrnbrg/vim-redl' " new vim integration with clojure

" Colorschemes:
" Plugin 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'
Plugin 'w0ng/vim-hybrid'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'goatslacker/mango.vim'
Plugin 'gregsexton/Muon'
Plugin 'jnurmine/Zenburn'
Plugin 'thinkpixellab/flatland', {'rtp': 'Vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }
" check this occasionally for new colorschemes
" don't use it all the time because some are duplicates
Plugin 'flazz/vim-colorschemes'

" vim-scripts repos
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" non github repos
"Plugin 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
