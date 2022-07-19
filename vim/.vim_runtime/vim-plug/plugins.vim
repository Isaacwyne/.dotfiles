call plug#begin('~/.vim/autoload/plugged')

  " Better syntax support
  Plug 'sheerun/vim-polyglot'
  " Auto pairs for '[' '(' '{'
  Plug 'jiangmiao/auto-pairs'
  " statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Escape Insert mode without lagging
  Plug 'jdhao/better-escape.vim'

call plug#end()
