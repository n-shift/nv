" commands definition
command! PackerSource :luaf ~/.config/nvim/lua/plugins.lua
command! PackerConfig :e ~/.config/nvim/lua/plugins.lua

" autocommands definition
augroup termin
    au!
    au TermOpen term://* | setlocal nonumber norelativenumber
augroup END
