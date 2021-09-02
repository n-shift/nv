# nv

<div align="center">

[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)]()

</div>

<div align="center">

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.5+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white)](https://github.com/neovim/neovim)
[![Last Commit](https://img.shields.io/github/last-commit/shift-d/nv.svg?style=flat-square&label=Last%20Commit&color=58eb34)](https://github.com/shift-d/nv/pulse)

</div>

nv is a lua neovim config which tries to be simple, cute and well-documented

## Plugins

List below contains every plugin provided by default with notes about it's configuration

### Colors

#### [Pocco81/Catppuccino.nvim](https://github.com/Pocco81/Catppuccino.nvim)
Pack of treesitter-compatible colorschemes with multiple other plugin integrations available
- loads after reading `init.lua` (`VimEnter` event)
- config is located in `lua/config/colorscheme.lua`

#### [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Built-in language parser's configurator
- loads when starting to edit a new buffer (`BufRead` event)
- config is located in `lua/config/treesitter.lua`

#### [hoob3rt/lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
Lua-powered statusline
- requires
    - [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- config is located in `lua/config/statusline.lua`

### Text

#### [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
Plugin for formatting current buffer
- loads on `:Format` command
- config is located in `lua/config/formatter.lua`

#### [ellisonleao/glow.nvim](https://github.com/ellisonleao/glow.nvim)
Markdown preview, uses [glow](https://github.com/charmbracelet/glow) under hood
- loads if current buffer has `markdown` filetype

### Tpope section

#### [tpope/vim-surround](https://github.com/tpope/vim-surround)
Amazing vimscript plugin that allows you edit surrounding symbols
- loads after reading `init.lua` (`VimEnter` event)

### Utils

#### [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
Bunch of great lua functions;

#### [LionC/nest.nvim](https://github.com/LionC/nest.nvim)
Small lua wrapper around keymap api. Allows creating nested keymaps

#### [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
Superpowered lua fuzzy finder
- loads on `:Telecope` command
- config is located in `lua/config/telescope.nvim`

#### [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
Lua dashboard that you see after open neovim.

#### [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
A file explorer tree written in lua
- loads on `:NvimTreeToggle` command
- requires
    - [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- config is located in `lua/config/nvimtree.lua`

#### [projekt0n/circles.nvim](https://github.com/projekt0n/circles.nvim)
Replaces `nvim-web-devicons` and lsp's icons with minimalistic colored circles
- config is located in `lua/config/circles.lua`

### Git

#### [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
Super fast git decorations implemented purely in lua/teal
- loads if cwd contains `.git` directory
- requires
    - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- config is located in `lua/config/gitsigns.lua`

### Completion

#### [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
Completion engine based on "sources" concept
- loads when starting to edit a new buffer (`BufRead` event)
- requires
    - [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
        - loads after `nvim-cmp` plugin
    - [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
        - loads after `nvim-cmp` plugin
    - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
        - loads after `nvim-cmp` plugin
    - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
        - loads after `LuaSnip` plugin
- config is located in `lua/config/cmp.lua`

#### [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
Neovim snippet engine built in lua
- loads after `nvim-cmp` plugin

### LSP

#### [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
Native neovim lsp configurator
- loads after `cmp-nvim-lsp` plugin
- config is located in `lua/lsp.lua`

#### [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
Rust lsp configurator that makes use of nvim-lspconfig. Here is only for an example of lsp usage.
- requires
    - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
    - [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
    - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope)

#### [folke/lua-dev.nvim](https://github.com/folke/lua-dev.nvim)
Dev setup for init.lua and plugin development with full signature help, docs and completion for nvim lua API.
- loads if current buffer has `lua` type
