"""""""" Vundle Settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOROOT/misc/vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Plugins
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'mattn/webapi-vim' " gist-vim
Plugin 'WitzHsiao/gist-vim' " gist-vim
Plugin 'Valloric/MatchTagAlways'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'honza/dockerfile.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'jgdavey/tslime.vim'
Plugin 'mephux/vim-jsfmt'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'mru.vim'
Plugin 'Yggdroot/indentLine'
"Plugin 'honza/vim-snippets'
"vim-autocomplpop
"Plugin 'L9'
"Plugin 'othree/vim-autocomplpop'
"vim-snipmate
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"syntax
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'c.vim'
""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

""""""""""" go
au Filetype go map <leader>t :Tmux go test<CR>
au Filetype go map <leader>r :GoRun<CR>
set completeopt-=preview

""""""""""" superTab
let g:SuperTabDefaultCompletionType = "context"

""""""""""" jsfmt
let g:js_fmt_autosave = 1

"""""""""" syntastic
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"""""""""" solarized
let g:solarized_termcolors=256

"""""""""" vim-markdown
let g:vim_markdown_folding_disabled=1

"""""""""" snipmate+autocomplpop
"let g:acp_behaviorSnipmateLength=1

"""""""""" gist-vim
let g:gist_post_private = 1


syntax enable       " enable syntax processing
set background=dark
colorscheme solarized
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
set clipboard=unnamed          " Accessing the system clipboard

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

au BufRead,BufNewFile Podfile set filetype=ruby

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-l> :noh<CR>
nmap <leader>q :qa<CR>

"set pa+=~/workspace/cocos/cocos2d-x/cocos/platform/android/jni/
"set pa+=/System/Library/Frameworks/JavaVM.framework/Headers


"au vimenter *  NERDTree " toggle NERDTree when open vim
"au vimenter * wincmd p  " jump to previous window

"autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
"" Close all open buffers on entering a window if the only
"" buffer that's left is the NERDTree buffer
"function! s:CloseIfOnlyNerdTreeLeft()
  "if exists("t:NERDTreeBufName")
    "if bufwinnr(t:NERDTreeBufName) != -1
      "if winnr("$") == 1
        "q
      "endif
    "endif
  "endif
"endfunction
