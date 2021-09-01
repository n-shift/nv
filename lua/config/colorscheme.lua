local catppuccino = prequire("catppuccino")
if not catppuccino then
    return
end

catppuccino.setup({
    colorscheme = "dark_catppuccino",
    transparency = false,
    styles = {
        comments = "NONE",
        functions = "NONE",
        keywords = "NONE",
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
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
        },
        dashboard = true,
    },
})

catppuccino.load()
