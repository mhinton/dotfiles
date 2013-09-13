" Based on
runtime colors/smyck.vim

let g:colors_name = "smyck+"

hi Visual ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#05438b gui=NONE
hi Pmenu ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6fd3ff guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#05438b gui=NONE

hi rubyFunction guifg=#fbb1f9

hi link markdownH1 Type
hi link markdownH2 PreProc
hi link markdownH3 String
hi link markdownH4 markdownH3
hi link markdownH5 markdownH3
" hi markdownHeadingDelimiter guifg=#93a1a1

hi org_shade_stars guifg=#d6d3c8

hi Todo term=standout ctermfg=12 guibg=#a22cb1 guifg=#fade3e gui=bold,underline
