" Set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/
if v:version >= 703
  set undofile     " Set undofile.
  let &undodir=&directory
endif

set vb t_vb=                            " Disable visual bell
" set autoread                            " Set to auto read when a file is changed from the outside " set in vim-sensible
set nobackup                            " Do not create backup files when saving over existing files
set nowritebackup                       " A little paranoid, but disable the writebackup function as well
set noswapfile                          " No swap files when editing please

" WindowAndBufferManagement
set winwidth=50
set splitbelow                          " Open new horizontal split windows below current
set splitright                          " Open new vertical split windows to the right
set switchbuf=useopen,usetab,split      " Don't change my current buffer on quickfix

" StatusBar
" set laststatus=2    " Always show status bar " set in vim-sensible
set noshowmode        " turn off the mode indicator message in the command line

" Fancy statusline
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Line numbers
set number
set numberwidth=3                       " Set line number column width 
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮
set showbreak=↪ 

set formatoptions-=o "dont continue comments when pushing o/O

" Test setting
set virtualedit=onemore
set matchtime=3

" Searching
set hlsearch
" set incsearch "set in vim-sensible
set ignorecase
set wrapscan

" Keep search matches in the middle of the window and pulse the line when moving to them.
nnoremap n nzzzv
nnoremap N Nzzzv

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR> " commenting out for now as this mapping has a conflict
map <C-\> :tnext<CR>
set tags=tags;/
set notagbsearch " Perform binary tag search (vs linear) in case tags aren't sorted to avoid missing tags
set showfulltag  " Show extra information when using tags in insert mode

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function! s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function! s:setupMarkup()
  call s:setupWrapping()
  " map <buffer> <Leader>p :Hammer<CR>
endfunction

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" allow backspacing over everything in insert mode
" set backspace=indent,eol,start " set in vim-sensible

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Use modeline overrides
set modeline
set modelines=10

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
" runtime! macros/matchit.vim " set in vim-sensible
set matchpairs+=<:>                     " Also match angle brackets

" Show (partial) command in the status line
" set showcmd " set in vim-sensible

" Window Heights
set helpheight=10                      " minimum initial height


" set wildmenu " set in vim-sensible
" set wildmode=longest,list:longest
set wildmode=list:longest,list:full    " Better completion
set wildignore=.svn,CVS,.git           " Ignore VCS files
set wildignore+=*.o,*.a,*.so           " Ignore compiled binaries
set wildignore+=*.obj,*.class          " Ignore compiled binaries
set wildignore+=*.jpg,*.png,*.gif      " Ignore images
set wildignore+=*.pdf                  " Ignore PDF files
set wildignore+=*.rbc                  " Ignore compiled Ruby files
set wildignore+=*.pyc,*.pyo            " Ignore compiled Python files

""""""""""""""""""""""""""""""
" =>  Better Completion
""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete
" set complete=.,b,u,]
" set complete=.,w,b,u,t,i
set complete=.,w,b,t

" insert the longest common string, show the menu and preview info
set completeopt=longest,menuone,preview 

" Insert Mode Completion
" inoremap <C-Space> <C-x><C-o>  " YouCompleteMe: adds this mapping
inoremap <C-f> <C-x><C-f>
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>"
" inoremap <expr> <C-n> pumvisible() ? "\<C-n>" : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"""inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"""" open omni completion menu closing previous if open and opening new menu without changing the text
"""inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"""            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
"""" open user completion menu closing previous if open and opening new menu without changing the text
"""inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"""            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
