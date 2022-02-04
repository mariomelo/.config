set nocompatible
filetype plugin indent on
syntax enable
set guifont=Menlo\ Regular:h16
set number
set hidden
set history=100
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch
set noshowmode
set laststatus=2
set is
set wildignore+=*/tmp/*,*.so,*.swp,*.pdf,*.zip,*/node_modules/*,*/build/*,*/dist/*
let g:jsx_ext_required = 0
set fcs=eob:\ " Remove o ~ das linhas vazias

" Theme options
" if !has('gui_running')
" set t_Co=256
" endif
" set termguicolors
syntax on
hi def link jsObjectKey Label

" Salva as abas na sessão
set sessionoptions+=tabpages,globals

" Símbolos do GitGutter

let g:gitgutter_sign_added = "\uf055"
let g:gitgutter_sign_modified = "\uf0ec"
let g:gitgutter_sign_removed = "\uf056"
let g:gitgutter_sign_removed_first_line = "\uf056"
let g:gitgutter_sign_modified_removed =  "\uf0ec"

" ColorScheme commands
command! Dark execute "colorscheme base16-eighties"
command! Light execute "colorscheme base16-solarized-light"
command! Mocha execute "colorscheme base16-mocha"
command! Twilight execute "colorscheme base16-twilight"
command! Nord execute "colorscheme base16-Nord"

colorscheme base16-mocha

"VimDiff configuration
"" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

set cmdheight=1
set shortmess+=c
set noruler

set noswapfile

" IndentLine {{
let g:indentLine_char_list = ['¦','¦','¦','¦','¦','¦','¦','¦']
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
" }}

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
