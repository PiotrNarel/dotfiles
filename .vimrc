set nocompatible              
filetype off                 

" --- Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'cocopon/iceberg.vim'

Plugin 'honza/vim-snippets'

Plugin 'sirver/ultisnips'

Plugin 'airblade/vim-gitgutter'

Plugin 'phenomenes/ansible-snippets'

Plugin 'yggdroot/indentline'

call vundle#end()            
filetype plugin indent on   

colo iceberg

" --- Common settings 

syntax on

set et ts=3 sw=3 softtabstop=3

" Indents
set cin

" Autoindent
set autoindent

" Line numbers
set number

" Show cursor line
set cursorline

" Set cursorcolumn
set colorcolumn=80

" Don't wrap
set nowrap

" Highlite all search matches
set hlsearch

" Incremental search
set incsearch

" Case does not matter
set ignorecase

" case matters if pattern contains any of A-Z
set smartcase

" Show matching
set showmatch

" Match < > 
set matchpairs+=<:>

" Complete all tags
set taglength=0

" --- gitgutter settings
set updatetime=100

" --- Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always display the statusline in all windows
set laststatus=2

" Always display the tabline, even if there is only one tab
set showtabline=2

" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

" Enable 256 colors
set t_Co=256

" --- UltiSnips

" triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 3

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
