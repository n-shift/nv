" commands definition
command! PackerSource :luaf ~/.config/nvim/lua/plugins.lua
command! PackerConfig :e ~/.config/nvim/lua/plugins.lua

" autocommands definition
augroup termin
    au!
    au TermOpen term://* | resize 15 | setlocal nonumber norelativenumber | set filetype terminal
augroup END
