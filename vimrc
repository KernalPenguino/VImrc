"__     _____                    _
"\ \   / |_ _|_ __ ___  _ __ ___| |
" \ \ / / | || '_ ` _ \| '__/ __| |
"  \ V /  | || | | | | | | | (__|_|
"   \_/  |___|_| |_| |_|_|  \___(_)

syntax on

set noet ci sts=0 sw=4 ts=4

set noerrorbells
set noswapfile
set number

"this for the plug plugin manager
call plug#begin("~/.vim/plugged")
	Plug 'morhetz/gruvbox'
call plug#end()

set bg=dark
colorscheme gruvbox
