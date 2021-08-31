local treesitter = prequire("nvim-treesitter.configs")
if not treesitter then
    return
end

treesitter.setup({
    ensure_installed = {
        "c",
        "lua",
        "toml",
        "json",
        "yaml",
        "rust",
        "haskell",
        "comment",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
