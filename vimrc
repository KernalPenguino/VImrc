"__     _____                    _
"\ \   / __ _|_ __ ___  _ __ ___| |
" \ \ / / | || '_ ` _ \| '__/ __| |
"  \ V /  | || | | | | | | | (__|_|
"   \_/  |___|_| |_| |_|_|  \___(_)

syntax on

set noet ci sts=0 sw=4 ts=4 "indenting with tab
set backspace=2	  "make backspace work like most other programs

set noerrorbells
set noswapfile
set number
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set ruler

set laststatus=2

set showtabline=2 "show tabline


if has('gui_running')
  set guioptions-=T
  set guioptions-=e
  colorscheme elflord
  set lines=60 columns=108 linespace=0
  if has('gui_win32')
    set guifont=DejaVu_Sans_Mono:h10:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ 10
  endif
endif

"this for the plug plugin manager
call plug#begin("~/.vim/plugged")
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mengelbrecht/lightline-bufferline'
	Plug 'vim-airline/vim-airline'
call plug#end()

"Buffer Bar config Start
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
"End config

set bg=dark
colorscheme gruvbox
