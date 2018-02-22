
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
" Split Join
Plug 'AndrewRadev/splitjoin.vim'
" Git Gutter
Plug 'airblade/vim-gitgutter'
" Syntastic
Plug 'scrooloose/syntastic'
" Fugative
Plug 'tpope/vim-fugitive'
" Super tab
Plug 'ervandew/supertab'
" Nerd Tree
Plug 'scrooloose/nerdtree'
" Trailing Whitespace
Plug 'bronson/vim-trailing-whitespace'
Plug 'seagoj/whitespace.vim'
" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'
" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
" Vim Rails
Plug 'tpope/vim-rails'
" Endwise
Plug 'tpope/vim-endwise'

call plug#end()


" Coloring
filetype plugin on
syntax on
set t_Co=256
set background=dark
colorscheme gruvbox

" Number
" set relativenumber
set number


" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'


" Indenting
set ts=2 sw=2 et
let g:indent_guides_start_level=2
set autoindent
let g:indent_guides_enable_on_vim_startup = 1

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_html_checkers = ['eslint']
let g:xml_syntax_folding = 1

