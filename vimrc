set nocompatible
filetype off

call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'dense-analysis/ale'

call plug#end()

filetype plugin indent on

syntax enable
set omnifunc=syntaxcomplete#Complete
set omnifunc=ale#completion#OmniFunc

let g:deoplete#enable_at_startup = 1

" Fix files with prettier, and then ESLint.
autocmd FileType javascript let b:ale_fixers = ['prettier', 'eslint']
autocmd FileType javascript let g:ale_fix_on_save = 1
autocmd FileType javascript let g:ale_completion_enabled = 1
autocmd FileType javascript let g:prettier#config#single_quote = 'false'
autocmd FileType javascript let g:prettier#autoformat = 1

command! MakeTags !ctags -R .

let mapleader = ' '

set hlsearch
" set spell spelllang=en_us

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
" set pastetoggle=<f5>

autocmd FileType python set shiftwidth=4
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set fileformat=unix

inoremap <Tab> <Space><Space>
nnoremap <Tab> >>
noremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <C-s> :w<Enter>:Prettier<Enter>
nnoremap <C-q> :q<Enter>
nnoremap <C-w> :wq<Enter>
nnoremap <C-x> :q!<Enter>
nnoremap <F2> :source ~/.config/nvim/init.vim<Enter>
nnoremap <C-n> :nohl<Enter>
nnoremap .dp ma%x`ax


inoremap {<Enter> {<Enter>}<C-o><S-o>
inoremap [<Enter> [<Enter>]<C-o><S-o>
inoremap (<Enter> (<Enter>)<C-o><S-o>

inoremap " ""<Left>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap jj <Esc>

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

autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

autocmd FileType javascript map <buffer> <C-r> :w<CR>:exec '!node' shellescape(@%, 1)<CR>
autocmd FileType javascript imap <buffer> <C-r> <esc>:w<CR>:exec '!node' shellescape(@%, 1)<CR>
