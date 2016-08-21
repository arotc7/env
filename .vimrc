set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'

" Themes
Plugin 'chankaward/vim-railscasts-theme'

call vundle#end()
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" ================ General Config ====================

set number 
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set nocompatible
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
" Map jj to get out of insert mode
" There is a small delay when typing a lowercase j but it is almost
" unnoticeable and makes getting out of insert a lot easier
imap jj <ESC>


set hidden

syntax on

let mapleader=","

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

set noswapfile
set nobackup
set nowb

cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" White Colorscheme
  colorscheme tomorrow

" Dark Colorscheme
" colorscheme railscasts
