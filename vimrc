" ---------------------- PLUGIN CONFIGURATION ----------------------

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ---------------------- BASICS ----------------------

" turn on syntax highlighting
syntax on

" and show line numbers
set number

" reload files changed outside vim
set autoread

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" set unix line endings
set fileformat=unix

" when reading files try unix line endings then dos, also use unix for new
" buffers
set fileformats=unix,dos

" ---------------------- EDITING ----------------------

" indentation
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=4   " in insert mode, tabs are 4 spaces

" show the cursor position all the time
set ruler
set cursorline

" HTML Editing
set matchpairs+=<:>

" Use tabs for Emmet
let g:user_emmet_leader_key='<Tab>'

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" no lines longer than 100 cols
set textwidth=100
set formatoptions=qrn1
set wrapmargin=0
set colorcolumn=+1

" allows to put a custom .vim file in every directory
" to load commands and options specific to that directory.
let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vim"
if (filereadable(b:vim))
    execute "source ".b:vim
endif

" ---------------------- APPEARANCE ----------------------

" set Airline
set laststatus=2

" set theme
set background=dark
colorscheme tomorrow-night

" set default font in mac vim and gvim
" remember to download the font from Powerline
set guifont=Inconsolata\ for\ Powerline:h16

" Allow powerline symbols to show up
let g:airline_powerline_fonts = 1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" ---------------------- SEARCH ----------------------

" no need to type /g at the end of search / replace
set gdefault

" case insensitive searching (unless specified)
set ignorecase
set smartcase

" hilight searches by default
set hlsearch

" Stop highlight after searching
nnoremap <silent> <leader>, :noh<cr>

" find the next match as we type the search
set incsearch

" highlight matching brackets
set showmatch
