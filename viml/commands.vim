" commands definition
command! PackerSource :execute 'luaf ' . g:configdir . '/lua/plugins.lua'
command! PackerConfig :execute 'edit ' . g:configdir . '/lua/plugins.lua'

" autocommands definition
augroup termin
    au!
    au TermOpen term://* | setlocal nonumber norelativenumber
augroup END
