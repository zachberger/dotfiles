" Syntax highlighting
syntax on

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"This is for setting Makefiles with tabs not spaces
autocmd FileType make setlocal noexpandtab

" Format the status line
set ruler
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
