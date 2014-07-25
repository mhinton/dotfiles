function! CustomClojureSettings()
  set filetype=clojure
endfunction

function! CustomMarkdownSettings()
  set wrap
  set linebreak
  set textwidth=80
  set formatoptions+=l
  " syntax region markdownFold start="^\z(#\+\) " end="\(^#\(\z1#*\)\@!#*[^#]\)\@=" transparent fold
  " autocmd FileType markdown set foldmethod=syntax

  setlocal nofoldenable
  setlocal foldlevel=0
  setlocal foldcolumn=0

  " use tabs in markdown for correct rendering
  set noexpandtab
endfunction

function! CustomMarkupSettings()
  set foldmethod=manual
endfunction

function! CustomJavaScriptSettings()
  set filetype=javascript
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  au FileType javascript call JavaScriptFold()
endfunction

autocmd BufEnter,BufWritePost *.clj   call CustomClojureSettings()
" autocmd BufEnter *.markdown,*.md call CustomMarkdownSettings()
autocmd BufEnter *.json,*.js call CustomJavaScriptSettings()
autocmd BufEnter *.erb,*.html call CustomMarkupSettings()

" autocmd FileType javascript setlocal ts=4 sts=4 sw=4

autocmd FileType gitcommit setlocal spell textwidth=72

" turn off automatic comment markers
autocmd FileType * setlocal formatoptions-=r formatoptions-=o
