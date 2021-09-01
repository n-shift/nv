-- commands section
vim.cmd("command! PackerSource :luaf ~/.config/nvim/lua/plugins.lua")
vim.cmd("command! PackerConfig :e ~/.config/nvim/lua/plugins.lua")

-- autocommands section
vim.cmd([[
augroup termin
    au!
    au TermOpen term://* | resize 15 | setlocal nonumber norelativenumber | setfiletype terminal
augroup END
]])
