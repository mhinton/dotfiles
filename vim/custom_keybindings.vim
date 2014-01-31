" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" toggle paste mode
map <leader>o <esc>:set invpaste paste?<cr>

" disable escape (force use of <C-c>)
"inoremap <esc> <nop>
" make C-c act like esc for stuff like :normal I (that's capital i)
" inoremap <C-c> <esc>
" disable backspace (force use of <C-h>, and <C-w>)
" :inoremap <bs> <nop>

" make some kinds of autocomplete easier to activate
"inoremap <c-l> <c-x><c-l>
"inoremap <c-f> <c-x><c-f>
"inoremap <c-]> <c-x><c-]>

nnoremap <silent> <leader>K :call CloseWindowOrKillBuffer()<CR>

" Substitute
" copy the word under the cursor into the search/replace command
nnoremap <leader>S :%s/<c-r>=expand("<cword>")<cr>//c<left><left>
"nnoremap <leader>s :%s//<left>

" cleanup some annoying keys
nnoremap K <nop> " turn the manual key off

" alternate between 2 buffers
"nnoremap <leader><leader> <c-^>
nnoremap <leader>/ <c-^>

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> <leader>x :bp<CR>
nnoremap <silent> <leader>c :bn<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" make moving to the start/end of the line easier
" this overrides moving to the top/bottom of the viewport
noremap H ^
noremap L g_

" Heresy
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" select the lines which were just pasted
"nnoremap vv `[V`]

" these mess with YankRing
" Fix linewise visual selection of various text objects
"nnoremap VV V
"nnoremap Vit vitVkoj
"nnoremap Vat vatV
"nnoremap Vab vabV
"nnoremap VaB vaBV
nnoremap vv ^vg_ " select the current line excluding indentation

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nmap ,yw yiww

" ,ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nmap ,ow "_diwhp

" go to the last edit location with ,.
nnoremap ,. '.'

" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with apple-k or apple-d, and add Shift
" to type dashes
imap <silent> <D-k> _
imap <silent> <D-d> _
imap <silent> <D-K> -
imap <silent> <D-D> -

" Change inside quotes with Cmd-" and Cmd-'
nnoremap <D-'> ci'
nnoremap <D-"> ci"

" Add spaces around a symbol with Ctrl-Space
"nnoremap <C-Space> i <esc><right>a <esc>

" hit ,f to find the definition of the current class in a new tab
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <c-w><c-]><c-w>T

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" use ,gf to go to file in a vertical split
nnoremap <silent> ,gf :vertical botright wincmd f<CR>

"" using ragtag or vim-rails for these now
" create <%= foo %> erb tags using Ctrl-k in edit mode
"imap <silent> <C-K> <%=   %><Esc>3hi
" create <%= foo %> erb tags using Ctrl-j in edit mode
"imap <silent> <C-J> <%  %><Esc>2hi

" ,q to toggle quickfix window (where you have stuff like GitGrep)
" ,oq to open it back up (rare)
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

" center the text after moving between paragraphs or functions
" nnoremap { {zz
" nnoremap } }zz

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> <D-j> }
nnoremap <silent> <D-k> {
autocmd FileType ruby map <buffer> <D-j> ]m
autocmd FileType ruby map <buffer> <D-k> [m
autocmd FileType rspec map <buffer> <D-j> }
autocmd FileType rspec map <buffer> <D-k> {

" Create window splits easier. The default way is Ctrl-w,v and Ctrl-w,s.
" I remap this to VV and SS
nnoremap <silent> VV <C-w>v
nnoremap <silent> SS <C-w>s



function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>


" Split/Join {{{
"
" Basically this splits the current line into two new ones at the cursor position,
" then joins the second one with whatever comes next.
"
" Example:                      Cursor Here
"                                    |
"                                    V
" foo = ('hello', 'world', 'a', 'b', 'c',
"        'd', 'e')
"
"            becomes
"
" foo = ('hello', 'world', 'a', 'b',
"        'c', 'd', 'e')
"
" Especially useful for adding items in the middle of long lists/tuples in Python
" while maintaining a sane text width.
nnoremap K h/[^ ]<cr>"zd$jyyP^v$h"zpJk:s/\v +$//<cr>:noh<cr>j^

" Clean trailing whitespace
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" Change case
" nnoremap <C-u> gUiw
" inoremap <C-u> <esc>gUiwea

" Formatting, TextMate-style
" Use Q for formatting the current paragraph (or selection)
nnoremap Q gqip


" Quickreturn
inoremap <c-cr> <esc>A<cr>
inoremap <s-cr> <esc>A:<cr>

" shortcuts for saving/loading sessions
map <F3> :source ~/.vim/sessions/
map <F6> :mksession! ~/.vim/sessions/

" gundo keymap
nnoremap <F5> :GundoToggle<CR>

" sweet-vim-rspec commands
map <D-R> :SweetVimRspecRunFocused<CR>
map <D-R> :SweetVimRspecRunFocused<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Show syntax highlighting groups for word under cursor
nmap <leader>? :call <SID>SynStack()<CR>
function! <SID>SynStack()
if !exists("*synstack")
  return
endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Show syntax highlighting groups for word under cursor
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>


" <leader><space> clears search
nnoremap <leader><space> :noh<cr>

" Keybindings
" Stupid shift key fixes
"cmap W w
cmap WQ wq
cmap wQ wq
"cmap Q q
cmap Tabe tabe

" make vim command mode act like the shell
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>


" reformat buffer
nmap <C-g> gg=G

" new tab
nmap <leader>n :tabnew<CR>
" promote open buffer to tab
map <leader>u <C-w>T:tabp<CR>

" Make the tab key match bracket pairs
" nnoremap <tab> %
" vnoremap <tab> %
nmap <tab> %
vmap <tab> %    " something is stomping on this so vmap doesn't work 1/14/2013

" Space to toggle folds
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
nnoremap <Space> za
vnoremap <Space> zf
nnoremap <leader>ft Vatzf			" for working in html fold tag
" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO
" Use ,z to "focus" the current fold.
nnoremap <leader>z zMzvzz

" make resizing window splits via the keyboard a little easier
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>= :exe "resize " . (winheight(0) * 2/3)<CR>
" Resize windows with arrow keys
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>

" make working with tags a little easier
	" open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
	" open the definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" edit text in quotes
nmap X ci"

" make jumping to marks a little easier
nnoremap ' `
nnoremap ` '

" bind control-l to hashrocket
imap <C-l> <Space>=><Space>


" run specs in current file
map <leader>rs :w\|!bundle exec rspec %<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Better editing shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
" speed this up
" map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens an split command with the path of the currently edited file filled in
" Normal mode: <leader>s
" map <leader>s :sp <C-R>=expand("%:p:h") . "/" <CR> " conflict

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <leader>t
" map <leader>e :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
map <leader>s? z=

" map toggling relative line numbers
nnoremap <silent> <leader>r :call NumberToggle()<cr>

" use Marked.app as markdown preview
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" better visual searching
" Search for selected text, forwards or backwards
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Look up a work in Dictionary.app
nmap <silent> <leader>d :!open dict://<cword><CR><CR>
