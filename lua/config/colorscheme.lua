local present, catppuccino = pcall(require, "catppuccino")
if not present then
    return
end

catppuccino.setup({
    colorscheme = "catppuccino",
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
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
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
