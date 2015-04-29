autocmd BufWritePre * :call StripTrailingWhitespace()
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
