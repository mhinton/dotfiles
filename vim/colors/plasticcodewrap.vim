" Vim color file
" Converted from Textmate theme PlasticCodeWrap using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "PlasticCodeWrap"

hi Cursor ctermfg=16 ctermbg=109 cterm=NONE guifg=#00090f guibg=#8ba7a7 gui=NONE
hi Visual ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#63747c gui=NONE
hi CursorLine ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#192126 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#192126 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#192126 gui=NONE
hi LineNr ctermfg=244 ctermbg=16 cterm=NONE guifg=#7c8184 guibg=#192126 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#484e53 guibg=#484e53 gui=NONE
hi MatchParen ctermfg=214 ctermbg=NONE cterm=underline guifg=#ffaa00 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f8f8f8 guibg=#484e53 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f8f8f8 guibg=#484e53 gui=NONE
hi Pmenu ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi PmenuSel ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#63747c gui=NONE
hi IncSearch ctermfg=16 ctermbg=71 cterm=NONE guifg=#00090f guibg=#65ba3a gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Folded ctermfg=32 ctermbg=16 cterm=NONE guifg=#1e9ae0 guibg=#00090f gui=NONE

hi Normal ctermfg=231 ctermbg=16 cterm=NONE guifg=#f8f8f8 guibg=#00090f gui=NONE
hi Boolean ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Character ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Comment ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=italic
hi Conditional ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi Constant ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Define ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f8 guibg=#3e7d08 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#830203 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=17 cterm=NONE guifg=#f8f8f8 guibg=#102a4b gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f8 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=124 cterm=NONE guifg=#f8f8f8 guibg=#a0210e gui=NONE
hi WarningMsg ctermfg=231 ctermbg=124 cterm=NONE guifg=#f8f8f8 guibg=#a0210e gui=NONE
hi Float ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Function ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Identifier ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi Keyword ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi Label ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi NonText ctermfg=234 ctermbg=16 cterm=NONE guifg=#182220 guibg=#0c151b gui=NONE
hi Number ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi Operator ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi PreProc ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey ctermfg=234 ctermbg=16 cterm=NONE guifg=#182220 guibg=#192126 gui=NONE
hi Statement ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi StorageClass ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi String ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi Tag ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo ctermfg=32 ctermbg=NONE cterm=inverse,bold guifg=#1e9ae0 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

hi rubyClass ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi rubyFunction ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi rubyConstant ctermfg=157 ctermbg=NONE cterm=NONE guifg=#9df39f guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi rubyInclude ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyEscape ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi rubyControl ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi rubyClassVariable ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi rubyOperator ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi rubyException ctermfg=214 ctermbg=NONE cterm=bold guifg=#ffaa00 guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE

hi rubyRailsUserClass ctermfg=157 ctermbg=NONE cterm=NONE guifg=#9df39f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE

" hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE

hi htmlTag ctermfg=159 ctermbg=NONE cterm=NONE guifg=#9effff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=159 ctermbg=NONE cterm=NONE guifg=#9effff guibg=NONE gui=NONE
hi htmlTagName ctermfg=159 ctermbg=NONE cterm=NONE guifg=#9effff guibg=NONE gui=NONE
hi htmlArg ctermfg=159 ctermbg=NONE cterm=NONE guifg=#9effff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1e94b guibg=NONE gui=NONE

hi javaScriptFunction ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi yamlKey ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi yamlAnchor ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi yamlAlias ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE

hi cssURL ctermfg=73 ctermbg=NONE cterm=NONE guifg=#4abeb3 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi cssColor ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi cssClassName ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi cssValueLength ctermfg=169 ctermbg=NONE cterm=NONE guifg=#ea719c guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=174 ctermbg=NONE cterm=NONE guifg=#eb939a guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
