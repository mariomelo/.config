let mapleader=" "
map <leader>s :source ~/.config/nvim/init.vim<CR>
map <leader>S :e ~/.config/nvim/init.vim<CR>

" Double Space to open last closed file
nnoremap <Leader><Leader> :e#<CR>

" CTRL+P open FZF
nnoremap <C-p> :call Fzf_dev()<CR>

" Space + G to toggle GitGutter (git information)
nnoremap <Leader>g :GitGutterToggle<Enter>

" Modos de Edicao
" jj to return to Normal mode
inoremap jj <ESC>l
" jk to return to Normal Mode and save file
inoremap jk <ESC>:w<CR>
nnoremap <Leader>h :nohl<CR>
"
" Use TAB to change Split Panels
nnoremap <TAB> <C-w>w

" Find and Replace
nnoremap <Leader>f :vimgrep /
nnoremap <Leader>r :%s/
nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cp<CR>

"Copy to Clipboard
nnoremap <Leader>c "+y
