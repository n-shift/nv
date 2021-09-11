local gitsigns = prequire("gitsigns")
if not gitsigns then
    return
end

gitsigns.setup({
    signs = {
        add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
        change = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
        delete = { hl = "GitSignsDelete", text = "-", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
        topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
        changedelete = { hl = "GitSignsChange", text = ">", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    },
    keymaps = {},
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    diff_opts = {
        internal = false,
    }
})
