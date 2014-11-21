runtime colors/jellybeans.vim

let colors_name = "jellybeans+"

hi! link htmlEndTag htmlTag

let g:jellybeans_overrides = {
\    'Cursor': { 'guifg': '000000', 'guibg': 'b0d0f0',
\              'ctermfg': '', 'ctermbg': '' },
\    'Normal': { 'guifg': 'cccbca', 'guibg': '',
\              'ctermfg': '', 'ctermbg': ''},
\    'Visual': { 'guifg': '', 'guibg': '466182',
\              'ctermfg': '', 'ctermbg': ''},
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'MatchParen': { 'guifg': '000000', 'guibg': 'fad07a',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\}
