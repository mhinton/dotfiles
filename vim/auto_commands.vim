function! CustomClojureSettings()
  set filetype=clojure
endfunction

"function! CustomMarkdownSettings()
"  " set filetype=mkd
"  set wrap
"  set linebreak
"  " set list
"  set textwidth=80
"  set formatoptions+=l
"  syntax region markdownFold start="^\z(#\+\) " end="\(^#\(\z1#*\)\@!#*[^#]\)\@=" transparent fold
"  autocmd FileType markdown set foldmethod=syntax
"
"  setlocal nofoldenable
"  setlocal foldlevel=0
"  setlocal foldcolumn=0
"
"  " use tabs in markdown for correct rendering
"  set noexpandtab
"endfunction

function! CustomMarkupSettings()
  set foldmethod=manual
endfunction

function! CustomJavaScriptSettings()
  set filetype=javascript
endfunction

autocmd BufEnter,BufWritePost *.clj   call CustomClojureSettings()
" autocmd BufEnter *.markdown,*.md call CustomMarkdownSettings()
" autocmd BufEnter *.json,*.js call CustomJavaScriptSettings()
autocmd BufEnter *.erb,*.html call CustomMarkupSettings()

" autocmd FileType javascript setlocal ts=4 sts=4 sw=4

autocmd FileType gitcommit setlocal spell textwidth=72

" turn off automatic comment markers
autocmd FileType * setlocal formatoptions-=r formatoptions-=o



let g:pencil#wrapModeDefault = 'hard'   " or 'soft'
let g:pencil#autoformat = 1 "0=manual, 1=auto
"let g:pencil#textwidth = 74
augroup pencil
  autocmd!
  autocmd FileType markdown call pencil#init()
  autocmd FileType textile call pencil#init()
  autocmd FileType text call pencil#init({'wrap': 'hard'})
  nnoremap <silent> <leader>ps :SoftPencil<cr>
  nnoremap <silent> <leader>ph :HardPencil<cr>
  nnoremap <silent> <leader>pd :DropPencil<cr>
  nnoremap <silent> <leader>pt :TogglePencil<cr>
  nnoremap <silent> <leader>pa :AutoPencil<cr>
  nnoremap <silent> <leader>pm :ManualPencil<cr>
  nnoremap <silent> <leader>pp :ShiftPencil<cr>
augroup END
augroup lexical
  autocmd!
  autocmd FileType markdown call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
augroup quotable
  autocmd!
  autocmd FileType markdown call quotable#init()
  autocmd FileType textile call quotable#init()
  autocmd FileType python call quotable#init({ 'educate': 0 })
augroup END
augroup textobj_sentence
  autocmd!
  autocmd FileType markdown call textobj#sentence#init()
  autocmd FileType textile call textobj#sentence#init()
augroup END
