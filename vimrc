set nocompatible
filetype off

" BUNDLE
set rtp+=~/.vim/bundle/vundle/

filetype plugin indent on     " required!

set number
set backspace=indent,eol,start
set history=1000
set showmode
set nowrap
set ts=4
set sw=4
set expandtab
syntax on

let g:solarized_termcolor=256
if has('gui_running')
  set guifont=DejaVu\ LGC\ Sans\ Mono\ 12
  colorscheme desert
else
  set background=dark
  "colorscheme solarized
endif

if &diff
  "colorscheme solarized
endif

let mapleader=","
" for vimdiff, otherwise there will be fg/bg color problem
" gvim

" Customize the settings for vim-template plugin
let g:email = "dayong.wangts@gmail.com"
let g:user = "Dayong Wang"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
        %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()
