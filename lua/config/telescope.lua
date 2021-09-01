local telescope = prequire("telescope")
if not telescope then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = "τ ",
        entry_prefix = "○ ",
        initial_mode = "normal",
        set_env = { ["COLORTERM"] = "truecolor" },
    },
})
