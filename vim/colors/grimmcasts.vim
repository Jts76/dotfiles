"
" Name:    grimmcasts.vim
" This Color Shcheme is a mod of the railscasts Color Scheme which
" can be found at: https://github.com/jpo/vim-railscasts-theme
" License: MIT <http://opensource.org/licenses/MIT>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "grimmcasts"

hi Normal                    guifg=#e4e4e4 guibg=#121212 "
hi Search                    guifg=#000000 guibg=#5f5f87 
hi Visual                    guibg=#5f5f87 
hi LineNr                    guifg=#666666 
hi Cursor                    guifg=#000000 guibg=#FFFFFF 
hi CursorLine                guibg=#1c1c1c gui=NONE 
hi CursorLineNr              guifg=#a9a8a8 gui=NONE 
hi ColorColumn               guibg=#1c1c1c 
hi! link CursorColumn ColorColumn
hi VertSplit                 guifg=#444444 guibg=#121212 gui=NONE 
hi SignColumn                guifg=#FFFFFF guibg=NONE 

" StatusLine
" Bold
hi User1                     guifg=#eeeeee guibg=#606060 gui=bold 
" Yellow
hi User2                     guifg=#FFAF00 guibg=#606060 gui=bold 
" Green
hi User3                     guifg=#5fff00 guibg=#606060 gui=bold 
" Red
hi User4                     guifg=#870000 guibg=#606060 gui=bold 
hi User5                     guifg=#e4e4e4 guibg=#606060 gui=bold 
hi User6                     guifg=#e4e4e4 guibg=#606060 gui=bold 
hi User7                     guifg=#e4e4e4 guibg=#606060 gui=bold 
hi User8                     guifg=#e4e4e4 guibg=#606060 gui=bold 
hi User9                     guifg=#e4e4e4 guibg=#606060 gui=bold 
hi StatusLine                guifg=#e4e4e4 guibg=#606060 gui=NONE 
hi StatusLineNC              guifg=#585858 guibg=#303030 gui=NONE 

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#ffffff guibg=#444444 gui=NONE 
hi! link FoldColumn SignColumn

" Invisible Characters
" ------------------
hi NonText                   guifg=#767676 gui=NONE 
hi SpecialKey                guifg=#767676 gui=NONE 

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#87af5f gui=NONE 

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#ffffff guibg=#444444 gui=NONE 
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#87af5f gui=NONE 
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE 
" thumb of the scrollbar in the popup
hi PMenuThumb                guifg=#ffffff guibg=#a8a8a8 gui=NONE 

" Code constructs
" ---------------
hi Comment                   guifg=#af875f 
"hi Comment                   guifg=#af875f 
hi Todo                      guifg=#df5f5f guibg=NONE gui=bold 
" hi Todo                      guifg=#000000 guibg=ffff00 gui=bold 
hi Constant                  guifg=#6D9CBE 
hi Error                     guifg=#FFFFFF guibg=#990000 
hi WarningMsg                guifg=#800000 guibg=NONE 
hi Identifier                guifg=#af5f5f gui=NONE 
hi Keyword                   guifg=#af5f00 gui=NONE 
hi Number                    guifg=#0089C2 
hi Statement                 guifg=#af5f00 gui=NONE 
hi String                    guifg=#87af5f 
hi Title                     guifg=#FFFFFF 
hi Type                      guifg=#df5f5f gui=NONE 
hi PreProc                   guifg=#ff8700 
hi Special                   guifg=#005f00 

" Diffs
" -----
hi DiffAdd                   guifg=#e4e4e4 guibg=#519F50 
hi DiffDelete                guifg=#000000 guibg=#660000 gui=bold 
hi DiffChange                guifg=#FFFFFF guibg=#870087 
hi DiffText                  guifg=#FFFFFF guibg=#FF0000 gui=bold 

hi diffAdded                 guifg=#008700 
hi diffRemoved               guifg=#800000 
hi diffNewFile               guifg=#FFFFFF guibg=NONE gui=bold 
hi diffFile                  guifg=#FFFFFF guibg=NONE gui=bold 


" Ruby
" ----
hi rubyTodo                  guifg=#df5f5f guibg=NONE gui=bold 
hi rubyClass                 guifg=#FFFFFF 
hi rubyConstant              guifg=#df5f5f 
hi rubyInterpolation         guifg=#FFFFFF 
hi rubyBlockParameter        guifg=#dfdfff 
hi rubyPseudoVariable        guifg=#ffdf5f 
hi rubyStringDelimiter       guifg=#87af5f 
hi rubyInstanceVariable      guifg=#dfdfff 
hi rubyPredefinedConstant    guifg=#df5f5f 
hi rubyLocalVariableOrMethod guifg=#dfdfff 

" Python
" ------
hi pythonExceptions          guifg=#ffaf87 
hi pythonDoctest             guifg=#8787ff 
hi pythonDoctestValue        guifg=#87d7af 

" Mail
" ----
hi mailEmail                 guifg=#87af5f 
hi mailHeaderKey             guifg=#ffdf5f 
hi! link mailSubject mailHeaderKey

" Spell
" ----
hi SpellBad                  guifg=#D70000 guibg=NONE gui=undercurl 
hi SpellRare                 guifg=#df5f87 guibg=NONE gui=underline 
hi SpellCap                  guifg=#dfdfff guibg=NONE gui=underline 
hi SpellLocal                guifg=#00FFFF guibg=NONE gui=undercurl 
hi MatchParen                guifg=#FFFFFF guibg=#005f5f 

" XML
" ---
hi xmlTag                    guifg=#dfaf5f 
hi xmlTagName                guifg=#dfaf5f 
hi xmlEndTag                 guifg=#dfaf5f 

" HTML
" ----
hi! link htmlTag              xmlTag
hi! link htmlTagName          xmlTagName
hi! link htmlEndTag           xmlEndTag

hi checkbox guifg=#3a3a3a guibg=NONE gui=NONE 
hi checkboxDone guifg=#5fff00 guibg=NONE gui=BOLD 
hi checkboxNotDone guifg=#005fdf guibg=NONE gui=BOLD 
