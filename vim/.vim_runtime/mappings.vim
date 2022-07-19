" Remap Esc
:imap jk <Esc>

" remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize with arrows
noremap <silent> <C-Left> :vertical resize +2<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Up> :resize +2<CR>
noremap <silent> <C-Down> :resize -2<CR>

" Navigate buffers
noremap <S-l> :bnext<CR>
noremap <S-h> :bprevious<CR>
noremap <leader>x :bdelete<CR>

" Visual
" stay in indent mode

