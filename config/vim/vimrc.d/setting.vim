set nocompatible                  " Get rid of Vi compatibility mode
filetype plugin on
filetype indent on

set nohlsearch                    " Don't highlight search results
set noshowmatch                   " Don't highlight matching bracket
set smartcase                     " Ignore case unless uppercase
set ignorecase                    " Always case-insensitive
set incsearch                     " Searches for strings incrementally

set autoindent                    " Auto-indent new lines
set expandtab                     " Use spaces instead of tabs
set shiftwidth=4                  " Number of auto-indent spaces
set smarttab                      " Enable smart-tabs
set tabstop=4                     " Displayed width of tabs
set softtabstop=4                 " Number of spaces per Tab
set breakindent                   " Keep wrapped lines at same level

syntax on                         " Syntax highlighting
set t_Co=256                      " Enable 256-color mode
colorscheme solarized

set foldmethod=indent             " Fold based on indent
set foldignore=                   " Don't exempt blocks starting with #
set foldlevelstart=20             " Don't fold by default

set wildmenu
set wildmode=longest:list         " Make wildmenu completion more like bash
set wildignore=*.pyc,*.swp,.DS_Store,*.orig,.git,**/.git/**,.hg,**/.hg/**,.vagrant,**/.vagrant/**,node_modules,**/node_modules/**,elm-stuff,**/elm-stuff/**,bower_components,**/bower_components/**,vendor,**/vendor/**,__pycache__,**/__pycache__/**


set number                        " Show line numbers
set linebreak                     " Break lines at word (requires Wrap lines)
set visualbell                    " Use visual bell (no beeping)
set ruler                         " Show row and column ruler information
set undolevels=1000               " Number of undo levels
set encoding=utf-8
set lazyredraw                    " Don't update display while executing macros
set ttyfast
set autoread                      " Auto update if file has changed outside Vim
set showcmd                       " Show current command on status line
set backspace=indent,start        " Backspace over indent and insert start
set laststatus=2                  " Always show status bar
set cursorline                    " Highlight the current line
set directory=/tmp//,.,~/tmp,/var/tmp " Use /tmp for all swap files
set display=lastline              " Show long lines instead of hiding them with @
set foldopen=hor,mark,percent,quickfix,tag,undo
set gdefault                      " Substitute all occurrences by default
" set completeopt=menu,preview,longest " Complete longest common prefix

if !has('nvim')
    set noesckeys                     " Make Escape key respond immediately
endif
