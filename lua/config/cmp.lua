local present, cmp = pcall(require, "cmp")
if not present then
    return
end

cmp.setup({
    confirmation = { default_behaviour = cmp.ConfirmBehavior.Replace },
    sources = {
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
    },
    mapping = {
        ["<cr>"] = cmp.mapping.confirm(),
        ["<s-tab>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.select_next_item(),
    },
})
