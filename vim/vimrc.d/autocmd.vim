autocmd BufWritePre * :call StripTrailingWhitespace()

" External formatters
autocmd FileType json let &formatprg="python -m json.tool"
autocmd FileType xml let &formatprg="tidy -i -xml -wrap 0 -config <(echo -e 'indent-spaces: 4') 2>/dev/null"
autocmd FileType html let &formatprg="tidy -i -wrap 0 -asxhtml -utf8 -config <(echo -e 'indent-spaces: 4') 2>/dev/null"
