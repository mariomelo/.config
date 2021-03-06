" Instala o vim-plug automaticamente
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
  if executable('curl')
    let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
    if v:shell_error
      echom "Error downloading vim-plug. Please install it manually.\n"
      exit
    endif
  else
    echom "vim-plug not installed. Please install it manually or install curl.\n"
    exit
  endif
endif

call plug#begin()
Plug 'roman/golden-ratio'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'chriskempson/base16-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'gcmt/taboo.vim'
Plug 'tmhedberg/matchit'
Plug 'Townk/vim-autoclose'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'honza/vim-snippets'
Plug 'inside/vim-search-pulse'
Plug 'SirVer/ultisnips'
Plug 'Chiel92/vim-autoformat'

" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'tpope/vim-endwise'
Plug 'mhinz/vim-mix-format'

Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

" HTML
Plug 'mattn/emmet-vim'

" Svelte
Plug 'evanleck/vim-svelte'

" Writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

