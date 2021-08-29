-- set neovim config directory location
vim.g.config = "~/.config/nvim/"

-- set leader key to semicolon
vim.g.mapleader = ";"

-- enable current line highlighting
vim.opt.cul = true

-- disable ~ on eob
vim.opt.fillchars = { eob = " " }

-- set maximum amount of completion items to 10
vim.opt.ph = 10

-- disable providers
vim.g.python_host_skip_check = 1
vim.g.loaded_python3_provider = 1
vim.g.loaded_python_provider = 1
vim.g.loaded_node_provider = 1
vim.g.loaded_ruby_provider = 1
vim.g.loaded_perl_provider = 1

-- number stuff
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.nuw = 1

-- tab stuff
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

-- disable intro
vim.opt.shortmess:append("sI")

-- enable terminal colors
vim.o.termguicolors = true

-- disable built-in plugins
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
