" System clipboard

let s:python_host_init = 'python -c "import neovim; neovim.start_host()"'
let &initpython = s:python_host_init
let &initclipboard = s:python_host_init
set unnamedclip " Automatically use clipboard as storage for the unnamed register


" General

set breakindent                   " Keep wrapped lines at same level
set breakindentopt=shift:4        " Indent broken lines
