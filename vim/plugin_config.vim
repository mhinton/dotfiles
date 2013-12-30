" NERDTree:
let NERDTreeWinSize = 31
let NERDTreeChDirMode = 2           " set lcd to Root node
let NERDChristmasTree = 1           " Enable nice colors
let NERDTreeHighlightCursorline = 1  " Make it easy to see where we are
let NERDTreeShowBookmarks = 1  " Make bookmarks visible
let NERDTreeShowHidden = 0    " toggle showing hidden files
let NERDTreeHijackNetrw = 0       " Don't hijack NETRW
let NERDTreeIgnore=['\.$', '\~$']
let NERDTreeDirArrows=1
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
" map <Leader>n :NERDTreeTabsToggle<CR>
map <leader>ff :NERDTreeFind<CR>
map <leader>mm :NERDTreeMirrorToggle<CR>


" NERDTreeTabs:
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1


" via: http://whynotwiki.com/Vim
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =


" RubyAndRails:
let g:ruby_fold = 1       " Turn on folding in ruby files
let ruby_operators = 1    " Highlight ruby operators
let g:rails_statusline=0  " Turn off rails bits of statusbar


" Switch:
nnoremap <leader>- :Switch<cr>


" Syntastic:
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1
let g:syntastic_javascript_checkers = ['jshint']
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
" let g:syntastic_javascript_jshint_conf = '~/.jshintrc'


" VCS:
"" NERDCommenter overrides <leader>cc so map it to something else
" map <leader>vc :VCSCommit<CR>
" map <leader>vu :VCSUpdate<CR>
" map <leader>vr :VCSRevert<CR>
" map <leader>vs :VCSStatus<CR>
" map <leader>va :VCSAdd<CR>
" map <leader>vb :VCSBlame<CR>
" map <leader>vd :VCSVimDiff<CR>


" Fugitive:
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gco :Gcheckout<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>


" Ack:
"let g:ackprg="ack -H --nocolor --nogroup --column"
let g:ackprg = "ag --nogroup --nocolor --column"


" SuperTab:
"" let g:SuperTabDefaultCompletionType = "context" "<- this was my default
"" let g:SuperTabContextDefaultCompletionType = "<c-n>"
" let g:SuperTabLongestHighlight = 0

" Remove SuperTab when using YouCompleteMe
"let g:SuperTabDefaultCompletionType = "<c-x><c-n>" " testing setting
"let g:SuperTabLongestEnhanced = 1
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-n>", "&omnifunc:<c-x><c-o>"]


" YouCompleteMe:
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 3


" UltiSnips:
" let g:UltiSnipsExpandTrigger="<tab>" " default
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>" " default
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>" " default
" let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["ultisnips"]


" Emmet:
let g:use_emmet_complete_tag = 1


" Gundo:
let g:gundo_width = 45
let g:gundo_preview_height = 15
let g:gundo_preview_bottom = 1


if has("mac")
  " enable shift text selection
  let macvim_hig_shift_movement = 1
endif


" TabBar:
let g:tagbar_ctags_bin="/usr/local/bin/ctags"
nnoremap <leader>l :TagbarToggle<CR>


" ShowMarks:
" Tell showmarks to not include the various brace marks (),{}, etc
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"


" Easymotion:
"let g:EasyMotion_leader_key = '<leader>'


" CtrlP:
"let g:ctrlp_map = '<c-p>' " this is the default
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 20
"let g:ctrlp_prompt_mappings = {
"\ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<tab>'],
"\ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<s-tab>'],
"\ 'PrtHistory(-1)':       ['<c-n>'],
"\ 'PrtHistory(1)':        ['<c-p>'],
"\ 'ToggleFocus()':        ['<c-tab>'],
"\ }
" let g:ctrlp_extensions = ['tag']
" nnoremap <leader>. :CtrlPTag<cr>
" nnoremap <c-p> :CtrlP<cr>
nnoremap <leader>t :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <D-b> :CtrlPBuffer<cr>


" YankRing:
" let g:yankring_history_dir = '$VIM'
" let g:yankring_history_dir = '~/.vim'


" Yankstack:
" keybinds for YankStack to work in both Terminal and MacVim
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" Tabular:
if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<cr>
  vmap <leader>a= :Tabularize /=<cr>
  nmap <leader>a> :Tabularize /=><cr>
  vmap <leader>a> :Tabularize /=><cr>
  nmap <leader>a: :Tabularize /:\zs<cr>
  vmap <leader>a: :Tabularize /:\zs<cr>
endif


" Airline:
let g:airline_powerline_fonts=1           " use powerline fonts
" let g:airline_exclude_filetypes=['netrw', 'diff', 'undotree', 'gundo', 'tagbar']
let g:airline_exclude_filetypes=['diff', 'undotree', 'gundo', 'tagbar']
let g:airline_linecolumn_prefix = ' '
let g:airline_section_z='%3p%% '.g:airline_linecolumn_prefix.'%3l:%c'
let g:airline_detect_whitespace=0         " turn off the whitespace extension
" let g:airline_theme='powerlineish'
let g:airline_theme='simple_mod'
"enable/disable showing a summary of changed hunks under source control.
let g:airline#extensions#hunks#enabled = 1
"enable/disable showing only non-zero hunks.
let g:airline#extensions#hunks#non_zero_only = 1
"set hunk count symbols.
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
