if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name='bogster'

let g:bogster_colors = {
  \ "base0"        : ["#161c23", 233],
  \ "base1"        : ["#232d38", 235],
  \ "base2"        : ["#313f4e", 237],
  \ "base3"        : ["#415367", 239],
  \ "base4"        : ["#536984", 240],
  \ "base5"        : ["#627d9d", 241],
  \ "base6"        : ["#9ea4c2", 247],
  \ "fg0"          : ["#c6b8ad", 251],
  \ "fg1"          : ["#e5ded6", 253],
  \ "red"          : ["#d32c5d", 204],
  \ "lred"         : ["#dc597f", 211],
  \ "orange"       : ["#dc7759", 209],
  \ "yellow"       : ["#dcb659", 221],
  \ "green"        : ["#5dd32c", 118],
  \ "lgreen"       : ["#7fdc59", 120],
  \ "blue"         : ["#59c0dc", 80],
  \ "lblue"        : ["#59dcd8", 86],
  \ "purp"         : ["#b759dc", 171],
  \ "pink"         : ["#dc59c0", 206],
  \ "teal"         : ["#2cd3a4", 43],
  \ "lteal"        : ["#59dcb7", 50],
  \ "none"         : ["NONE", "NONE"]
  \ }

" if doesn't support termguicolors or < 256 colors exit
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

"########################################
" Terminal colors for NeoVim

if has('nvim')
    let g:terminal_color_0 = g:bogster_colors["base0"][0]
    let g:terminal_color_8 = g:bogster_colors["base3"][0]

    let g:terminal_color_1 = g:bogster_colors["red"][0]
    let g:terminal_color_9 = g:bogster_colors["lred"][0]

    let g:terminal_color_2 = g:bogster_colors["green"][0]
    let g:terminal_color_10 = g:bogster_colors["lgreen"][0]

    let g:terminal_color_3 = g:bogster_colors["orange"][0]
    let g:terminal_color_11 = g:bogster_colors["yellow"][0]

    let g:terminal_color_4 = g:bogster_colors["blue"][0]
    let g:terminal_color_12 = g:bogster_colors["lblue"][0]

    let g:terminal_color_5 = g:bogster_colors["purp"][0]
    let g:terminal_color_13 = g:bogster_colors["pink"][0]

    let g:terminal_color_6 = g:bogster_colors["teal"][0]
    let g:terminal_color_14 = g:bogster_colors["lteal"][0] 

    let g:terminal_color_7 = g:bogster_colors["fg0"][0]
    let g:terminal_color_15 = g:bogster_colors["fg1"][0]
endif

" Terminal colors for Vim
if has('*term_setansicolors')
    let g:terminal_ansi_colors = repeat([0], 16)

    let g:terminal_ansi_colors[0] = g:bogster_colors["base0"][0]
    let g:terminal_ansi_colors[8] = g:bogster_colors["base3"][0]

    let g:terminal_ansi_colors[1] = g:bogster_colors["red"][0]
    let g:terminal_ansi_colors[9] = g:bogster_colors["lred"][0]

    let g:terminal_ansi_colors[2] = g:bogster_colors["green"][0]
    let g:terminal_ansi_colors[10] = g:bogster_colors["lgreen"][0]

    let g:terminal_ansi_colors[3] = g:bogster_colors["orange"][0]
    let g:terminal_ansi_colors[11] = g:bogster_colors["yellow"][0]

    let g:terminal_ansi_colors[4] = g:bogster_colors["blue"][0]
    let g:terminal_ansi_colors[12] = g:bogster_colors["lblue"][0]

    let g:terminal_ansi_colors[5] = g:bogster_colors["purp"][0]
    let g:terminal_ansi_colors[13] = g:bogster_colors["pink"][0]

    let g:terminal_ansi_colors[6] = g:bogster_colors["teal"][0]
    let g:terminal_ansi_colors[14] = g:bogster_colors["lteal"][0]

    let g:terminal_ansi_colors[7] = g:bogster_colors["fg0"][0]
    let g:terminal_ansi_colors[15] = g:bogster_colors["fg1"][0]
endif

if !exists("g:gh_color")
    let g:gh_color = "hard"
endif

"if g:gh_color ==# "soft"
    "let g:bogster_colors["base0"] = g:bogster_colors["base1"]
    "let g:bogster_colors["base1"] = g:bogster_colors["base2"]
    "let g:bogster_colors["base2"] = ["#30353c", 238]
"endif

"########################################
" funcs

function! s:__hl(group, guifg, ...)
    " Arguments: group, guifg, guibg, style

    let fg = g:bogster_colors[a:guifg]

    if a:0 >= 1
        let bg = g:bogster_colors[a:1]
    else
        let bg = g:bogster_colors["none"]
    endif

    if a:0 >= 2
        let style = a:2
    else
        let style = "NONE"
    endif
    
    let hi_str = [ "hi", a:group,
            \ 'guifg=' . fg[0], "ctermfg=" . fg[1],
            \ 'guibg=' . bg[0], "ctermbg=" . bg[1],
            \ 'gui=' . style, "cterm=" . style
            \ ]
    
    execute join(hi_str, ' ')
endfunction

"########################################
" clear any previous highlighting and syntax

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

"########################################
" set the colors

call s:__hl("BogsterBase0", "base0")
call s:__hl("BogsterBase1", "base1")
call s:__hl("BogsterBase2", "base2")
call s:__hl("BogsterBase3", "base3")
call s:__hl("BogsterBase4", "base4")
call s:__hl("BogsterBase5", "base5")
call s:__hl("BogsterBase6", "base6")
call s:__hl("BogsterFg0", "fg0")
call s:__hl("BogsterFg1", "fg1")
call s:__hl("BogsterLRed", "lred")
call s:__hl("BogsterRed", "lred")
call s:__hl("BogsterOrange", "orange")
call s:__hl("BogsterYellow", "yellow")
call s:__hl("BogsterLTeal", "lteal")
call s:__hl("BogsterPink", "pink")
call s:__hl("BogsterLBlue", "lblue")
call s:__hl("BogsterBlue", "blue")
call s:__hl("BogsterBlueItalic", "blue", "none", "italic")
call s:__hl("BogsterLGreen", "lgreen")
call s:__hl("BogsterUnder", "none", "none", "underline")
call s:__hl("BogsterBold", "none", "none", "bold")
call s:__hl("BogsterItalic", "none", "none", "italic")

call s:__hl("Cursor", "fg0", "none", "reverse")
call s:__hl("iCursor", "base0", "lred")
call s:__hl("vCursor", "base0", "purp")
call s:__hl("CursorColumn", "none", "base1")
call s:__hl("CursorLine", "none", "base1")
call s:__hl("CursorLineNr", "lblue", "base2")
call s:__hl("DiffAdd", "green", "base0")
call s:__hl("DiffChange", "yellow", "base0")
call s:__hl("DiffDelete", "lred", "base0")
call s:__hl("ErrorMsg", "red", "base1")
call s:__hl("Error", "none", "lred")
call s:__hl("Folded", "fg0", "base1")
call s:__hl("MatchParen", "none", "base3")
call s:__hl("Normal", "fg1", "base0")
call s:__hl("Pmenu", "fg0", "base1")
call s:__hl("PmenuSel", "fg0", "base2")
call s:__hl("Search", "base0", "fg1")
call s:__hl("SignColumn", "none", "base0")
call s:__hl("StatusLine", "base1", "base3")
call s:__hl("StatusLineNC", "base1", "base3")
call s:__hl("Todo", "fg0", "base0")
call s:__hl("VertSplit", "base1", "base1")
call s:__hl("Visual", "none", "base0", "reverse")
call s:__hl("WarningMsg", "orange", "base1")

"########################################
" links

hi! link Special BogsterLGreen
hi! link Boolean Constant
hi! link Character Constant
hi! link Comment BogsterBase4
hi! link Conceal Ignore
hi! link Conditional Statement
hi! link Constant Bogsterlteal
hi! link Debug Special
hi! link Define PreProc
hi! link Delimiter BogsterFg1
hi! link Directory BogsterLBlue
hi! link Exception Statement
hi! link Float Number
hi! link FunctionDef Function
hi! link Function BogsterLBlue
hi! link Identifier BogsterLRed
hi! link Include Statement
hi! link IncSearch Search
hi! link Keyword BogsterYellow
hi! link Label BogsterLBlue
hi! link LibraryFunc Function
hi! link LibraryIdent Identifier
hi! link LibraryType Type
hi! link LineNr BogsterBase3
hi! link LocalFunc Function
hi! link LocalIdent Identifier
hi! link LocalType Type
hi! link Macro PreProc
hi! link ModeMsg BogsterFg0
hi! link MoreMsg BogsterFg0
hi! link MsgArea Title
hi! link Noise Delimiter
hi! link NonText BogsterBase3
hi! link NonText Ignore
hi! link Number BogsterBlue
hi! link Operator BogsterOrange
hi! link PreCondit PreProc
hi! link PreProc BogsterOrange
hi! link Question BogsterFg0
hi! link Quote StringDelimiter
hi! link Repeat BogsterPurp
hi! link Searchlight Search
hi! link SignifySignAdd Signify
hi! link SignifySignChange Signify
hi! link SignifySignDelete Signify
hi! link SpecialChar Special
hi! link Special BogsterLBlue
hi! link SpecialKey BogsterBase3
hi! link SpecialKey Ignore
hi! link Statement BogsterYellow
hi! link StatusLineTermNC StatusLineNC
hi! link StatusLineTerm StatusLine
hi! link StorageClass Statement
hi! link String Constant
hi! link StringDelimiter String
hi! link Structure Statement
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link TabLine StatusLineNC
hi! link Tag Special
hi! link Terminal Normal
hi! link Title BogsterFg0
hi! link Type BogsterLRed

" ALE

hi! link ALEVirtualTextError ErrorMsg
hi! link ALEVirtualTextWarning WarningMsg

" bib

hi! link bibEntryKw LibraryIdent
hi! link bibKey IdentifierDef
hi! link bibType LibraryType

" Coc

hi! link CocErrorSign ErrorMsg
hi! link CocWarningSign WarningMsg
hi! link CocInfoSign BogsterLBlue
hi! link CocHintSign BogsterPurp
hi! link CocErrorFloat ErrorMsg
hi! link CocWarningFloat WarningMsg
hi! link CocInfoFloat BogsterLBlue
hi! link CocHintFloat BogsterPurp
hi! link CocDiagnosticsError ErrorMsg
hi! link CocDiagnosticsWarning WarningMsg
hi! link CocDiagnosticsInfo BogsterLBlue
hi! link CocDiagnosticsHint BogsterPurp
hi! link CocSelectedText BogsterLRed
hi! link CocCodeLens BogsterBase3

call s:__hl("CocErrorHighlight", "none", "none", "undercurl,bold")
hi! link CocWarningHighlight CocErrorHighlight
hi! link CocInfoHighlight CocErrorHighlight
hi! link CocHintHighlight CocErrorHighlight

" CSS
hi! link cssClassName Type
hi! link cssPseudoClassId PreProc
hi! link cssIdentifier Identifier
hi! link cssFunctionName FunctionDef
hi! link cssCustomProp Normal
hi! link cssFunctionComma Normal
hi! link cssBraces Normal
hi! link cssSelectorOp Operator
hi! link cssSelectorOp2 Operator
" diff

hi! link diffAdded DiffAdd
hi! link diffBDiffer WarningMsg
hi! link diffChanged DiffChange
hi! link diffCommon WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffFile Directory
hi! link diffIdentical WarningMsg
hi! link diffIndexLine Number
hi! link diffIsA WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffOnly WarningMsg
hi! link diffRemoved DiffDelete

" Git commit

hi! link gitcommitHeader Todo
hi! link gitcommitOverflow Error
hi! link gitcommitSummary Title

" HTML
hi! link htmlTag Operator
hi! link htmlEndTag htmlTag
hi! link htmlSpecialChar Special

" JavaScript

hi! link jsArrowFunction Operator
hi! link jsFunction Keyword
hi! link jsOperatorKeyword Keyword
hi! link jsGlobalObjects BogsterLRed
hi! link jsSpecial Special

" shell
hi! link shVariable BogsterFg1
hi! link shAlias shVariable
hi! link shDeref BogsterLRed
hi! link shConditional Keyword
hi! link shStatement Keyword
hi! link shSet Keyword
hi! link shSetList Normal
hi! link shQuote Quote
hi! link shSnglCase Operator
hi! link shTestOpr Operator
hi! link shVarAssign Operator
hi! link shEscape BogsterLGreen
hi! link shOption Keyword
hi! link shDblBrace Operator
hi! link shSpecial shEscape
hi! link shSpecialDQ shSpecial
hi! link shSpecialSQ shSpecial

" python
hi! link pythonClass Type
hi! link pythonClassVar BogsterOrange
hi! link pythonOperator Operator
hi! link pythonRun PreProc

" Rust
hi! link rustMacro PreProc
hi! link rustAttribute PreProc
hi! link rustDerive PreProc
hi! link rustSelf BogsterLRed
hi! link rustFuncName FunctionDef
hi! link rustIdentifier Identifier
hi! link rustType LibraryType
hi! link rustStorage Keyword
hi! link rustEnumVariant rustType
hi! link rustConditional Keyword
hi! link rustRepeat Keyword
hi! link rustSigil BogsterOrange
hi! link rustCommentLineDoc BogsterBase6
hi! link rustQuestionMark Operator
hi! link rustModPath BogsterLRed

" Vim
hi! link vimVar Normal
hi! link vimOper Operator
hi! link vimLet Keyword
hi! link vimNotFunc Keyword
hi! link vimCommand Keyword
hi! link vimHiGroup Identifier
hi! link vimGroup Identifier
hi! link vimContinue vimOper
