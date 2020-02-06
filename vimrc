set nocompatible
filetype off

call pathogen#infect()
" call pathogen#helptags()
call plug#begin('~/.vim/plugged')

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'

call plug#end()

filetype plugin indent on

" syntax enable
set omnifunc=syntaxcomplete#Complete

" let g:airline_theme='one'
let g:gruvbox_italic=1
" let g:one_allow_italics=1
colorscheme gruvbox
set background=dark

let g:prettier#config#single_quote = 'false'
let g:prettier#autoformat = 1

command! MakeTags !ctags -R .

let mapleader = ' '

set hlsearch
set spell spelllang=en_us
set number relativenumber
set smartindent
set autoindent
set expandtab
set path+=**
set wildmenu
set splitbelow
set splitright
set noswapfile
set showcmd
set pastetoggle=<f5>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab

autocmd FileType python set shiftwidth=4
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set fileformat=unix
    
inoremap <Tab> <Space><Space><Space><Space>
inoremap <C-i> <Esc>
nnoremap <C-t> >>
noremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <C-s> :w<Enter>
nnoremap <C-q> :q<Enter>
nnoremap <C-w> :wq<Enter>
nnoremap <C-x> :q!<Enter>

nnoremap html :-1read $HOME/.vim/snippets/HTML5_template.html<Enter>6j3wa
nnoremap rfc :-1read $HOME/.vim/snippets/react_functional_component.js<Enter>4j3wi

nnoremap .dp ma%x`ax

nnoremap <Leader>d dd

inoremap {<Enter> {<Enter>}<C-o><S-o>
inoremap [<Enter> [<Enter>]<C-o><S-o>
inoremap (<Enter> (<Enter>)<C-o><S-o>

inoremap " ""<Left>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap ii <Esc><Right>
inoremap <C-i> <Esc>
inoremap <C-d> <Backspace><Delete>

" HTML/JSX short hand
inoremap <h1 <h1></h1><Left><Left><Left><Left><Left>
inoremap <h2 <h2></h2><Left><Left><Left><Left><Left>
inoremap <h3 <h3></h3><Left><Left><Left><Left><Left>
inoremap <h4 <h4></h4><Left><Left><Left><Left><Left>
inoremap <h5 <h5></h5><Left><Left><Left><Left><Left>
inoremap <h6 <h6></h6><Left><Left><Left><Left><Left>
inoremap <a. <a href=""></a><Left><Left><Left><Left><Left><Left>
inoremap <a# <a href="#"></a><Left><Left><Left><Left>
inoremap <p <p></p><Left><Left><Left><Left>
inoremap <div <div></div><Left><Left><Left><Left><Left><Left>
inoremap <Wrapper <Wrapper><Enter><Enter></Wrapper><C-d><Up><C-t>

" split screen navigations:

" ctrl + j = move to split screen below
nnoremap <C-j> <C-w><C-j>  
" ctrl + k = move to split screen above
nnoremap <C-k> <C-w><C-k>
" ctrl + l = move to split screen right
nnoremap <C-l> <C-w><C-l>
" ctrl + h = move to split screen left
nnoremap <C-h> <C-w><C-h>

" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Without this, vim breaks in the middle of words when wrapping
autocmd FileType markdown setlocal nolist wrap lbr

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
