"  testing
set nocompatible
filetype off

call pathogen#infect()
" call pathogen#helptags()
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'

call plug#end()

filetype plugin indent on

syntax enable

let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

command! MakeTags !ctags -R .

let mapleader = ' '

set spell spelllang=en_us
set number relativenumber
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set path+=**
set wildmenu
set splitbelow
set splitright
set noswapfile
set showcmd

noremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <Leader>i :w<CR>:!clear;python %<CR>
inoremap <C-i> <Esc>:w<CR>:!clear;python %<CR>

nnoremap html :-1read $HOME/.vim/snippets/HTML5_template.html<Enter>6j3wa
nnoremap rfc :-1read $HOME/.vim/snippets/react_functional_component.js<Enter>4j3wi

nnoremap .dp ma%x`ax

nnoremap <Leader>d dd

inoremap {<Enter> {<Enter>}<C-O><S-O>
inoremap [<Enter> [<Enter>]<C-O><S-O>
inoremap (<Enter> (<Enter>)<C-O><S-O>

inoremap " ""<Left>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap ii <Esc><Right>
inoremap <c-d> <Backspace><Delete>
inoremap <h1 <h1></h1><Left><Left><Left><Left><Left>

" split screen navigations:

" ctrl + j = move to split screen below
nnoremap <C-J> <C-W><C-J>  
" ctrl + k = move to split screen above
nnoremap <C-K> <C-W><C-K>
" ctrl + l = move to split screen right
nnoremap <C-L> <C-W><C-L>
" ctrl + h = move to split screen left
nnoremap <C-H> <C-W><C-H>

" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Without this, vim breaks in the middle of words when wrapping
autocmd FileType markdown setlocal nolist wrap lbr

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
