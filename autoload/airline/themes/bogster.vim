let g:airline#themes#bogster#palette = {}

let s:base0     = g:bogster_colors["base0"]
let s:base1     = g:bogster_colors["base1"]
let s:base2     = g:bogster_colors["base2"]
let s:base3     = g:bogster_colors["base3"]
let s:base4     = g:bogster_colors["base4"]
let s:base5     = g:bogster_colors["base5"]
let s:base6     = g:bogster_colors["base6"]
let s:fg0     = g:bogster_colors["fg0"]
let s:red       = g:bogster_colors["red"]
let s:orange    = g:bogster_colors["orange"]
let s:yellow      = g:bogster_colors["yellow"]
let s:lblue = g:bogster_colors["lblue"]
let s:blue      = g:bogster_colors["blue"]

if (&background ==# 'light')
    let s:fg = s:fg0
else
    let s:fg = s:base0
endif

let s:N1 = [ s:fg[0], s:lblue[0], s:fg[1], s:lblue[1] ]
let s:N2 = [ s:fg0[0], s:base1[0], s:fg0[1], s:base1[1] ]
let s:N3 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let g:airline#themes#bogster#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#bogster#palette.normal.airline_error = [ s:base0[0], s:red[0], s:base0[1], s:red[1] ,'bold']
let g:airline#themes#bogster#palette.normal.airline_warning = [ s:base0[0], s:orange[0], s:base0[1], s:orange[1] , 'bold']

let s:I1 = [ s:fg[0], s:red[0], s:fg[1], s:red[1] ]
let s:I2 = [ s:fg0[0], s:base1[0], s:fg0[1], s:base1[1] ]
let s:I3 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let g:airline#themes#bogster#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#bogster#palette.insert.airline_error = [ s:base0[0], s:red[0], s:base0[1], s:red[1] ,'bold']
let g:airline#themes#bogster#palette.insert.airline_warning = [ s:base0[0], s:orange[0], s:base0[1], s:orange[1] , 'bold']

let s:R1 = [ s:fg[0], s:blue[0], s:fg[1], s:blue[1] ]
let s:R2 = [ s:fg0[0], s:base1[0], s:fg0[1], s:base1[1] ]
let s:R3 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let g:airline#themes#bogster#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#bogster#palette.replace.airline_error = [ s:base0[0], s:red[0], s:base0[1], s:red[1] ,'bold']
let g:airline#themes#bogster#palette.replace.airline_warning = [ s:base0[0], s:orange[0], s:base0[1], s:orange[1] , 'bold']

let s:V1 = [ s:fg[0], s:yellow[0], s:fg[1], s:yellow[1] ]
let s:V2 = [ s:fg0[0], s:base1[0], s:fg0[1], s:base1[1] ]
let s:V3 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let g:airline#themes#bogster#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#bogster#palette.visual.airline_error = [ s:base0[0], s:red[0], s:base0[1], s:red[1] ,'bold']
let g:airline#themes#bogster#palette.visual.airline_warning = [ s:base0[0], s:orange[0], s:base0[1], s:orange[1] , 'bold']

let s:IN1 = [ s:base5[0], s:base2[0], s:base5[1], s:base2[1] ]
let s:IN2 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let s:IN3 = [ s:base5[0], s:base1[0], s:base5[1], s:base1[1] ]
let g:airline#themes#bogster#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
