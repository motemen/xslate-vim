runtime! syntax/html.vim
unlet b:current_syntax

syntax keyword txKeyword cascade block override for while if else given when contained
syntax match txKeyword +contains+ contained

syntax region txBlock   matchgroup=txDelim start=+<:+ end=+:>+ contains=txKeyword,txComment containedin=ALL keepend
syntax match  txBlock   +^\s*:.*$+ contains=txDelim,txKeyword,txComment
syntax match  txDelim   +:+ contained
syntax match  txComment +#[^;\r\n]*+ contained

highlight link txKeyword Function
highlight link txDelim   Special
highlight link txComment Comment

let b:current_syntax = 'xslate'
