local catppuccino = prequire("catppuccino")
if not catppuccino then
    return
end

catppuccino.setup({
    colorscheme = "dark_catppuccino",
    transparency = false,
    styles = {
        comments = "italic",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            styles = {
                errors = "bold",
                hints = "bold",
                warnings = "bold",
                information = "bold",
            },
        },
        lsp_trouble = false,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = false,
        telescope = false,
        nvimtree = false,
        which_key = false,
        indent_blankline = false,
        dashboard = false,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = false,
        markdown = false,
    },
})

catppuccino.load()
