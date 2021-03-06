let s:base0      = g:bogster_colors["base0"][0]
let s:base1      = g:bogster_colors["base1"][0]
let s:base2      = g:bogster_colors["base2"][0]
let s:base3      = g:bogster_colors["base3"][0]
let s:base4      = g:bogster_colors["base4"][0]
let s:base5      = g:bogster_colors["base5"][0]
let s:base6      = g:bogster_colors["base6"][0]
let s:fg0      = g:bogster_colors["fg0"][0]
let s:blue       = g:bogster_colors["blue"][0]
let s:orange     = g:bogster_colors["orange"][0]
let s:red        = g:bogster_colors["red"][0]
let s:yellow       = g:bogster_colors["yellow"][0]
let s:lblue  = g:bogster_colors["lblue"][0]
let s:green      = g:bogster_colors["green"][0]

if exists('g:lightline')

    let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
    let s:p.inactive.right = [ [ s:base5, s:base1 ], [ s:base4, s:base1 ] ]
    let s:p.inactive.left =  [ [ s:base6, s:base2 ], [ s:base4, s:base2 ] ]
    let s:p.inactive.middle = [ [ s:base5, s:base1 ] ]

    let s:p.normal.left = [ [ s:base0, s:lblue, 'bold' ], [ s:fg0, s:base2, 'bold' ] ]
    let s:p.normal.right = [ [ s:base0, s:lblue ], [ s:fg0, s:base2 ] ]
    let s:p.normal.middle = [ [ s:base5, s:base1 ] ]

    let s:p.insert.left = [ [ s:base0, s:red, 'bold' ], [ s:fg0, s:base2, 'bold' ] ]
    let s:p.insert.right = [ [ s:base0, s:red ], [ s:fg0, s:base2 ] ]
    let s:p.insert.middle = [ [ s:base5, s:base1 ] ]

    let s:p.replace.left = [ [ s:base0, s:blue, 'bold' ], [ s:fg0, s:base2, 'bold' ] ]
    let s:p.replace.right = [ [ s:base0, s:blue ], [ s:fg0, s:base2 ] ]
    let s:p.replace.middle = [ [ s:base5, s:base1 ] ]

    let s:p.terminal.left = [ [ s:base0, s:orange, 'bold' ], [ s:fg0, s:base2, 'bold' ] ]
    let s:p.terminal.right = [ [ s:base0, s:orange ], [ s:fg0, s:base2 ] ]
    let s:p.terminal.middle = [ [ s:base5, s:base1 ] ]

    let s:p.visual.left = [ [ s:base0, s:yellow, 'bold' ], [ s:fg0, s:base2, 'bold' ] ]
    let s:p.visual.right = [ [ s:base0, s:yellow ], [ s:fg0, s:base2 ] ]
    let s:p.visual.middle = [ [ s:base5, s:base1 ] ]

    let s:p.tabline.left = [ [ s:base4, s:base2 ] ]
    let s:p.tabline.tabsel = [ [ s:base0, s:base4 ] ]
    let s:p.tabline.middle = [ [ s:base0, s:base0 ] ]
    let s:p.tabline.right = [ [ s:base0, s:red ] ]

    let s:p.normal.error = [ [ s:base0, s:red ] ]
    let s:p.normal.warning = [ [ s:base2, s:orange ] ]

    let g:lightline#colorscheme#bogster#palette = lightline#colorscheme#fill(s:p)

endif
