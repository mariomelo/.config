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
Plug 'tpope/vim-projectionist'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'gcmt/taboo.vim'
Plug 'tmhedberg/matchit'
Plug 'Townk/vim-autoclose'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'posva/vim-vue'
Plug 'honza/vim-snippets'
Plug 'inside/vim-search-pulse'

" Elixir
" Plug 'JakeBecker/elixir-ls'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'tpope/vim-endwise'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

let g:mix_format_on_save = 1
