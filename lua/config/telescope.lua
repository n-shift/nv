local telescope = prequire("telescope")
if not telescope then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = "τ ",
        entry_prefix = "○ ",
        set_env = { ["COLORTERM"] = "truecolor" },
    },
})
