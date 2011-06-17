runtime! syntax/html.vim
unlet b:current_syntax

syntax keyword txKeyword cascade around block override macro contained
syntax match txKeyword +contains+ contained

syntax include @inlinePerl syntax/perl.vim
syntax cluster inlinePerl remove=perlFunctionName remove=perlElseIfError
syntax clear perlElseIfError
syntax region txBlock   matchgroup=txDelim start=+<:+ end=+:>+ contains=txKeyword,txComment,@inlinePerl containedin=ALL keepend
syntax match  txBlock   +^\s*:.*$+ contains=txDelim,txKeyword,txComment,@inlinePerl
syntax match  txDelim   +:+ contained
syntax match  txComment +#[^;]*+ contained

highlight link txKeyword Function
highlight link txDelim   Special
highlight link txComment Comment

let b:current_syntax = 'xslate'
