let g:ctrlp_map = ''
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(pyc|aux|bbl|blg|fdb_latexmk|lof|log|lot|toc|out|synctex\.gz)$',
    \ }

let g:loaded_matchparen = 1       " Don't highlight matching brackets

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

runtime macros/matchit.vim        " Use matchit included with Vim

autocmd FileType htmldjango let b:surround_{char2nr("-")} = "{% \1Tag name: \1 %} \r {% end\1\1 %}"

let g:surround_indent = 0

let NERDTreeIgnore = ['\.pyc$', '\.swp$', '^\.DS_Store$', '^\.git$', '^\.hg$', '\.orig$', '^\.vagrant$']
let NERDTreeShowHidden = 1
let NERDTreeChDirMode = 2

" Python no double indent
let g:pyindent_open_paren = '&sw'
let g:pyindent_continue = '&sw'

" Syntastic
let g:yntastic_cursor_columns = 0
let g:syntastic_mode_map = { "mode": "passive",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": [] }
