" ---------------------- PLUGIN CONFIGURATION ----------------------

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'mattn/emmet-vim'                  " zen coding on vim, yeah!
Plugin 'vim-airline/vim-airline'          " cool status bar
Plugin 'tpope/vim-fugitive'               " git in status bar
Plugin 'vim-airline/vim-airline-themes'   " status bar themes
Plugin 'flazz/vim-colorschemes'           " array of themes
Plugin 'jiangmiao/auto-pairs'             " open and close quotes, etc
Plugin 'tpope/vim-surround'               " wrap words in quotes, etc
Plugin 'vim-scripts/HTML-AutoCloseTag'    " open and close tags
Plugin 'scrooloose/nerdTree'              " nav sidebar
Plugin 'Xuyuanp/nerdtree-git-plugin'      " git status in nav sidebar
Plugin 'shougo/neocomplete'               " autocomplete
Plugin 'tomtom/tcomment_vim'              " auto comment
Plugin 'ctrlpvim/ctrlp.vim'               " file buffer
Plugin 'darthmall/vim-vue'                " vue.js syntax highlight

" all plugins must be added before the following line
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

" remove the temp files
set nobackup
set nowritebackup
set noswapfile

" enable mouse in some terminals
set mouse=a

" needed for tmux integration
set term=screen-256color

" ---------------------- EDITING ----------------------

" indentation
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=2   " in insert mode, tabs are 2 spaces
set shiftwidth=2    " tabs the selected blocks 2 spaces each time

" show the cursor position all the time
set ruler
set cursorline

" HTML Editing
set matchpairs+=<:>

" remap the backspace button in normal mode to delete character before
nnoremap <bs> Xi

" backspace over everything in insert mode
" set backspace=indent,eol,start
set backspace=2

" remap spacebar to insert a space in normal mode
nnoremap <Space> i<Space><Esc>

" remap Ctrl-a for select all
map <C-a> <esc>ggVG<CR>

" use tabs for Emmet
let g:user_emmet_leader_key='<Tab>'

" treat <li> and <p> tags like the block tags they are
let g:html_indent_tags='li\|p'

" no lines longer than 100 cols
set textwidth=100
set formatoptions=qrn1
set wrapmargin=0
set colorcolumn=+1

" use neocomplete
let g:neocomplete#enable_at_startup=1

" remap the comment plugin to be Ctrl-/
map <c-/> <c-_><c-_>

" -------------------- APPEARANCE ---------------------

" set Airline
set laststatus=2

" set theme
set background=dark
colorscheme Tomorrow-Night

" set default font in mac vim and gvim
set guifont=Menlo:h14

" allow powerline symbols to show up
let g:airline_powerline_fonts=1

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" start clean
" when Powerline fonts aren't installed
if !exists('g:airline_symbols')
    let g:airline_symbols= {}
endif

" unicode symbols
let g:airline_left_sep= '»'
let g:airline_left_sep= '▶'
let g:airline_right_sep= '«'
let g:airline_right_sep= '◀'
let g:airline_symbols.linenr= '␊'
let g:airline_symbols.linenr= '¶'
let g:airline_symbols.linenr= '␤'
let g:airline_symbols.branch= '⎇'
let g:airline_symbols.paste= 'ρ'
let g:airline_symbols.paste= 'Þ'
let g:airline_symbols.paste= '∥'
let g:airline_symbols.whitespace= 'Ξ'
" end clean

" ---------------------- SEARCH ----------------------

" no need to type /g at the end of search / replace
set gdefault

" case insensitive searching (unless specified)
set ignorecase
set smartcase

" hilight searches by default
set hlsearch

" stop highlight after searching
nnoremap <silent> <leader>, :noh<cr>

" find the next match as we type the search
set incsearch

" highlight matching brackets
set showmatch

" activate Ctr-p
let g:ctrlp_map= '<c-p>'
let g:ctrlp_cmd= 'CtrlP'

" ------------------- FILE TREE ---------------------

" executes NERDtree at startup
" autocmd vimenter * NERDTree

" quit vim and NERDtree when it's the only open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open NERDTree with Cmd-n
map <silent><C-n> :NERDTreeToggle<CR>
