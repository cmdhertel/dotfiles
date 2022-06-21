set nu
set shiftwidth:4
set tabstop:4
set termguicolors
set nocompatible
set encoding=UTF-8
syntax on


" Python
    au BufNewFile,BufRead *.py set tabstop=4
    au BufNewFile,BufRead *.py set softtabstop=4
    au BufNewFile,BufRead *.py set shiftwidth=4
    au BufNewFile,BufRead *.py set textwidth=79
    au BufNewFile,BufRead *.py set expandtab
    au BufNewFile,BufRead *.py set autoindent
    au BufNewFile,BufRead *.py set fileformat=unix

" Shortcuts
"split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

"Nerdtree Config
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
    let NERDTreeQuitOnOpen = 0

" Enable folding with the spacebar
    nnoremap <space> za


" Load Plugins with Vim-Plug

call plug#begin()

Plug 'preservim/vim-markdown'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Theme
    set background=dark
    let g:everforest_background = 'soft'
    colorscheme everforest

let g:python_highlight_all = 1
