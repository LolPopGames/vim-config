" Set commands {{{
" Base {{{
set encoding=utf8
syntax on
filetype indent on
" }}}
" Search {{{
set hlsearch
set nocompatible
set incsearch
" }}}
" Tabs {{{
" Indent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Smart features
set expandtab
set smarttab
set autoindent
set smartindent
" }}}
" Line numbers {{{
set number
set relativenumber
" }}}
" Other options {{{
" Wild mode
set wildmode=longest,list

" Mouse
set mouse=a

" Clipboard
set clipboard=unnamedplus
set ttyfast

" Scroll
set so=30

" No swap
set noswapfile
" }}}
" }}}
" Key mappings {{{
" Leader key {{{
let g:mapleader = ";"
let g:maplocalleader = ","
" }}}
" Some mappings {{{
" Clear search
noremap <silent> <c-f> :nohlsearch<cr>

" Open config (".vimrc" file)
nnoremap <silent> <leader>c :vsplit $MYVIMRC<cr>
" }}}
" Move line {{{
" Down {{{
nnoremap <silent> <c-j>      :let __col_copy = col('.')<cr>ddp:call cursor(line('.'), __col_copy)<cr>
inoremap <silent> <c-j> <esc>:let __col_copy = col('.')<cr>ddp:call cursor(line('.'), __col_copy)<cr>a
vnoremap <silent> <c-j>      :move '>+1<CR>gv=gv
" }}}
" Up {{{
nnoremap <silent> <c-k>      :let __col_copy = col('.')<cr>ddkP:call cursor(line('.'), __col_copy)<cr>
vnoremap <silent> <c-k>      :move '<-2<CR>gv=gv
inoremap <silent> <c-k> <esc>:let __col_copy = col('.')<cr>ddkP:call cursor(line('.'), __col_copy)<cr>a
" }}}
" }}}
" Uppercase/lowercase a word {{{
nnoremap <silent> U :let __col_copy = col('.')<cr>viwU:call cursor(line('.'), __col_copy)<cr>
nnoremap <silent> L :let __col_copy = col('.')<cr>viwu:call cursor(line('.'), __col_copy)<cr>
" }}}
" Wrap in paired characters ", ', `, (, [, {, < {{{
" Normal mode {{{
nnoremap <silent> <leader>" :let __col_copy = col('.')<cr>viw<esc>a"<esc>bi"<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>' :let __col_copy = col('.')<cr>viw<esc>a'<esc>bi'<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>` :let __col_copy = col('.')<cr>viw<esc>a`<esc>bi`<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>( :let __col_copy = col('.')<cr>viw<esc>a)<esc>bi(<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>[ :let __col_copy = col('.')<cr>viw<esc>a]<esc>bi[<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>{ :let __col_copy = col('.')<cr>viw<esc>a}<esc>bi{<esc>:call cursor(line('.'), __col_copy+1)<cr>
nnoremap <silent> <leader>< :let __col_copy = col('.')<cr>viw<esc>a><esc>bi<<esc>:call cursor(line('.'), __col_copy+1)<cr>
" }}}
" Visual mode {{{
vnoremap <silent> <leader>" c""<esc>P
vnoremap <silent> <leader>' c''<esc>P
vnoremap <silent> <leader>` c``<esc>P
vnoremap <silent> <leader>( c()<esc>P
vnoremap <silent> <leader>[ c[]<esc>P
vnoremap <silent> <leader>{ c{}<esc>P
vnoremap <silent> <leader>< c<><esc>P
" }}}
" }}}
" Disabling arrows in insert mode {{{
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <right> <nop>
inoremap <left>  <nop>
" }}}
" Fast insert mode escape {{{
inoremap jk    <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>
" }}}
" Select inside/around pair chars {{{
" Quotation marks "" {{{
onoremap in" :<c-u>normal!  f"lvi"<cr>
onoremap il" :<c-u>normal! 2F"lvi"<cr>
onoremap an" :<c-u>normal!  f"lva"<cr>
onoremap al" :<c-u>normal! 2F"lva"<cr>
" }}}
" Apostrophes ' {{{
onoremap in' :<c-u>normal!  f'lvi'<cr>
onoremap il' :<c-u>normal! 2F'lvi'<cr>
onoremap an' :<c-u>normal!  f'lva'<cr>
onoremap al' :<c-u>normal! 2F'lva'<cr>
" }}}
" Backticks ` {{{
onoremap in` :<c-u>normal!  f`lvi`<cr>
onoremap il` :<c-u>normal! 2F`lvi`<cr>
onoremap an` :<c-u>normal!  f`lva`<cr>
onoremap al` :<c-u>normal! 2F`lva`<cr>
" }}}
" Round brackets ( {{{
onoremap in( :<c-u>normal!  f(lvi(<cr>
onoremap il( :<c-u>normal! 2F(lvi(<cr>
onoremap an( :<c-u>normal!  f(lva(<cr>
onoremap al( :<c-u>normal! 2F(lva(<cr>
" }}}
" Square brackets [ {{{
onoremap in[ :<c-u>normal!  f[lvi[<cr>
onoremap il[ :<c-u>normal! 2F[lvi[<cr>
onoremap an[ :<c-u>normal!  f[lva[<cr>
onoremap al[ :<c-u>normal! 2F[lva[<cr>
" }}}
" Curly brackets { {{{
onoremap in{ :<c-u>normal!  f{lvi{<cr>
onoremap il{ :<c-u>normal! 2F{lvi{<cr>
onoremap an{ :<c-u>normal!  f{lva{<cr>
onoremap al{ :<c-u>normal! 2F{lva{<cr>
" }}}
" Angle brackets < {{{
onoremap in< :<c-u>normal!  f<lvi<<cr>
onoremap il< :<c-u>normal! 2F<lvi<<cr>
onoremap an< :<c-u>normal!  f<lva<<cr>
onoremap al< :<c-u>normal! 2F<lva<<cr>
" }}}
" }}}
" }}}
" Cursor settings {{{
let &t_EI = "\e[1 q" " Normal, Visual, Command-line
let &t_SI = "\e[5 q" " Insert
let &t_SR = "\e[3 q" " Replace
" }}}
" Autocommands {{{
" C/C++ {{{
fu! s:set_c_abbreviations()
    iabbrev <buffer> included include
    iabbrev <buffer> includde include
    iabbrev <buffer> includee include
    iabbrev <buffer> includwe include
    iabbrev <buffer> inlcude include
    iabbrev <buffer> icnlude include
    iabbrev <buffer> icnldue include
    iabbrev <buffer> inldu include
    iabbrev <buffer> stdboo stdbool
    iabbrev <buffer> stdbgool stdbool
    iabbrev <buffer> stdiobo stdbool
    iabbrev <buffer> ring string
    iabbrev <buffer> tim time
    iabbrev <buffer> inc< #include <stdio.h><cr>#include <stdlib.h><cr>#include <string.h><cr>#include <stdbool.h>
    iabbrev <buffer> fori for (size_t i=0; i<; i++)
    iabbrev <buffer> helloworld printf("Hello, World!\n");
endf

augroup filetype_c_cpp
    autocmd!
    " Abbreviations
    autocmd FileType c,cpp,c++,cp,cxx,cc,h,hpp,h++,hp,hxx,hh call s:set_c_abbreviations()

    " Comment
    autocmd FileType c,cpp,c++,cp,cxx,cc,h,hpp,h++,hp,hxx,hh nnoremap <silent> <buffer> <localleader>c :let __col_copy = col('.')<cr>I// <esc>:call cursor(line('.'), __col_copy+3)<cr>
augroup END
" }}}
" Markdown {{{
augroup filetype_markdown
    autocmd!

    " '#' headers
    autocmd FileType md,markdown,mkd,mkdn,mdown,mdwn,mdtxt,mdtext,text onoremap <silent> <buffer> ih :<c-u>execute "normal! ?^#\\+ \r:nohlsearch\rwv$h"<cr>
    autocmd FileType md,markdown,mkd,mkdn,mdown,mdwn,mdtxt,mdtext,text onoremap <silent> <buffer> ah :<c-u>execute "normal! ?^#\\+ \r:nohlsearch\rV"<cr>

    " emails TODO: fix, because don't works
    autocmd FileType md,markdown,mkd,mkdn,mdown,mdwn,mdtxt,mdtext,text onoremap <silent> <buffer> in@ :<c-u>execute "normal! /@vBoh"<cr>
    autocmd FileType md,markdown,mkd,mkdn,mdown,mdwn,mdtxt,mdtext,text onoremap <silent> <buffer> in@ :<c-u>execute "normal! /@vBoE"<cr>
augroup END
" }}}
" Vimscript {{{
augroup filetype_vim
    autocmd!
    " Folding
    autocmd FileType vim setlocal foldmethod=marker

    " Comment
    autocmd FileType vim nnoremap <silent> <buffer> <localleader>c :let __col_copy = col('.')<cr>^i" <esc>:call cursor(line('.'), __col_copy+2)<cr>
augroup END
" }}}
" Git {{{
augroup filetype_gitignore
    autocmd!

    " Folding
    autocmd FileType gitignore setlocal foldmethod=marker
augroup END
" }}}
" }}}
" Plugins {{{
" Enabling {{{
call plug#begin()

" nerdtree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" theme
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" brainfuck
Plug 'fruit-in/brainfuck-vim'

call plug#end()
" }}}
" Plugins settings {{{
" Nerdtree {{{
noremap <silent> <c-b> :NERDTreeToggle<cr>
" }}}
" Tokyonight {{{
" Enabling extended colors
set termguicolors

" Setting up
let g:tokyonight_style = 'storm' " 'storm' or 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
" }}}
" Airline {{{
let g:airline_theme = 'tokyonight'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" }}}
" Brainfuck {{{
" (patch) Changing "+-" from Normal to Keyword
highlight def link bfData Keyword
" }}}
" }}}
" }}}
