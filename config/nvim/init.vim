set relativenumber
set number

call plug#begin('~/.local/share/nvim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
call plug#end()

filetype plugin on
syntax on
set t_Co=256
set background=dark
colorscheme molokai


" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'
