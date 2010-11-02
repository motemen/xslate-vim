autocmd BufNewFile,BufRead *.tx setfiletype xslate
autocmd BufNewFile,BufRead *.html if search('^: ') > 0 | set filetype=xslate | endif