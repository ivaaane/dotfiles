" vim-plug
call plug#begin()
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/goyo.vim'
	Plug 'bluz71/vim-mistfly-statusline'
call plug#end()

" set options
set tabstop=8
set shiftwidth=8
set noexpandtab
set number
set numberwidth=1
set laststatus=2
set noshowmode
set noruler
syntax on

" colors
hi LineNr cterm=bold ctermfg=12 guifg=Blue gui=bold
hi CursorLineNr cterm=bold ctermfg=12 guifg=Blue gui=bold

" mistfly statusline
highlight! link MistflyNormal WildMenu
highlight! link MistflyInsert DiffChange
highlight! link MistflyVisual IncSearch
highlight! link MistflyCommand WildMenu
highlight! link MistflyReplace ErrorMsg

" LÖVE gamedev
command! Love w | !love .
