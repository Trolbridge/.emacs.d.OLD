set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.emacs.d/.vim/bundle/Vundle.vim
call vundle#begin('~/.emacs.d/.vim/bundle/Vundle.vim')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'mattn/emmet-vim'
"Plug 'Yggdroot/indentLine'
"Plug 'dense-analysis/ale'
"Plug 'StanAngeloff/php.vim'

"call plug#end()
"command! -nargs=0 Prettier :CocCommand prettier.formatFile


"===================================
"       Indention Options
"===================================
set autoindent
set smartindent
set tabstop=4 softtabstop=4
set expandtab
set smarttab
set shiftround
set shiftwidth=4

"===================================
"         Search Options 
"===================================
set nohlsearch
set hidden
set ignorecase
set incsearch
set smartcase

"===================================
"       Performance Options 
"===================================
set lazyredraw "Dont update screen during macro and script execution

"===================================
"      Text Rendering Options 
"===================================
set display+=lastline
set ruler
set encoding=utf-8
set linebreak
set scrolloff=20
set sidescrolloff=5
syntax on
set nowrap
set colorcolumn=80

"===================================
"      User Interface Options 
"===================================
set laststatus=2
set wildmenu
set tabpagemax=50
set cursorline
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set title
"set background=dark
set t_Co=256

"===================================
"      Miscellaneous Options 
"===================================
set backspace=indent,eol,start
set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo
set undofile
set formatoptions+=j    " Delete comment characters when joining lines.
set history=1000
"set shell               " The shell used to execute commands.
set wildignore+=.pyc,.swp " Ignore files matching these patterns when opening files based on a glob pattern.
set autowriteall

"===================================
"           Remaps Area
"===================================
" inoremap <Leader> " " "<======== TODO work on this
imap ;; <ESC>
noremap <F5> yy:!<C-r>"<BS><Return>

"let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
