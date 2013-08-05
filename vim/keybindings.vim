" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$ " YankRing doesn't seem to like this 
" nnoremap Y   :<C-U>YRYankCount 'y$'<CR>

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
"nmap te :tabedit 
nmap to :tabonly<CR>

" NERDTree: Open with F2
nmap <F2> :NERDTreeTabsToggle<CR>
