
function! jupyter_ascending#sync() abort
  let file_name = expand("%:p")

  if match(file_name, g:jupyter_ascending_match_pattern) < 0
    return
  endif

  let g:last_jupyter_ascending_val = system(printf(
        \ "%s -m jupyter_ascending.requests.sync --filename '%'",
        \ g:jupyter_ascending_python_executable,
        \ file_name
        \ ))
endfunction

function! jupyter_ascending#execute() abort
  let file_name = expand("%:p")

  if match(file_name, g:jupyter_ascending_match_pattern) < 0
    return
  endif

  let g:last_nb_exec_val = system(printf(
        \ "%s -m jupyter_ascending.requests.execute --filename '%s' --linenumber %s",
        \ g:jupyter_ascending_python_executable,
        \ file_name,
        \ line('.')
        \ ))
endfunction
