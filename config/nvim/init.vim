
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

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Nerd Tree
Plug 'scrooloose/nerdtree'
call plug#end()


" Coloring
filetype plugin on
syntax on
set t_Co=256
set background=dark
colorscheme gruvbox

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


" Git Gutter
let g:gitgutter_max_signs = 500  " default value
" Short Delay (To get git gutter to appear more quickly)
set updatetime=100

" Open NERDTree on start if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Cursorline
set cursorline


" Map control p to FZF (search)
nnoremap <c-p> :FZF<cr>

" Map jk to ESC
imap jk <Esc>
