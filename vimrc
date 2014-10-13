"""""""" Vundle Settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/Cellar/go/1.3/libexec/misc/vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Plugins
Plugin 'honza/dockerfile.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'jgdavey/tslime.vim'
Plugin 'moll/vim-node'
Plugin 'mattn/emmet-vim'
Plugin 'mephux/vim-jsfmt'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'mru.vim'
"vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'evanmiller/nginx-vim-syntax'
""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""""""""""" for go
au Filetype go map <leader>t :Tmux go test<CR>
au Filetype go map <leader>r :GoRun<CR>

""""""""""" for go
let g:SuperTabDefaultCompletionType = "context"

""""""""""" for jsfmt
let g:js_fmt_autosave = 1

"""""""""" for syntastic
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']

"""""""""" for solarized
let g:solarized_termcolors=256

"""""""""" for vim-markdown
let g:vim_markdown_folding_disabled=1


syntax enable       " enable syntax processing
set background=dark
colorscheme solarized
"set autoindent
set smartindent
set shiftwidth=4    " 設定縮排寬度
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers
set ruler
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]
set autoread        " auto reload file when changed
set backspace=indent,eol,start " backspace over everything in insert mode

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" file encoding
set encoding=utf-8
set fileencodings=utf-8

set showmode        " display the mode currently use
set laststatus=2    " for displaying airline


function! SetAltPrefs()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction

au FileType xml,html,xhtml,javascript call SetAltPrefs()
au BufWritePre *.html normal gg=G
au BufWritePre * :%s/\s\+$//e
