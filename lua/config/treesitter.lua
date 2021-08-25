local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then
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
        "comment",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
