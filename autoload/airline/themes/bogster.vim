let g:airline#themes#bogster#palette = {}

let s:base0     = g:bogster_colors["base0"][0]
let s:base1     = g:bogster_colors["base1"][0]
let s:base2     = g:bogster_colors["base2"][0]
let s:base3     = g:bogster_colors["base3"][0]
let s:base4     = g:bogster_colors["base4"][0]
let s:base5     = g:bogster_colors["base5"][0]
let s:base6     = g:bogster_colors["base6"][0]
let s:fg0     = g:bogster_colors["fg0"][0]
let s:red       = g:bogster_colors["red"][0]
let s:orange    = g:bogster_colors["orange"][0]
let s:yellow      = g:bogster_colors["yellow"][0]
let s:lblue = g:bogster_colors["lblue"][0]
let s:blue      = g:bogster_colors["blue"][0]

if (&background ==# 'light')
    let s:fg = s:fg0
else
    let s:fg = s:base0
endif

let s:N1 = [ s:fg, s:lblue, '', '' ]
let s:N2 = [ s:fg0, s:base1, '', '' ]
let s:N3 = [ s:base5, s:base1, '', '' ]
let g:airline#themes#bogster#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#bogster#palette.normal.airline_error = [ s:base0, s:red, '', '' ,'bold']
let g:airline#themes#bogster#palette.normal.airline_warning = [ s:base0, s:orange, '', '' , 'bold']

let s:I1 = [ s:fg, s:red, '', '' ]
let s:I2 = [ s:fg0, s:base1, '', '' ]
let s:I3 = [ s:base5, s:base1, '', '' ]
let g:airline#themes#bogster#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#bogster#palette.insert.airline_error = [ s:base0, s:red, '', '' ,'bold']
let g:airline#themes#bogster#palette.insert.airline_warning = [ s:base0, s:orange, '', '' , 'bold']

let s:R1 = [ s:fg, s:blue, '', '' ]
let s:R2 = [ s:fg0, s:base1, '', '' ]
let s:R3 = [ s:base5, s:base1, '', '' ]
let g:airline#themes#bogster#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#bogster#palette.replace.airline_error = [ s:base0, s:red, '', '' ,'bold']
let g:airline#themes#bogster#palette.replace.airline_warning = [ s:base0, s:orange, '', '' , 'bold']

let s:V1 = [ s:fg, s:yellow, '', '' ]
let s:V2 = [ s:fg0, s:base1, '', '' ]
let s:V3 = [ s:base5, s:base1, '', '' ]
let g:airline#themes#bogster#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#bogster#palette.visual.airline_error = [ s:base0, s:red, '', '' ,'bold']
let g:airline#themes#bogster#palette.visual.airline_warning = [ s:base0, s:orange, '', '' , 'bold']

let s:IN1 = [ s:base5, s:base2, '', '' ]
let s:IN2 = [ s:base5, s:base1, '', '' ]
let s:IN3 = [ s:base5, s:base1, '', '' ]
let g:airline#themes#bogster#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
