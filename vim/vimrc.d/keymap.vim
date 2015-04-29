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
"   i:  Diff file
"   f:  Ctrl-P file
"   sc: Syntastic check
"   sr: Syntastic reset
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
" nnoremap <silent> <leader>t :NERDTreeTabsToggle<CR>

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

" Format file
nnoremap <silent> <leader>gf :call FormatFile()<CR>

" Easy motion
map <leader>ew <Plug>(easymotion-w)
map <leader>eb <Plug>(easymotion-b)
map <leader>el <Plug>(easymotion-lineforward)
map <leader>eh <Plug>(easymotion-linebackward)

" Syntastic
nnoremap <silent> <leader>sc :SyntasticCheck<CR>
nnoremap <silent> <leader>sr :SyntasticReset<CR>
