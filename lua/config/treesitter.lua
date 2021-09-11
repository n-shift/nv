local treesitter_parsers = prequire("nvim-treesitter.parsers").get_parser_configs()
if not treesitter_parsers then
    return
end

treesitter_parsers.norg = {
    install_info = {
        url = "https://github.com/vhyrro/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main",
    },
}

local treesitter_config = prequire("nvim-treesitter.configs")
if not treesitter_config then
    return
end

treesitter_config.setup({
    ensure_installed = {
        "lua",
        "toml",
        "norg",
        "comment",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
