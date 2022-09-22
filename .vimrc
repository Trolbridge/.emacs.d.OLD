syntax on
filetype plugin indent on

inoremap ;; <Esc>

set relativenumber
set number

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

call plug#begin()

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'

Plug 'drewtempelmeyer/palenight.vim'


call plug#end()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
  
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

set termguicolors
"color palenight

inoremap <C-b> <Esc>:NERDTreeToggle<cr>
nnoremap <C-b> <Esc>:NERDTreeToggle<cr>
