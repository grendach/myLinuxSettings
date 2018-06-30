set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"plugin manager
Bundle 'Valloric/YouCompleteMe'
"status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"syntax checking
Plugin 'vim-syntastic/syntastic'
"PEP8 checking
Plugin 'nvie/vim-flake8'
"File Browsing plugin
Plugin 'scrooloose/nerdtree'
"use tabs during file viewing
"Plugin 'jistr/vim-nerdtree-tabs'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set nohlsearch
set ai
set bg=dark
set showmatch
highlight SpecialKey ctermfg=DarkGray
set listchars=tab:>-,trail:~
set list
set tabstop=4
set nu
set shiftwidth=4
set expandtab
set autoindent
set smartindent
syntax on
set listchars=tab:>-
set listchars+=trail:.
set ignorecase
set smartcase
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"python intendation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
"other intendation
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
"mark unnecessary whitespaces


"set UTF-8 support
set encoding=utf-8
"syntacs checking parameters
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
