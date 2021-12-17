" 避免 vim 跨大版本兼容，能解决一些问题
set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set number

set cursorline

" set cursorcolumn

set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set nowrap

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx



" PLUGINS
call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
call plug#end()

" MAPPINGS

" VIMSCRIPT
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    " autocmd VimEnter * NERDTree | wincmd p
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
    autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END


" 最下面的状态栏（ status line
" vimrc 重新加载时清空状态栏
set statusline=
" 左侧定义
set statusline+=\ %F\ %M\ %Y\ %R
" 左右分割线
set statusline +=%=
" 右侧定义
set statusline+=\ ascii:\ %b\ %hex:\ 0x%B\ row:\ %l\ col:\ %c
" 状态栏显示在倒数第二行
set laststatus=2

