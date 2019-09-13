call plug#begin('~/.vim/plugged')
  Plug 'sentientmachine/Pretty-Vim-Python' " Python syntax highlighting
  Plug 'rakr/vim-one' " One theme
call plug#end()

" Colorscheme
colorscheme one
set background=dark

set nomodeline

set mouse=a

set tabstop=4

set shiftwidth=4

set autoindent

set tags=tags;/
