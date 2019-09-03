" Plug 声明
call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'pangloss/vim-javascript'
call plug#end()

" 永远molokai! sublime的配色(习惯了)
colorscheme vim-monokai-tasty
" 只用vim的设置
if &compatible
  set nocompatible
endif

" 50条历史 
set history=50
" read/write a .viminfo file
set viminfo='20,\"50 

" 高亮光标所在行
set cursorline
" 光标位置
set ruler
" 显示光标变距5行
set scrolloff=5

" 显示未完成的命令
set showcmd
" display completion matches in a status line
set wildmenu 
" Show @@@ in the last line if it is truncated.
set display=truncate

" time out for key codes
set ttimeout
" wait up to 100ms after Esc for special key
set ttimeoutlen=100

" 搜索忽略大小写, 大写case敏感
set ignorecase
set smartcase

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on

  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
  set hlsearch
endif

filetype plugin on

