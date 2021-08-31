local circles = prequire("circles")
if not circles then
    return
end

circles.setup({
    icons = {
        empty = "",
        filled = "",
        lsp_prefix = "",
    },
    lsp = true,
})
