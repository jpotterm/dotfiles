map <Space> <Leader>

" Mac terminal interprets C-Space as C-@
inoremap <C-Space> <C-X><C-O>
inoremap <C-@> <C-X><C-O>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap Y y$

" Really unfold all
nnoremap <silent> zR :setlocal foldlevel=20<CR>

" Ignore Shift-K
noremap K <Nop>

" Ignore Q (Ex mode)
noremap Q <Nop>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Ctrl-[hjkl] to select the active split
nnoremap <silent> <C-K> :wincmd k<CR>
nnoremap <silent> <C-J> :wincmd j<CR>
nnoremap <silent> <C-H> :wincmd h<CR>
nnoremap <silent> <C-L> :wincmd l<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allows incsearch highlighting for range commands
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader mappings
"   b:  Ctrl-P buffer
"   c:  Delete current buffer
"   C:  Delete all buffers
"   d:  Duplicate line
"   eb:  Easy motion words before
"   eh:  Easy motion line forward
"   el:  Easy motion line backward
"   ew:  Easy motion words after
"   gi: Python sort imports
"   gf: Format file
"   gt: Titlecase
"   i:  Diff file
"   f:  Ctrl-P file
"   sc: Syntastic check
"   sr: Syntastic reset
"   t:  NERDTree
"   w:  Save file
"   /:  Search highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CtrlP
nnoremap <silent> <Leader>f :CtrlP<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>

" Save shortcut
nnoremap <silent> <Leader>w :write<CR>

" Duplicate line
nnoremap <silent> <Leader>d yyPj
vnoremap <silent> <Leader>d yP`<

" Toggle NERDTree
nnoremap <silent> <Leader>t :call WorkaroundNERDTreeToggle()<CR>

" Delete current buffer
nnoremap <silent> <Leader>c :bd<CR>

" Delete all buffers
nnoremap <Leader><S-C> :1,2000 bd<CR>

" Toggle search highlighting
nnoremap <silent> <Leader>/ :set hlsearch! hlsearch?<CR>

" Toggle diff mode
nnoremap <silent> <Leader>i :call ToggleDiff()<CR>

" Sort python imports
nnoremap <silent> <Leader>gi :%!isort -<CR>

" Format file
nnoremap <silent> <Leader>gf :call FormatFile()<CR>

" Titlecase
nmap <silent> <Leader>gt <Plug>Titlecase
vmap <silent> <Leader>gt <Plug>Titlecase

" Syntastic
nnoremap <silent> <Leader>sc :SyntasticCheck<CR>
nnoremap <silent> <Leader>sr :SyntasticReset<CR>
