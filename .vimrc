set nu
set shiftwidth:4
set tabstop:4

" Theme
packadd! everforest
if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:everforest_background = 'soft'
colorscheme everforest
