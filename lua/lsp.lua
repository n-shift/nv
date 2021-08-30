local present_lspconfig, lspconfig = pcall(require, "lspconfig")
if not present_lspconfig then
    return
end

local function on_attach(_, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    local opts = { noremap = true, silent = true }

    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<leader>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
    buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
    buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
    buf_set_keymap("n", "<leader>Q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    buf_set_keymap("v", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local present_rust, rust_tools = pcall(require, "rust-tools")
if not present_rust then
    return
end

rust_tools.setup({
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
                { "╭", "FloatBorder" },
                { "─", "FloatBorder" },
                { "╮", "FloatBorder" },
                { "│", "FloatBorder" },
                { "╯", "FloatBorder" },
                { "─", "FloatBorder" },
                { "╰", "FloatBorder" },
                { "│", "FloatBorder" },
            },
            auto_focus = true,
        },
    },
    server = {
        autostart = false,
        capabilities = capabilites,
        on_attach = on_attach,
        settings = {
            ["rust-analyzer"] = {
                procMacro = {
                    enable = true,
                },
            },
        },
    },
})

local present_lua, lua = pcall(require, "lua-dev")
if not present_lua then
    return
end

local luadev = lua.setup({
    lspconfig = {
        cmd = { "lua-language-server", "-E", "C:\\Users\\shift/.code/lua/lua-language-server/main.lua" },
        autostart = true,
        capabilites = capabilites,
        on_attach = on_attach,
    },
})

lspconfig.sumneko_lua.setup(luadev)
