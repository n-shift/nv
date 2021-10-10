local lualine = prequire("lualine")
if not lualine then
    return
end

lualine.setup({
    options = {
        theme = 'pure',
    },
})
