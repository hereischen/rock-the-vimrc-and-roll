" Plug 声明
call plug#begin('~/.vim/plugged')
" molikai仿sublime配色
Plug 'patstockwell/vim-monokai-tasty'
" javascript syntax improved
Plug 'pangloss/vim-javascript'
" NERDTree
Plug 'scrooloose/nerdtree'
" load prettier only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less',
  \         'scss', 'json', 'graphql', 'markdown', 'vue',
  \         'yaml', 'html'] }
" syntax check eslint
" Plug 'dense-analysis/ale'
call plug#end()

" ===============================================
" Plugins的配置
" ===============================================
" 永远molokai! 仿sublime的配色(习惯了)
colorscheme vim-monokai-tasty

" 默认打开nerdTree, 这里不打开
" autocmd VimEnter * NERDTree
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" ale的配置
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 0
let g:ale_lint_on_enter = 1

" Prettier的配置
let g:prettier#exec_cmd_path = "$HOME/.nvm/versions/node/v10.16.1/bin/prettier"
let g:prettier#config#config_precedence = 'file-override'
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'es5'

"================================================
" 基础配置
"================================================
" 只用vim的设置
if &compatible
  set nocompatible
endif
set encoding=UTF-8

" 50条历史 
set history=50
" read/write a .viminfo file
set viminfo='20,\"50 

" 高亮光标所在行
set cursorline
" 光标位置
set ruler
" 显示光标边距5行
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

" 缩进相关
filetype indent off
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2

