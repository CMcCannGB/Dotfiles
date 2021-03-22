""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Features

" Set 'nocompatible' to ward off unexpected things that the distro might
" have made
set nocompatible

" Determine the type of a file based on filetype to allow intelligent 
" auto-indenting for each filetype and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Options

" Show the line and column number of the cursor position
set ruler

" Better command-line completion
set wildmenu

" Display the incomplete commands in the bottom of the screen.  
set showcmd

" Highlight search matches
set hlsearch

" Enable incremental searching
set incsearch

" Always show a five lines of text around the cursor
set scrolloff=5

" Ignore case when searching
set ignorecase

" Override 'ignorecase' if search pattern contains upper case characters.
set smartcase

" Turn on line numbering
set number

" Don't line wrap mid-word.
set lbr

" Copy the indentation from the current line.
set autoindent

" Enable smart autoindenting.
set smartindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Make a tab equal to two spaces
set shiftwidth=2
set tabstop=2

" Always display the status line
set laststatus=2

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colour Theme

"Use 24-bit (true-color) mode in Vim
if (has("termguicolors"))
  set termguicolors
endif

syntax on
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
