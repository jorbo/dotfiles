" Vim Plugin install location
call plug#begin('~/.vim/vim-plug')

" Powerline for vim
Plug 'itchyny/lightline.vim'

" bash commands in vim
Plug 'https://github.com/tpope/vim-eunuch.git'

" surround
Plug 'https://github.com/tpope/vim-surround.git'

call plug#end()

set noshowmode
set laststatus=2
set number
set shiftwidth=0
set tabstop=2
