let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['branchicon', 'gitbranch'],
      \             ['readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \ 'branchicon': "\ue725"
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
