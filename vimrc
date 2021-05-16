set nocompatible
set number
set wrap
set encoding=utf-8
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set incsearch
set smartcase
set hlsearch
syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent

colorscheme desert
filetype plugin on

set cursorline
hi CursorLineNr cterm=none
highlight CursorLine ctermbg=235 term=none cterm=none

noremap L :set invnumber<CR>

" Automatic Installation of VimPlug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()
