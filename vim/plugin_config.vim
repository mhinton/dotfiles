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
nnoremap - :Switch<cr>


" Syntastic:
let g:syntastic_javascript_checkers = ['jshint']


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


" Syntastic:
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1


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
let g:yankring_history_dir = '~/.vim'

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

" vim-ruby-xmpfilter:
let g:rct_completion_use_fri = 1
let g:rct_completion_info_max_len = 20


" Gvim
nmap <buffer> <M-r> <Plug>(xmpfilter-run)
xmap <buffer> <M-r> <Plug>(xmpfilter-run)
imap <buffer> <M-r> <Plug>(xmpfilter-run)

nmap <buffer> <M-m> <Plug>(xmpfilter-mark)
xmap <buffer> <M-m> <Plug>(xmpfilter-mark)
imap <buffer> <M-m> <Plug>(xmpfilter-mark)


" Terminal
nmap <buffer> <F7> <Plug>(xmpfilter-run)
xmap <buffer> <F7> <Plug>(xmpfilter-run)
imap <buffer> <F7> <Plug>(xmpfilter-run)

nmap <buffer> <F8> <Plug>(xmpfilter-mark)
xmap <buffer> <F8> <Plug>(xmpfilter-mark)
imap <buffer> <F8> <Plug>(xmpfilter-mark)


" Powerline:
" let g:Powerline_symbols = "fancy"
" let g:Powerline_colorscheme = "default"
" let g:Powerline_theme = "mhinton"
" let g:Powerline_colorscheme = "mhinton"
" let g:Powerline_colorscheme = "badwolf"


" Airline:
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_powerline_fonts=1
let g:airline_exclude_filetypes=['netrw','diff','undotree','gundo','tagbar']
let g:airline_theme='dark'
let g:airline_linecolumn_prefix = ' '
let g:airline_section_z='%3p%% '.g:airline_linecolumn_prefix.'%3l:%c'
""let g:airline_left_sep = '»'
""" let g:airline_left_sep = '▶'
""let g:airline_right_sep = '«'
""" let g:airline_right_sep = '◀'
""" let g:airline_linecolumn_prefix = '␊ '
""let g:airline_linecolumn_prefix = '␤ '
""" let g:airline_linecolumn_prefix = '¶ '
""let g:airline_fugitive_prefix = '⎇ '
""let g:airline_paste_symbol = 'ρ'
""" let g:airline_paste_symbol = 'Þ'
""" let g:airline_paste_symbol = '∥'

" RGB color chart: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
let g:airline#themes#dark#inactive = { 'mode': [ '#4e4e4e' , '#3c3c3c' , 244 , 235 , '' ] }

let s:N1 = [ '#00005f' , '#dfff00' , 17  , 190 ]
let s:N2 = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:N3 = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#dark#normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
" let g:airline#themes#dark#normal.mode = [ '#1c1c1c' , '#dfff00' , 233 , 155 , 'bold' ]
" let g:airline#themes#dark#normal.file = [ '#ff0000' , '#1c1c1c' , 160 , 233 , '' ]
" let g:airline#themes#dark#normal.statusline = [ '#d0d0d0' , '#202020' ,  252 , 234 , '' ]
let g:airline#themes#dark#normal = {
      \ 'mode':           [ '#1c1c1c' , '#d9fb87' ,  233    , 191     , 'bold' ] ,
      \ 'mode_separator': [ '#d9fb87' , '#444444' ,  191    , 238     , 'bold' ] ,
      \ 'info':           [ '#ffffff' , '#444444' ,  255    , 238     , ''     ] ,
      \ 'info_separator': [ '#444444' , '#303030' ,  238    , 236     , 'bold' ] ,
      \ 'file':           [ '#ff0000' , '#1c1c1c' ,  160    , 233     , ''     ] ,
      \ 'statusline':     [ '#d0d0d0' , '#303030' ,  252    , 236     , ''     ]
      \ }

let g:airline#themes#dark#normal_modified = {
      \ 'mode':           [ '#1c1c1c' , '#d9fb87' ,  233    , 191     , 'bold' ] ,
      \ 'mode_separator': [ '#dfff00' , '#444444' ,  191    , 238     , 'bold' ] ,
      \ 'info_separator': [ '#444444' , '#202020' ,  238    , 234     , 'bold' ] ,
      \ 'statusline':     [ '#d0d0d0' , '#202020' ,  252    , 234     , ''     ] ,
      \ }

let s:I1 = [ '#00005f' , '#00dfff' , 17  , 45  ]
let s:I2 = [ '#ffffff' , '#005fff' , 255 , 27  ]
let s:I3 = [ '#ffffff' , '#000080' , 15  , 17  ]
let g:airline#themes#dark#insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dark#insert_modified = {
      \ 'info_separator': [ '#005fff' , '#000080' ,  27     , 17      , 'bold' ] ,
      \ 'statusline':     [ '#ffffff' , '#000080' , 255     , 17      , ''     ] ,
      \ } 
let g:airline#themes#dark#insert_paste = {
      \ 'mode':           [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ 'mode_separator': [ '#d78700' , s:I2[1]   , 172     , s:I2[3] , ''     ] ,
      \ }
let g:airline#themes#dark#insert_replace = {
      \ 'mode':           [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ] ,
      \ 'mode_separator': [ '#af0000' , s:I2[1]   , 124     , s:I2[3] , ''     ] ,
      \ }

let s:V1 = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:V2 = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 15  , 52  ]
let g:airline#themes#dark#visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dark#visual = {
      \ 'mode': ['#000000', '#ffaf00', 232, 214, 'bold'],
      \ 'mode_separator': ['#ffaf00', '#ff5f00', 214, 202, 'bold'],
      \ 'info': ['#000000', '#ff5f00', 232, 202, ''],
      \ 'info_separator': ['#ff5f00', '#303030', 202, 236, 'bold'],
      \ 'statusline':     [ '#d0d0d0' , '#303030' ,  252    , 236     , '' ],
      \ }
" let g:airline#themes#dark#visual_modified = {
"       \ 'info_separator': [ '#ff5f00' , '#5f005f' , 202     , 53      , ''     ] ,
"       \ 'statusline':     [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
"       \ }
let g:airline#themes#dark#visual_modified = {
      \ 'mode': ['#000000', '#ffaf00', 232, 214, 'bold'],
      \ 'mode_separator': ['#ffaf00', '#ff5f00', 214, 202, 'bold'],
      \ 'info': ['#000000', '#ff5f00', 232, 202, ''],
      \ 'info_separator': ['#ff5f00', '#303030', 202, 52, 'bold'],
      \ 'statusline':     [ '#d0d0d0' , '#303030' ,  252    , 236     , '' ],
      \ }
