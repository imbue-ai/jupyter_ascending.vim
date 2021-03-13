let g:jupyter_ascending_python_executable = get(g:, 'jupyter_ascending_python_executable', 'python')
let g:jupyter_ascending_match_pattern     = get(g:, 'jupyter_ascending_match_pattern', '.sync.py')
let g:jupyter_ascending_auto_write        = get(g:, 'jupyter_ascending_auto_write', v:true)

augroup JupyterAscending
  au!

  if g:jupyter_ascending_auto_write
    autocmd BufWritePost * :call jupyter_ascending#sync()
  endif
augroup END


nnoremap <Plug>JupyterExecute    :call jupyter_ascending#execute()<CR>
nnoremap <Plug>JupyterExecuteAll :call jupyter_ascending#execute_all()<CR>

if get(g:, 'jupyter_ascending_default_mappings', v:true)
  nmap <space><space>x <Plug>JupyterExecute
  nmap <space><space>X <Plug>JupyterExecuteAll
endif
