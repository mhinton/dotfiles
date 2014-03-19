" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  silent !/usr/local/bin/ctags -R --langmap="ruby:+.rake.builder.rjs" --exclude=coverage --exclude=log --exclude=tmp --languages=-sql --languages=-javascript *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()


" quickly toggle relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc


" Window Killer
" Use Q to intelligently close a window
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction


" run the rspec spec on the cursor line
" function! RunSingleSpec()
"   exec '!rspec % -l ' . line('.')
" endfunction
" map <leader>rt :call RunSingleSpec()<CR>

