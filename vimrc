"__     _____                    _
"\ \   / __ _|_ __ ___  _ __ ___| |
" \ \ / / | || '_ ` _ \| '__/ __| |
"  \ V /  | || | | | | | | | (__|_|
"   \_/  |___|_| |_| |_|_|  \___(_)

syntax on

set noet ci sts=0 sw=4 ts=4

set noerrorbells
set noswapfile
set number

set backspace=2 " make backspace work like most other programs
set showtabline=2

"if your in gvim
if has('gui_running')
  set guioptions-=T  " no toolbar
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
call plug#end()

"Buffer Bar config Start
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
"End config

set bg=dark
colorscheme gruvbox
