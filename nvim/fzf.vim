let $FZF_DEFAULT_COMMAND = 'ag -g ""'

  " Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --color always --style numbers {} | head -20"'

  function! s:files()
    return split(system($FZF_DEFAULT_COMMAND), '\n')
  endfunction

  function! s:edit_file(item)
  let l:pos = stridx(a:item, ' ')
  let l:file_path = a:item[pos+1:-1]
  execute 'silent e' l:file_path
  endfunction

  call fzf#run({
      \ 'source': <sid>files(),
      \ 'sink':   function('s:edit_file'),
      \ 'options': '-m ' . l:fzf_files_options,
      \ 'down':    '40%' })
  endfunction
