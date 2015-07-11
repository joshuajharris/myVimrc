colorscheme molokai " set colorscheme
"let g:molokai_original=1 " alternate molokai colors

syntax enable       " enable syntax highlighting

set tabstop=2       " set visual tab to 2 spaces
set shiftwidth=2    " indenting is 2 spaces when using <<, >>
set autoindent
set smartindent
set softtabstop=2   " set tab to 4 spaces when editing
set expandtab       " turns tab into spaces

set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line

filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu

set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" move vertically by visual line, doesn't ignore line wrap
nnoremap j gj
nnoremap k gk

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" jk is escape
inoremap jk <esc>

set nocompatible    " be IMproved
filetype off        " required for vundle

" :PluginInstall to install plugins
" set runtime path to include vundle, initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Plugins HERE
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

call vundle#end() " required by vundle
filetype plugin indent on " require by vundle

" enable third party javascript syntax highlighting
let g:used_javascript_libs = 'jquery,underscore,backbone,prelude,angularjs,angularui,react,flux,requirejs,sugar,jasmine,chai,handlebars'
