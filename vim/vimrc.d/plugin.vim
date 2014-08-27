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

let g:netrw_list_hide= '.*\.pyc$,.*\.swp$,^\.DS_Store$'
let g:netrw_preview = 1           " Vertical split preview

let NERDTreeIgnore = ['\.pyc$', '\.swp$', '^\.DS_Store$', '^\.git$', '\.orig$']
let NERDTreeShowHidden=1

" Python no double indent
let g:pyindent_open_paren = '&sw'
let g:pyindent_continue = '&sw'
