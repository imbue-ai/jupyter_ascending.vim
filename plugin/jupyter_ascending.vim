let g:jupyter_ascending_python_executable = get(g:, 'jupyter_ascending_python_executable', 'python')
let g:jupyter_ascending_match_pattern     = get(g:, 'jupyter_ascending_match_pattern', '.synced.py')
let g:jupyter_ascending_auto_write        = get(g:, 'jupyter_ascending_auto_write', v:true)

augroup JupyterAscending
  au!

  if g:jupyter_ascending_auto_write
    autocmd BufWritePost * :call jupyter_ascending#sync()
  endif
augroup END


nnoremap <Plug>JupyterExecute :call jupyter_ascending#execute()<CR>

if get(g:, 'jupyter_ascending_default_mappings', v:true)
  nmap <space><space>x <Plug>JupyterExecute
endif
