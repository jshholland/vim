set nocompatible

execute pathogen#infect()

set ruler
set showcmd
set incsearch
set hlsearch
set scrolloff=3

set background=dark
colorscheme solarized
set guifont=Source\ Code\ Pro\ 12
set guioptions-=T
set number

syntax on
filetype plugin indent on

" jump to the last cursor position if known
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

set shell=/bin/bash

runtime! ftplugin/man.vim

cmap w!! w !sudo tee >/dev/null %

let g:syntastic_python_checkers = ['pyflakes3']
let g:syntastic_puppet_puppetlint_args = "--no-80chars-check"
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:netrw_browsex_viewer='google-chrome'
