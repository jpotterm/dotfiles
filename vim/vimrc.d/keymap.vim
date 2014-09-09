let mapleader = ","

" Mac terminal interprets C-Space as C-@
inoremap <C-Space> <C-X><C-O>
inoremap <C-@> <C-X><C-O>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap Y y$

" Really unfold all
nnoremap <silent> zR :setlocal foldlevel=20<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Ctrl-[hjkl] to select the active split
nnoremap <silent> <C-K> :wincmd k<CR>
nnoremap <silent> <C-J> :wincmd j<CR>
nnoremap <silent> <C-H> :wincmd h<CR>
nnoremap <silent> <C-L> :wincmd l<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader mappings
"   b:  Ctrl-P buffer
"   c:  Delete current buffer
"   C:  Delete all buffers
"   d:  Duplicate line
"   gi: Python sort imports
"   i:  Diff file
"   f:  Ctrl-P file
"   t:  NERDTree
"   w:  Save file
"   /:  Search highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CtrlP
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

" Save shortcut
nnoremap <silent> <leader>w :write<CR>

" Duplicate line
nnoremap <silent> <leader>d yyPj
vnoremap <silent> <leader>d yP`<

" Toggle NERDTree
nnoremap <silent> <leader>t :call WorkaroundNERDTreeToggle()<CR>

" Delete current buffer
nnoremap <silent> <leader>c :bd<CR>

" Delete all buffers
nnoremap <leader><S-C> :1,2000 bd<CR>

" Toggle search highlighting
nnoremap <silent> <leader>/ :set hlsearch! hlsearch?<CR>

" Toggle diff mode
nnoremap <silent> <leader>i :call ToggleDiff()<CR>

" Sort python imports
nnoremap <silent> <leader>gi :%!isort -<CR>
