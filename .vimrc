set nu
set shiftwidth:4
set tabstop:4

" Markdown
	let g:markdown_enable_spell_checking = 1
	set conceallevel=2
	let g:vim_markdown_math = 1
	let g:vim_markdown_new_list_item_indent = 4
	" Ale
		let g:ale_linters = {'markdown': ['proselint']}

" Python
	au BufNewFile,BufRead *.py set tabstop=4
	au BufNewFile,BufRead *.py set softtabstop=4
	au BufNewFile,BufRead *.py set shiftwidth=4
	au BufNewFile,BufRead *.py set textwidth=79
	au BufNewFile,BufRead *.py set expandtab
	au BufNewFile,BufRead *.py set autoindent
	au BufNewFile,BufRead *.py set fileformat=unix

" Theme
	packadd! everforest
	if has('termguicolors')
		set termguicolors
	endif
	set background=dark
	let g:everforest_background = 'soft'
	colorscheme everforest

" Shortcuts
"split navigations
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
	nnoremap <space> za

" Ale
	let g:ale_sign_error                  = '✘'
	let g:ale_sign_warning                = '⚠'
	highlight ALEErrorSign ctermbg        =NONE ctermfg=red
	highlight ALEWarningSign ctermbg      =NONE ctermfg=yellow
	let g:ale_linters_explicit            = 1
	let g:ale_lint_on_text_changed        = 'never'
	let g:ale_lint_on_enter               = 0
	let g:ale_lint_on_save                = 1
	let g:ale_fix_on_save                 = 1

" Load Plugins with Vim-Plug
call plug#begin()

Plug 'preservim/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'dense-analysis/ale'

call plug#end()
