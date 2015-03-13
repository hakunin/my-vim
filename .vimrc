
set nocompatible

syntax on

" uses old regex engine that is faster with ruby files
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
set re=1

" this could improve vim speed overall
set ttyfast
set lazyredraw

execute pathogen#infect()

"for ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_working_path_mode = 'ra'
" 'r' stands for `go down until you hit .git`
let g:ctrlp_working_path_mode = 'a'

set history=1000

set nobackup       
set nowritebackup  
set noswapfile     

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" select all + yank
map <C-a> ggVGy

" using tabs
map <C-t> :tabedit .<CR>
map <C-[> gT
map <C-]> gt

set pastetoggle=<F2>


" jump 10 lines with shift+arrow
map <S-DOWN> :+10<CR>
map <S-UP> :-10<CR>

noremap Y y$

set guioptions-=e "no gui tabs
set guioptions-=l
set guioptions-=r
set guioptions-=b
set guioptions-=L
"set go-=Lr

set display=lastline

"set dy+=lastline
set nu
set cursorline

set ts=2
set sw=2

set sta
set softtabstop=2
set expandtab
set ai
set si
set pi
set is

set guifont=monaco:h12

colorscheme sunburst

