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
let g:syntastic_javascript_checker = "jshint"


" VCS:
" NERDCommenter overrides <leader>cc so map it to something else
map <leader>vc :VCSCommit<CR>
map <leader>vu :VCSUpdate<CR>
map <leader>vr :VCSRevert<CR>
map <leader>vs :VCSStatus<CR>
map <leader>va :VCSAdd<CR>
map <leader>vb :VCSBlame<CR>
map <leader>vd :VCSVimDiff<CR>


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
let g:ackprg="$HOME/bin/ack -H --nocolor --nogroup --column"


" SuperTab:
"let g:SuperTabDefaultCompletionType = "context" "<- this was my default
let g:SuperTabDefaultCompletionType = "<c-x><c-n>" " testing setting
let g:SuperTabLongestHighlight = 0
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" UltiSnips:
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["ultisnips"]
" let g:UltiSnipsDontReverseSearchPath="1"

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
" let g:ctrlp_map = '<c-p>' # this is the default
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
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <D-b> :CtrlPBuffer<cr>
