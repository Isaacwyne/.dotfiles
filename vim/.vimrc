"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                        " be iMproved, required
filetype plugin on                      " required
filetype indent on
set path+=**                            " searches current directory recursively
set wildmenu                            " display all matches when using tab completion
set incsearch                           " incremental search
set hidden                              " Needed to keep multiple buffers open
set nobackup                            " No auto backups
set noswapfile                          " No swap
set t_Co=256                            " set if term supports 256 colors
set clipboard=unnamedplus               " copy/paste between vim and other programs
set encoding=utf-8                      " the encoding displayed
set pumheight=10                        " make the popup menu smaller
set cmdheight=1                         " more space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word
set shortmess=sI                        " disable the welcome screen message
set autoread                            " set to auto read when a file is changed from the outside.
au FocusGained,BufEnter * checktime
set mouse=a                             " enable the use of mouse              
set conceallevel=0                      " so that `` can be seen in markdown Files
set showcmd                             " show incomplete commands at the bottom of the window/file
set backspace=indent,eol,start          " allow backspacing over indentation, line breaks, and insertion mode
set history=1000                        " set a bigger history for executed commands
set confirm                             " show a confirmation dialog when saving an unsaved file
set matchpairs+=<:>                     " highlight matching pairs of brackets
syntax enable
let mapleader=" "                       " map leader to <space>
let g:rehash256 = 1

" Use a line cursor within 'I' and a block cursor elsewhere
"
" Reference chart for values
" Ps = 0 -> blinking block
" Ps = 1 -> blinking block (default)
" Ps = 2 -> steady block
" Ps = 3 -> blinking underline
" Ps = 4 -> steady underline
" Ps = 5 -> blinking bar (xterm)
" Ps = 6 -> steady bar (xterm)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap ESC to jk
source $HOME/.vim/mappings.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                           " Use spaces instead of tabs
set smarttab                            " Be smart using tabs :)
set shiftwidth=2                        " one tab == two spaces
set tabstop=2                           " one tab == two spaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu relativenumber                   " set numbering (relative)
set numberwidth=2
au InsertEnter * set norelativenumber   " set absolute numbers while in Insert mode
au InsertLeave * set relativenumber     " set relative numbers when not in Insert mode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright                           " horizontal and vertical splits will automatically be below and right respectively

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" other plugins
source $HOME/.vim/vim-plug/plugins.vim
source $HOME/.vim/themes/airline.vim
