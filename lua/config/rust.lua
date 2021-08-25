local present, rust = pcall(require, "rust-tools")
if not present then
    return
end

rust.setup({
    tools = {
        autoSetHints = true,
        hover_with_icons = true,
        runnables = {
            use_telescope = true,
        },
        debuggables = {
            use_telescope = true,
        },
        inlay_hints = {
            only_current_line = false,
            show_parameter_hints = true,
            parameter_hints_prefix = ":: ",
            other_hints_prefix = ": ",
            max_len_allign = false,
            highlight = "Comment",
        },
        hover_actions = {
            border = {
                {"╭", "FloatBorder"}, {"─", "FloatBorder"},
                {"╮", "FloatBorder"}, {"│", "FloatBorder"},
                {"╯", "FloatBorder"}, {"─", "FloatBorder"},
                {"╰", "FloatBorder"}, {"│", "FloatBorder"},
            },
            auto_focus = true,
        },
    },
    server = {
        settings = {
            ["rust-analyzer"] = {
                procMacro = {
                    enable = true
                },
            },
        },
    },
})
