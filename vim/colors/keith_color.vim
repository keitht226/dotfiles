" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="keith_color"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#af87ff
hi Character       guifg=#ffd887
hi Number          guifg=#af87ff
hi String          guifg=#ffd887
hi Conditional     guifg=#ff5f5f               gui=bold
hi Constant        guifg=#af87ff               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0

"unique to gvim
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

hi Debug           guifg=#ffdfff               gui=bold
hi Define          guifg=#5fdfff
hi Delimiter       guifg=#5fdfff
hi DiffAdd         guifg=#ffdfdf guibg=#005f00
hi DiffChange      guifg=#ffdfdf guibg=#005f87
hi DiffDelete      guifg=#ffdfdf guibg=#af0000
hi DiffText        guifg=#ffdfdf guibg=#005f87 gui=italic,bold

hi Directory       guifg=#5f87ff               gui=bold
hi Error           guifg=#ffafff guibg=#87005f
hi ErrorMsg        guifg=#ff00af guibg=#000000 gui=bold
hi Exception       guifg=#afff5f               gui=bold
hi Float           guifg=#af87ff
hi FoldColumn      guifg=#5f87af guibg=#000000
hi Folded          guifg=#5f87af guibg=#000000
hi Function        guifg=#afff5f
hi Identifier      guifg=#ff8700
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#ff5f5f               gui=bold
hi Label           guifg=#ffdf87               gui=none
hi Macro           guifg=#afff5f               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#ff8700 gui=bold
hi ModeMsg         guifg=#ffdf87
hi MoreMsg         guifg=#ffdf87
hi Operator        guifg=#ff5f5f

" complete menu
hi Pmenu           guifg=#5fdfff guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#5fdfff

hi PreCondit       guifg=#afff5f               gui=bold
hi PreProc         guifg=#afff5f
hi Question        guifg=#5fdfff
hi Repeat          guifg=#ff5f5f               gui=bold
hi Search          guifg=#000000 guibg=#ffdf87
" marks
hi SignColumn      guifg=#afff5f guibg=#262626
hi SpecialChar     guifg=#ff5f5f               gui=bold
hi SpecialComment  guifg=#8a8a8a               gui=bold
hi Special         guifg=#5fdfff guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#ff5f5f               gui=bold
hi StatusLine      guifg=#444444 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#ff8700               gui=italic
hi Structure       guifg=#5fdfff
hi Tag             guifg=#ff5f5f               gui=italic
hi Title           guifg=#ff5f5f
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#5fdfff
hi Type            guifg=#5fdfff               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#5fdfff guibg=#000000

hi Normal          guifg=#d0d0d0 guibg=#121212
hi Comment         guifg=#808080
hi CursorLine                    guibg=#303030
hi CursorLineNr    guifg=#ff8700               gui=none
hi CursorColumn                  guibg=#303030
hi ColorColumn                   guibg=#303030
hi LineNr          guifg=#4e4e4e guibg=#262626
hi NonText         guifg=#4e4e4e
hi SpecialKey      guifg=#4e4e4e

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   endif
   "hi Boolean         ctermfg=135
   "hi Character       ctermfg=144
   " hi Number          ctermfg=135
   " hi String          ctermfg=144
   "hi Conditional     ctermfg=203               cterm=bold
   "hi Constant        ctermfg=141               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=81

   hi DiffAdd         ctermfg=224 ctermbg=22
   hi DiffChange      ctermfg=224 ctermbg=24
   hi DiffDelete      ctermfg=224 ctermbg=124
   hi DiffText        ctermfg=224 ctermbg=24    cterm=bold

   "hi Directory       ctermfg=155               cterm=bold
   "hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   "hi Exception       ctermfg=155               cterm=bold
   "hi Float           ctermfg=141
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   "hi Function        ctermfg=155
   "hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=203               cterm=bold
   hi Label           ctermfg=222               cterm=none
   hi Macro           ctermfg=155
   "hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=222
   hi MoreMsg         ctermfg=222
   "hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   "hi PreCondit       ctermfg=118               cterm=bold
   "hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   "hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=155 ctermbg=235
   hi SpecialChar     ctermfg=203               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   "hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=235
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   "hi Tag             ctermfg=161
   "hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   "hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   "hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   "hi LineNr          ctermfg=250 ctermbg=236
   "hi NonText         ctermfg=59

   "hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=233
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none
       hi TabLine         ctermfg=252 ctermbg=235
       hi TabLineFill     ctermfg=252 ctermbg=234
       hi TabLineSel      ctermfg=252 ctermbg=24

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=203               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=224

       hi Directory       ctermfg=69               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=155               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=155
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=203               cterm=bold
       hi Operator        ctermfg=203
       hi PreCondit       ctermfg=155               cterm=bold
       hi PreProc         ctermfg=155
       hi Repeat          ctermfg=203               cterm=bold

       hi Statement       ctermfg=203               cterm=bold
       hi Tag             ctermfg=203
       hi Title           ctermfg=203
       hi Visual                      ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   endif
end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

