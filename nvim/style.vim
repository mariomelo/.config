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

" Theme options
set termguicolors
colorscheme OceanicNext
let g:one_allow_italics = 1
hi def link jsObjectKey Label

" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_monokai'

" Salva as abas na sessão
set sessionoptions+=tabpages,globals

" Símbolos do GitGutter
let g:gitgutter_sign_added = '🆕'
let g:gitgutter_sign_modified = '⏩'
let g:gitgutter_sign_removed = '⛔'
let g:gitgutter_sign_removed_first_line = '⛔'
let g:gitgutter_sign_modified_removed = '⏩'

" ColorScheme commands
command! Dark execute "colorscheme base16-materia"
command! Light execute "colorscheme base16-google-light"
command! Mocha execute "colorscheme base16-mocha"
command! Ocean execute "colorscheme OceanicNext"

"VimDiff configuration
"" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

set cmdheight=1
set shortmess+=c
set noruler

" === Vim airline ==== "
" Enable extensions
try
let g:airline_extensions = ['branch', 'hunks', 'coc']

" Update section z to just have line number
let g:airline_section_z = airline#section#create(['linenr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

" Disable vim-airline in preview mode
let g:airline_exclude_preview = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

" Define custom airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '❮'
let g:airline_right_sep = '❯'

" Don't show git changes to current file in airline
let g:airline#extensions#hunks#enabled=0

catch
  echo 'Airline not installed. It should work after running :PlugInstall'
endtry

set noswapfile
