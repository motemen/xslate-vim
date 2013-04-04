autocmd BufNewFile,BufRead *.tx set filetype=xslate
autocmd BufNewFile,BufRead *.html if search('^: ') > 0 | set filetype=xslate | endif
