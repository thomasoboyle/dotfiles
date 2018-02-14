
call plug#begin('~/.local/share/nvim/plugged')

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy Finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Color schemes
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

" Nerd Tree
Plug 'scrooloose/nerdtree'
call plug#end()


" Coloring
filetype plugin on
syntax on
set t_Co=256
set background=dark
colorscheme gruvbox


" use 24-bit (true-color) mode in Vim/Neovim
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
end


" Number
set relativenumber
set number


" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'


" Indenting
set ts=2 sw=2 et
let g:indent_guides_start_level=2
set autoindent


" Open NERDTree on start if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set cursorline
