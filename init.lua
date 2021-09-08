-- source lua files
require("utils") -- functions I use frequently
require("plugins") -- plugin specs
require("options") -- vim options
require("mappings") -- nest mappings

-- source vimscript files
vim.cmd("source "..vim.g.configdir.."/viml/commands.vim")
