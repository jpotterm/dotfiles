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

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '^\.DS_Store$', '^\.git$', '^\.hg$', '\.orig$', '^\.vagrant$', '^__pycache__$']
let NERDTreeShowHidden = 1
let NERDTreeAutoDeleteBuffer = 1

" Python no double indent
let g:pyindent_open_paren = '&sw'
let g:pyindent_continue = '&sw'

" Syntastic
let g:yntastic_cursor_columns = 0
let g:syntastic_mode_map = { "mode": "passive",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": [] }

" YouCompleteMe
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]
let g:ycm_semantic_triggers = {
    \ 'css': ['re!^(    )+', 're!: *'],
    \ }
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'c': 1,
    \ 'cpp': 1,
    \ 'cs': 1,
    \ 'd': 1,
    \ 'elixir': 1,
    \ 'erlang': 1,
    \ 'go': 1,
    \ 'java': 1,
    \ 'javascript': 1,
    \ 'lua': 1,
    \ 'objc': 1,
    \ 'objcpp': 1,
    \ 'ocaml': 1,
    \ 'perl': 1,
    \ 'perl6': 1,
    \ 'php': 1,
    \ 'python': 1,
    \ 'ruby': 1,
    \ 'scala': 1,
    \ 'vb': 1,
    \ 'vim': 1,
    \}

" NerdTreeTabs
let g:nerdtree_tabs_open_on_gui_startup = 0

" Titlecase
let g:titlecase_map_keys = 0
