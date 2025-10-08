" ---- Commands

" Run `make format` and reload buffer if changed
command! MakeFormat call s:RunMakeTarget('format', 1)

" Run `make lint` (no reload needed)
command! MakeLint call s:RunMakeTarget('lint', 0)

" Run `make test` (no reload needed)
command! MakeTest call s:RunMakeTarget('test', 0)

" Run `make type-check` (no reload needed)
command! MakeTypeCheck call s:RunMakeTarget('type-check', 0)

" Run `make clean` (no reload needed)
command! MakeClean call s:RunMakeTarget('clean', 0)

" Run `make structure` (no reload needed)
command! MakeStructure call s:RunMakeTarget('structure', 0)

" Core function to run a make target and optionally reload current buffer
function! s:RunMakeTarget(target, reload) abort
  let l:current_file = expand('%:p')
  let l:before = filereadable(l:current_file) ? getftime(l:current_file) : 0

  " Run make target in project root (blocking, shows output)
  execute 'make ' . a:target

  " Small delay to ensure filesystem updates are visible
  sleep 250m

  if a:reload && filereadable(l:current_file)
    let l:after = getftime(l:current_file)
    if l:after > l:before && !&modified
      checktime
      echo "[Make] Reloaded buffer after " . a:target
    else
      echo "[Make] " . a:target . " complete (no reload needed)"
    endif
  else
    echo "[Make] " . a:target . " complete"
  endif

  " Force a redraw so screen updates immediately
  redraw!
endfunction
