let g:auto_save = 0
augroup AutoSaveMarkdown
  au!
  au FileType markdown let b:auto_save = 1
augroup END
let g:auto_save_events = ['TextChanged', 'TextChangedI', 'CursorHold', 'CursorHoldI']
let g:auto_save_presave_hook = 'call AbortIfDelayTimeNotPassed()'
let g:auto_save_delay = &updatetime

function! AbortIfDelayTimeNotPassed()
  if exists('b:auto_save_last_save_time')
    let diff_auto_save_last_save_time = float2nr(b:auto_save_last_save_time->reltime()->reltimefloat() * 1000)
    if diff_auto_save_last_save_time < g:auto_save_delay
      let g:auto_save_abort = 1
      return
    endif
  else
    let g:auto_save_abort = 1
  endif

  let b:auto_save_last_save_time = reltime()
endfunction
