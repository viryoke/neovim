set number " 打开行号设置
set relativenumber " 使用相对行号
set encoding=utf-8
set ruler " 光标信息
set hlsearch " 高亮显示搜索
set incsearch " 边搜索边高亮
set ignorecase " 忽悠大小写
set cursorline " 突出当前显示行

set ts=4 " tab 占4个字符宽度
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent " 复制上一行的缩进
" expandtab " tab为4个空格

syntax enable " 语法高亮
syntax on

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
set background=dark

let mapleader=" " " 定义快捷键前缀,即<Leader>

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+y
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" 解决插入模式下delete/backspce键失效问题
set backspace=2


"==============================================================================
" 插件配置
"==============================================================================
call plug#begin('~/.vim/plugged')
" vim 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 左侧导航目录
Plug 'scrooloose/nerdtree'
" git 插件
Plug 'tpope/vim-fugitive'
" YouCompleteMe插件
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" go 语言相关插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" ranger插件
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" floaterm浮动窗口插件
Plug 'voldikss/vim-floaterm'
" CtrlP插件
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()


"==============================================================================
" nerdtree 文件列表插件配置
"==============================================================================
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '?'
" 自动打开 nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']


"==============================================================================
" vim-airline 配置
"==============================================================================
" 启用显示缓冲区
let g:airline#extensions#tabline#enabled = 1


"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2

"==============================================================================
"  python3 配置
"==============================================================================
let g:python3_host_prog = '/usr/bin/python3'

"==============================================================================
"  nodejs 配置
"==============================================================================
"let g:node_host_prog = 'D:\Programs\nodejs\node.exe'


"==============================================================================
"  gui 配置
"==============================================================================
if has('gui_running')
    set guifont=Cascadia\ Mono\ PL\ 13
endif


"==============================================================================
" ranger配置
"==============================================================================
let g:ranger_map_keys = 0


"==============================================================================
" vim-floaterm配置
"==============================================================================
nmap <Leader>f :FloatermNew ranger<Enter>
